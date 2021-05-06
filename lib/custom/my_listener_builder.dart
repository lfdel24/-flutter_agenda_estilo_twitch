import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class MyListenerBuilder extends AnimatedWidget {
  const MyListenerBuilder({
    Key? key,
    required Listenable listener,
    required this.builder,
    this.child,
  }) : super(key: key, listenable: listener);

  final TransitionBuilder builder;
  final Widget? child;

  @override
  Widget build(BuildContext context) {
    return builder(context, child);
  }
}
