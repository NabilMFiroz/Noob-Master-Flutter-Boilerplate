import 'package:flutter/material.dart';
import 'package:nmf_custom_template/components/app_custom_button.dart';
import 'package:nmf_custom_template/components/app_elevated_button.dart';
import 'package:nmf_custom_template/components/app_text_field.dart';
import 'package:nmf_custom_template/services/app_theme_provider_service.dart';
import 'package:nmf_custom_template/utils/app_strings.dart';
import 'package:nmf_custom_template/utils/app_text_styles.dart';
import 'package:provider/provider.dart';

class NMFCustomHomePage extends StatefulWidget {
  const NMFCustomHomePage({super.key, required this.title});

  final String title;

  @override
  State<NMFCustomHomePage> createState() => _NMFCustomHomePageState();
}

class _NMFCustomHomePageState extends State<NMFCustomHomePage> {
  int _counter = 0;

  final TextEditingController qtyController = TextEditingController();
  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    final themeProvider = Provider.of<ThemeProvider>(context);
    return GestureDetector(
      onTap: () => FocusScope.of(context).requestFocus(FocusNode()),
      child: Scaffold(
        /// App Bar
        appBar: AppBar(
          title: Text(
            widget.title,
            style: AppTextStyles.defaultTitleTextStyle,
          ),
          actions: [
            /// Change App Theme
            IconButton(
              icon: Icon(
                themeProvider.themeMode == ThemeMode.dark
                    ? Icons.light_mode_rounded
                    : Icons.dark_mode_rounded,
              ),
              onPressed: () {
                bool val = themeProvider.isDarkMode;
                val = !val;
                final provider =
                    Provider.of<ThemeProvider>(context, listen: false);
                provider.toggleTheme(val);
              },
            )
          ],
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              /// Title Text style
              Text(
                AppStrings.counterTitle,
                style: AppTextStyles.defaultTitleTextStyle,
              ),

              /// App Text Field
              AppTextField(
                fieldController: qtyController,
                keyboardType: TextInputType.number,
                hintText: AppStrings.appName,
                onSubmitFunction: (txt) {
                  if (txt != "") {
                    setState(() {
                      _counter = int.parse(txt);
                    });
                  }
                },
              ),

              /// App Custom Button
              // Padding(
              //   padding: EdgeInsets.symmetric(
              //       horizontal: AppHelpers.deviceWidth * 0.2, vertical: 10),
              //   child: AppCustomButton(
              //     onTapFunc: _incrementCounter,
              //     btName: AppStrings.incrementButton,
              //     buttonColor: Theme.of(context).colorScheme.primaryContainer,
              //   ),
              // ),

              const SizedBox(height: 10),

              /// App Elevated Button
              AppEleButton(
                btnName: AppStrings.incrementButton,
                btnColor: Theme.of(context).colorScheme.primaryContainer,
                btnCall: _incrementCounter,
              ),
              const SizedBox(height: 12),

              /// Default Text style
              Text(
                AppStrings.counterDescription,
                style: AppTextStyles.defaultTextStyle,
              ),

              /// Basic Text style
              Text(
                '$_counter',
                style: AppTextStyles.basicTextStyle(fontSize: 20),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
