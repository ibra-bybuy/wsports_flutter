import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:watch_sports/core/components/loader/alert_loader/alert_loader.dart';
import '../../../../setup.dart';

class AlertLoadListener<T> extends StatefulWidget {
  final Widget child;
  final Cubit<T> cubit;
  final bool Function(T) isLoading;
  final bool darkenBackground;
  const AlertLoadListener({
    super.key,
    required this.child,
    required this.cubit,
    required this.isLoading,
    this.darkenBackground = true,
  });

  @override
  State<AlertLoadListener<T>> createState() => _AlertLoadListenerState<T>();
}

class _AlertLoadListenerState<T> extends State<AlertLoadListener<T>> {
  final alertLoader = getIt<AlerLoader>();

  @override
  Widget build(BuildContext context) {
    return BlocListener<Cubit<T>, T>(
      bloc: widget.cubit,
      listener: (context, state) {
        if (widget.isLoading(state)) {
          alertLoader.show(darkenBackground: widget.darkenBackground);
        } else {
          alertLoader.dismiss();
        }
      },
      child: widget.child,
    );
  }
}
