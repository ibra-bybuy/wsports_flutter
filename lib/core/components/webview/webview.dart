import 'package:desktop_webview_window/desktop_webview_window.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_inappwebview/flutter_inappwebview.dart';
import 'package:watch_sports/core/cubits/custom/bool_cubit/bool_cubit.dart';
import 'package:watch_sports/core/functions/platform_functions.dart';

import '../../functions/ad_blocker.dart';
import '../loader/alert_loader/alert_loader.dart';

class MyWebView extends StatefulWidget {
  final String url;
  final PullToRefreshController? pullToRefreshController;
  final Color? loadingColor;
  final UserScript? userScript;
  const MyWebView(
    this.url, {
    super.key,
    this.pullToRefreshController,
    this.loadingColor,
    this.userScript,
  });

  @override
  State<MyWebView> createState() => _MyWebViewState();
}

class _MyWebViewState extends State<MyWebView> {
  final loadingCubit = BoolCubit(true);
  final alertLoader = AlerLoader();
  InAppWebViewController? inAppWebViewController;
  Uri? currentUrl;

  bool _useAdBlocker = false;

  @override
  void didUpdateWidget(covariant MyWebView oldWidget) {
    super.didUpdateWidget(oldWidget);

    if (widget.url != oldWidget.url) {
      inAppWebViewController?.loadUrl(
        urlRequest: URLRequest(
          url: Uri.tryParse(widget.url),
        ),
      );
    }
  }

  @override
  void initState() {
    super.initState();

    currentUrl = Uri.tryParse(widget.url);

    if (isDesktop) {
      openWebviewForDekstop();
    }
  }

  Future<void> openWebviewForDekstop() async {
    final webview = await WebviewWindow.create();
    webview.launch(widget.url);
  }

  @override
  void dispose() {
    alertLoader.dismiss();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocListener<BoolCubit, bool>(
      bloc: loadingCubit,
      listener: (context, state) {
        if (state) {
          alertLoader.show(darkenBackground: true);
        } else {
          alertLoader.dismiss();
        }
      },
      child: Stack(
        children: [
          InAppWebView(
            pullToRefreshController: widget.pullToRefreshController,
            gestureRecognizers: <Factory<VerticalDragGestureRecognizer>>{}..add(
                Factory<VerticalDragGestureRecognizer>(
                    () => VerticalDragGestureRecognizer()),
              ),
            onWebViewCreated: (controller) {
              if (widget.userScript != null) {
                controller.addUserScript(userScript: widget.userScript!);
              }
              inAppWebViewController = controller;
            },
            initialOptions: InAppWebViewGroupOptions(
              android: AndroidInAppWebViewOptions(
                useHybridComposition: true,
                useShouldInterceptRequest: true,
              ),
              crossPlatform: InAppWebViewOptions(
                clearCache: true,
                useShouldOverrideUrlLoading: true,
                userAgent:
                    "Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/109.0.0.0 Safari/537.36",
              ),
            ),
            shouldOverrideUrlLoading: (controller, navAction) async {
              final uri = navAction.request.url;

              if (uri != null &&
                  currentUrl != null &&
                  _useAdBlocker &&
                  AdBlocker(uri, currentUrl!).block) {
                return NavigationActionPolicy.CANCEL;
              }

              return NavigationActionPolicy.ALLOW;
            },
            initialUrlRequest: URLRequest(
              url: Uri.tryParse(
                widget.url,
              ),
            ),
            onLoadStart: (controller, url) {
              loadingCubit.set(true);
            },
            onLoadStop: (context, url) async {
              await Future.delayed(const Duration(milliseconds: 500));
              if (mounted) {
                loadingCubit.set(false);
                _useAdBlocker = true;
              }
            },
          ),
          BlocBuilder<BoolCubit, bool>(
            bloc: loadingCubit,
            builder: (context, state) {
              if (state) {
                return Container(
                  color: widget.loadingColor,
                  child: const SizedBox(
                    width: double.infinity,
                    height: double.infinity,
                  ),
                );
              }

              return const SizedBox();
            },
          ),
        ],
      ),
    );
  }
}
