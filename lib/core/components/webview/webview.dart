import 'package:flutter/foundation.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_inappwebview/flutter_inappwebview.dart';

class MyWebView extends StatefulWidget {
  final String url;
  final PullToRefreshController? pullToRefreshController;
  const MyWebView(
    this.url, {
    super.key,
    this.pullToRefreshController,
  });

  @override
  State<MyWebView> createState() => _MyWebViewState();
}

class _MyWebViewState extends State<MyWebView> {
  InAppWebViewController? inAppWebViewController;

  @override
  void didUpdateWidget(covariant MyWebView oldWidget) {
    super.didUpdateWidget(oldWidget);

    if (widget.url != oldWidget.url) {
      inAppWebViewController?.loadUrl(
          urlRequest: URLRequest(url: Uri.tryParse(widget.url)));
    }
  }

  @override
  Widget build(BuildContext context) {
    return InAppWebView(
      pullToRefreshController: widget.pullToRefreshController,
      gestureRecognizers: <Factory<VerticalDragGestureRecognizer>>{}..add(
          Factory<VerticalDragGestureRecognizer>(
              () => VerticalDragGestureRecognizer()),
        ),
      onWebViewCreated: (controller) {
        inAppWebViewController = controller;
      },
      initialOptions: InAppWebViewGroupOptions(
        android: AndroidInAppWebViewOptions(
          useHybridComposition: true,
        ),
      ),
      initialUrlRequest: URLRequest(
        url: Uri.tryParse(
          widget.url,
        ),
      ),
    );
  }
}
