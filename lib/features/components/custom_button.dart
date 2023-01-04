import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final VoidCallback? onTap;
  final Widget? child;
  final EdgeInsetsGeometry padding;
  final String? text;
  final Color? buttonColor;
  final Color? textColor;
  final Color? borderColor;
  final double? elevation;
  final double radius;
  final double? textSize;
  final double? height;
  final double? width;
  final FocusNode? focusNode;

  const CustomButton({
    Key? key,
    this.onTap,
    this.child,
    this.padding = const EdgeInsets.all(16),
    this.buttonColor,
    this.textColor,
    this.borderColor,
    this.elevation,
    this.radius = 12,
    this.textSize,
    this.height,
    this.width,
    this.focusNode,
    this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      onPressed: onTap,
      elevation: elevation ?? 0,
      color: buttonColor ?? Theme.of(context).primaryColor,
      padding: padding,
      height: height,
      minWidth: width,
      focusNode: focusNode,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(radius),
      ),
      child: text != null ? Text(text!) : null,
    );
  }
}
