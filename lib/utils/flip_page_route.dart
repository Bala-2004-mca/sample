import 'package:flutter/material.dart';
import 'dart:math' as math;

class FlipPageRoute<T> extends PageRouteBuilder<T> {
  final Widget child;

  FlipPageRoute({required this.child}) : super(
    pageBuilder: (context, animation, secondaryAnimation) => child,
    transitionDuration: const Duration(milliseconds: 500),
    transitionsBuilder: (context, animation, secondaryAnimation, child) {
      final rotateAnim = Tween(begin: math.pi, end: 0.0).animate(animation);

      return AnimatedBuilder(
        animation: rotateAnim,
        child: child,
        builder: (context, child) {
          return Transform(
            transform: Matrix4.identity()
              ..setEntry(3, 2, 0.001)
              ..rotateY(rotateAnim.value),
            alignment: Alignment.center,
            child: child,
          );
        },
      );
    },
  );
}
