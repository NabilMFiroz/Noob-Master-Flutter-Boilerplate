import 'package:flutter/material.dart';
import 'package:nmf_custom_template/modules/presentations/dashboard.dart';
import 'package:nmf_custom_template/services/app_theme_provider_service.dart';
import 'package:nmf_custom_template/utils/app_helper.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const NMFCustomApp());
}

class NMFCustomApp extends StatelessWidget {
  const NMFCustomApp({super.key});

  @override
  Widget build(BuildContext context) {
    AppHelpers.deviceHeight = MediaQuery.of(context).size.height;
    AppHelpers.deviceWidth = MediaQuery.of(context).size.width;

    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => ThemeProvider()..initial()),
      ],
      builder: (context, _) {
        final themeProvider = Provider.of<ThemeProvider>(context);
        return MaterialApp(
          title: 'Noob Master Flutter Demo',
          debugShowCheckedModeBanner: false,
          themeMode: themeProvider.themeMode,
          darkTheme: MyThemes.lightTheme,
          theme: MyThemes.darkTheme,
          home: const NMFCustomHomePage(title: 'NMF Demo Dashboard'),
        );
      },
    );
  }
}
