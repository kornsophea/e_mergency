import 'package:flutter/material.dart';
import 'package:flutter_mvvm_boilerplate/core/constants/config_constant.dart';

class FvbFadeIn extends StatelessWidget {
  const FvbFadeIn({
    Key? key,
    required this.child,
    this.duration = ConfigConstant.fadeDuration,
  }) : super(key: key);

  final Widget child;
  final Duration duration;

  @override
  Widget build(BuildContext context) {
    return TweenAnimationBuilder<int>(
      duration: duration,
      tween: IntTween(begin: 0, end: 1),
      child: child,
      builder: (context, value, child) {
        return AnimatedOpacity(
          opacity: value == 1 ? 1.0 : 0.0,
          duration: ConfigConstant.fadeDuration,
          child: child,
        );
      },
    );
  }
}
