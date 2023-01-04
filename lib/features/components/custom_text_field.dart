import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({
    Key? key,
    required this.controller,
    this.autofocus = false,
    this.readOnly = false,
    this.keyboardType,
    this.onSubitted,
    this.hintText = 'Enter Value',
    this.obscureText = false,
    this.labelText,
    this.prefixIcon,
    this.suffixIcon,
    this.validator,
    this.onChange,
    this.showBorder = true,
    this.filled = true,
    this.maxLines = 1,
    this.width,
    this.focusNode,
  }) : super(key: key);

  final TextEditingController controller;
  final bool autofocus, readOnly, obscureText, showBorder, filled;
  final TextInputType? keyboardType;
  final void Function(String value)? onSubitted;
  final String? hintText, labelText;
  final Widget? prefixIcon, suffixIcon;
  final String? Function(String? value)? validator;
  final void Function(String? value)? onChange;
  final int maxLines;
  final double? width;
  final FocusNode? focusNode;

  factory CustomTextField.multiLine({
    required TextEditingController controller,
    String? Function(String? value)? validator,
    String hintText = 'Enter Value',
  }) {
    return CustomTextField(
      controller: controller,
      keyboardType: TextInputType.multiline,
      hintText: hintText,
      filled: false,
      maxLines: 3,
      validator: validator,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Builder(builder: (context) {
      return SizedBox(
        width: width,
        child: TextFormField(
          controller: controller,
          focusNode: focusNode,
          obscureText: obscureText,
          autofocus: autofocus,
          readOnly: readOnly,
          keyboardType: TextInputType.text,
          onFieldSubmitted: onSubitted,
          validator: validator,
          maxLines: maxLines,
          decoration: InputDecoration(
            border: circularBorder(Theme.of(context).primaryColor),
            hintText: hintText,
            labelText: labelText,
            fillColor: Theme.of(context).canvasColor,
            prefixIcon: prefixIcon != null
                ? prefixIcon!
                : null,
            suffixIcon: suffixIcon != null
                ? suffixIcon!
                : null,
            contentPadding: const EdgeInsets.all(8),
            filled: filled,
          ),
        ),
      );
    });
  }

  InputBorder circularBorder(Color color) {
    return OutlineInputBorder(
      borderSide:
          showBorder ? BorderSide(color: color, width: 0.5) : BorderSide.none,
      borderRadius: const BorderRadius.all(
        Radius.circular(8),
      ),
    );
  }

  InputBorder underlineBorder(Color color) {
    return UnderlineInputBorder(
      borderSide: BorderSide(color: color),
    );
  }
}
