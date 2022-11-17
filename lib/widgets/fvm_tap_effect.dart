import 'package:flutter/material.dart';

enum FvmTapEffectType {
  touchableOpacity,
  scaleDown,
}

class FvmTapEffectBorderOption {
  final BoxShape shape;
  final double scale;
  final double width;
  final Color color;

  FvmTapEffectBorderOption({
    required this.shape,
    required this.scale,
    required this.width,
    required this.color,
  });
}

class FvmTapEffect extends StatefulWidget {
  const FvmTapEffect({
    Key? key,
    required this.child,
    required this.onTap,
    this.duration = const Duration(milliseconds: 100),
    this.vibrate = false,
    this.behavior = HitTestBehavior.opaque,
    this.effects = const [
      FvmTapEffectType.touchableOpacity,
    ],
    this.onLongPressed,
    this.borderOption,
  }) : super(key: key);

  final Widget child;
  final FvmTapEffectBorderOption? borderOption;
  final List<FvmTapEffectType> effects;
  final void Function()? onTap;
  final void Function()? onLongPressed;
  final Duration duration;
  final bool vibrate;
  final HitTestBehavior? behavior;

  @override
  State<FvmTapEffect> createState() => _FvmTapEffectState();
}

class _FvmTapEffectState extends State<FvmTapEffect> with SingleTickerProviderStateMixin {
  final double scaleActive = 0.98;
  final double opacityActive = 0.2;
  late AnimationController controller;
  late Animation<double> scaleAnimation;
  late Animation<double> opacityAnimation;
  late Animation<double> borderAnimation;

  @override
  void initState() {
    controller = AnimationController(vsync: this, duration: widget.duration);
    scaleAnimation = Tween<double>(begin: 1, end: scaleActive).animate(controller);
    opacityAnimation = Tween<double>(begin: 1, end: opacityActive).animate(controller);
    borderAnimation = Tween<double>(begin: 0, end: 1).animate(controller);
    super.initState();
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  void onTap() {
    if (widget.onTap != null) widget.onTap!();
    Feedback.forTap(context);
  }

  void onTapCancel() => controller.reverse();
  void onTapDown() => controller.forward();
  void onTapUp() {
    onTap();
    controller.reverse();
  }

  void onDoubleTap() async {
    controller.forward().then((value) => controller.reverse());
  }

  @override
  Widget build(BuildContext context) {
    if (widget.onTap != null) {
      return GestureDetector(
        behavior: widget.behavior,
        onLongPress: widget.onLongPressed,
        onTapDown: (detail) => onTapDown(),
        onTapUp: (detail) => onTapUp(),
        onTapCancel: () => onTapCancel(),
        child: buildChild(controller),
      );
    } else {
      return buildChild(controller);
    }
  }

  AnimatedBuilder buildChild(AnimationController controller) {
    return AnimatedBuilder(
      animation: controller,
      builder: (context, child) {
        Widget result = child ?? const SizedBox();
        for (var effect in widget.effects) {
          switch (effect) {
            case FvmTapEffectType.scaleDown:
              result = ScaleTransition(scale: scaleAnimation, child: result);
              break;
            case FvmTapEffectType.touchableOpacity:
              result = Opacity(opacity: opacityAnimation.value, child: result);
              break;
          }
        }
        return result;
      },
      child: widget.child,
    );
  }
}
