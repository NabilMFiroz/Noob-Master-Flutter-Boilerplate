import 'package:flutter/material.dart';
import 'package:nmf_custom_template/utils/app_colors.dart';
import 'package:nmf_custom_template/utils/app_text_styles.dart';

class AppTextField extends StatefulWidget {
  final TextEditingController fieldController;
  final double? fieldBorderRadius;
  final Color? fieldBorderColor;
  final Color? fieldCursorColor;
  final Color? fieldBackgroundFillColor;
  final TextInputType? keyboardType;
  final TextStyle? fieldTextStyle;
  final String? hintText;
  final TextStyle? fieldHintStyle;
  final String? labelText;
  final TextStyle? fieldLabelStyle;
  final Widget? prefixChild;
  final Function(String)? onSubmitFunction;
  const AppTextField({
    super.key,
    required this.fieldController,
    this.fieldBorderRadius,
    this.fieldBorderColor,
    this.fieldCursorColor,
    this.fieldBackgroundFillColor,
    this.keyboardType,
    this.fieldTextStyle,
    this.hintText,
    this.fieldHintStyle,
    this.labelText,
    this.fieldLabelStyle,
    this.prefixChild,
    this.onSubmitFunction,
  });

  @override
  State<AppTextField> createState() => _AppTextFieldState();
}

class _AppTextFieldState extends State<AppTextField> {
  OutlineInputBorder border = OutlineInputBorder(
    borderRadius: BorderRadius.circular(10.0),
    borderSide: const BorderSide(color: AppColors.transparent),
  );

  @override
  void initState() {
    border = OutlineInputBorder(
      borderRadius: BorderRadius.circular(widget.fieldBorderRadius ?? 10.0),
      borderSide: BorderSide(
          color: widget.fieldBorderColor ?? AppColors.transparent, width: 0.5),
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 5.0, horizontal: 16),
      child: TextFormField(
        controller: widget.fieldController,
        cursorColor:
            widget.fieldCursorColor ?? Theme.of(context).colorScheme.primary,
        onFieldSubmitted: widget.onSubmitFunction,
        keyboardType: widget.keyboardType ?? TextInputType.text,
        style: widget.fieldTextStyle ?? AppTextStyles.textFieldTextStyle,
        decoration: InputDecoration(
          filled: true,
          fillColor: widget.fieldBackgroundFillColor ??
              Theme.of(context).colorScheme.primaryContainer.withAlpha(90),
          contentPadding: const EdgeInsets.symmetric(horizontal: 12),
          labelText: widget.labelText,
          labelStyle: widget.fieldLabelStyle,
          hintText: widget.hintText,
          hintStyle: widget.fieldHintStyle ?? AppTextStyles.textFieldHintStyle,
          focusedBorder: border,
          enabledBorder: border,
          prefixIcon: widget.prefixChild,
        ),
      ),
    );
  }
}
