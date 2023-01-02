import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    Key? key,
    this.onPressed,
    this.widget,
    this.overflow,
    this.text,
    this.constraints,
    this.width,
    this.color,
  }) : super(key: key);

  final void Function()? onPressed;
  final TextOverflow? overflow;
  final Widget? widget;
  final String? text;
  final Color? color;
  final double? width;
  final BoxConstraints? constraints;

  factory CustomButton.secondary({
    required void Function() onPressed,
    BoxConstraints? constraints,
    String? text,
    double? width,
    Widget? widget,
    TextOverflow? overflow,
  }) {
    return CustomButton(
      onPressed: onPressed,
      constraints: constraints,
      text: text,
      overflow: overflow,
      width: width,
      widget: widget,
    );
  }

  @override
  Widget build(BuildContext context) {
    ThemeData theme = Theme.of(context);
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(14),
        ),
      ),
      child: Container(
        alignment: Alignment.center,
        width: width,
        color: color,
        constraints: constraints,
        child: widget ??
            (text != null
                ? Text(
                    text!,
                    style: theme.textTheme.button?.copyWith(
                      overflow: overflow,
                      fontWeight: FontWeight.w900,
                      fontSize: 18,
                    ),
                  )
                : const SizedBox()),
      ),
    );
  }
}
