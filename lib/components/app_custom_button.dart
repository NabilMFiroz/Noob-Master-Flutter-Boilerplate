import 'package:flutter/material.dart';
import 'package:nmf_custom_template/utils/app_colors.dart';
import 'package:nmf_custom_template/utils/app_helper.dart';
import 'package:nmf_custom_template/utils/app_text_styles.dart';

class AppCustomButton extends StatelessWidget {
  final VoidCallback? onTapFunc;
  final String btName;
  final bool isLoading;
  final bool isDisabled;
  final String? primaryColor;
  final Color? buttonColor;

  const AppCustomButton({
    super.key,
    required this.onTapFunc,
    required this.btName,
    this.isLoading = false,
    this.isDisabled = false,
    this.primaryColor,
    this.buttonColor,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        if (isDisabled) {
        } else {
          if (!isLoading) {
            onTapFunc!();
          }
        }
      },
      child: Container(
        alignment: Alignment.center,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          boxShadow: [
            BoxShadow(
              offset: const Offset(4, 4),
              color: AppColors.shadowColor,
              spreadRadius: 0,
              blurRadius: 4,
            )
          ],
          gradient: buttonColor == null
              ? LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: primaryColor == "ORG"
                      ? <Color>[Colors.orange, Colors.red.shade400]
                      : primaryColor == "TL"
                          ? <Color>[
                              Colors.teal.shade700,
                              Colors.teal.shade300,
                            ]
                          : primaryColor == "GR"
                              ? <Color>[
                                  Colors.green.shade700,
                                  Colors.green.shade300
                                ]
                              : <Color>[
                                  Colors.blue,
                                  Colors.blue.shade300,
                                ],
                )
              : null,
          color: buttonColor,
        ),
        height: AppHelpers.deviceHeight * 0.055,
        child: isLoading
            ? Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const SizedBox(
                    width: 25,
                    height: 25,
                    child: Center(
                      child: CircularProgressIndicator(
                        color: AppColors.white,
                      ),
                    ),
                  ),
                  const SizedBox(width: 15),
                  Text(
                    btName,
                    style: AppTextStyles.basicTextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  )
                ],
              )
            : Padding(
                padding: const EdgeInsets.only(left: 3, right: 3),
                child: Text(
                  btName,
                  style: AppTextStyles.basicTextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
      ),
    );
  }
}
