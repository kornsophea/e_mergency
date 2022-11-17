import 'package:flutter/material.dart';
import 'package:flutter_mvvm_boilerplate/core/constants/config_constant.dart';

class FvbAnimatedIcons extends StatelessWidget {
  const FvbAnimatedIcons({
    Key? key,
    required this.firstChild,
    required this.secondChild,
    required this.showFirst,
    this.duration = ConfigConstant.duration,
    this.listener,
  }) : super(key: key);

  final Widget firstChild;
  final Widget secondChild;
  final bool showFirst;
  final Duration duration;
  final void Function(Animation<double> animation)? listener;

  @override
  Widget build(BuildContext context) {
    Widget firstChild = this.firstChild;
    Widget secondChild = this.secondChild;

    if (firstChild.key == null) {
      firstChild = SizedBox(
        key: const ValueKey('1'),
        child: firstChild,
      );
    }
    if (secondChild.key == null) {
      secondChild = SizedBox(
        key: const ValueKey('2'),
        child: secondChild,
      );
    }

    return AnimatedSwitcher(
      duration: duration,
      switchInCurve: Curves.fastOutSlowIn,
      switchOutCurve: Curves.easeInToLinear,
      child: showFirst ? firstChild : secondChild,
      transitionBuilder: (child, animation) {
        if (listener != null) listener!(animation);
        return RotationTransition(
          turns: child.key == firstChild.key
              ? Tween<double>(begin: 0.25, end: 0).animate(animation)
              : Tween<double>(begin: 0.75, end: 1).animate(animation),
          child: ScaleTransition(
            scale: animation,
            child: child,
          ),
        );
      },
    );
  }
}
