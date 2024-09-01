import 'package:flutter/material.dart';
import 'package:nmf_custom_template/utils/app_text_styles.dart';

class AppEleButton extends StatefulWidget {
  final String btnName;
  final Color? btnColor;
  final Function()? btnCall;
  const AppEleButton({
    super.key,
    required this.btnName,
    this.btnColor,
    this.btnCall,
  });

  @override
  State<AppEleButton> createState() => _AppEleButtonState();
}

class _AppEleButtonState extends State<AppEleButton> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        elevation: 3,
        backgroundColor: widget.btnColor,
      ),
      onPressed: widget.btnCall,
      child: Text(
        widget.btnName,
        style: AppTextStyles.basicTextStyle(
          fontSize: 18,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}
