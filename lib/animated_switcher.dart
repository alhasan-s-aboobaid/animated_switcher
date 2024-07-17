library animated_switcher;

import 'package:flutter/material.dart';

/// A custom switcher widget with animations.
///
/// This widget provides a customizable switcher with animated transitions and optional rotation.
/// It is similar to the iOS-style Cupertino switcher but with additional customization options.

class CustomCupertinoSwitcher extends StatefulWidget {

  /// The initial value of the switcher.
  final bool initialValue;

  /// If true, the check mark will rotate.
  final bool shouldRotate;

  /// The width of the switcher. If not specified, a default value is used.
  final double? width;

  /// The height of the switcher. If not specified, a default value is used.
  final double? height;

  /// The color of the switcher when it is active.
  final Color? activeColor;

  /// The color of the switcher when it is disabled.
  final Color? disabledColor;

  /// The duration of the animations.
  final Duration? duration;

  /// Creates a [CustomCupertinoSwitcher] widget.
  ///
  /// The [initialValue] parameter is required. The [shouldRotate] parameter defaults to false.


  const CustomCupertinoSwitcher({
    super.key,
    required this.initialValue,
    this.width,
    this.height,
    this.activeColor,
    this.disabledColor,
    this.duration,
    this.shouldRotate = false,
  });

  @override
  State<CustomCupertinoSwitcher> createState() => _CustomCupertinoSwitcherState();
}

class _CustomCupertinoSwitcherState extends State<CustomCupertinoSwitcher> {
  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: widget.duration ?? const Duration(milliseconds: 500),
      width: widget.width ?? 35,
      height: widget.height ?? 24,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular((widget.height ?? 24) / 2),
        color: widget.initialValue
            ? (widget.activeColor ?? Theme.of(context).primaryColor)
            : (widget.disabledColor ?? Theme.of(context).disabledColor),
      ),
      child: AnimatedAlign(
        duration: widget.duration ?? const Duration(milliseconds: 500),
        alignment: widget.initialValue ? Alignment.centerRight : Alignment.centerLeft,
        child: Container(
          width: (widget.height ?? 24) - 3,
          height: (widget.height ?? 24) - 3,
          margin: const EdgeInsets.all(3),
          decoration: const BoxDecoration(
            color: Colors.white,
            shape: BoxShape.circle,
          ),
          child: Center(
            child: AnimatedRotation(
              duration: widget.duration ?? const Duration(milliseconds: 500),
              turns: widget.shouldRotate ? (widget.initialValue ? 1 : 0.5) : 0,
              child: Icon(
                Icons.check,
                color: widget.initialValue ? (widget.activeColor ?? Theme.of(context).primaryColor) : Colors.white,
                size: 12,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
