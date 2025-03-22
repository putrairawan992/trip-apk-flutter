import 'package:besttrips/screens/main_screen.dart';
import 'package:besttrips/utils/theme.dart';
import 'package:flutter/material.dart';

void main() async {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: whiteColor,
        useMaterial3: true,
        pageTransitionsTheme: const PageTransitionsTheme(builders: {
          TargetPlatform.android: CupertinoPageTransitionsBuilder(),
          TargetPlatform.iOS: CupertinoPageTransitionsBuilder(),
        }),
        appBarTheme: AppBarTheme(
          backgroundColor: whiteColor,
          elevation: 0,
          centerTitle: true,
          iconTheme: IconThemeData(color: whiteColor),
          titleTextStyle: regularTextStyle.copyWith(
            fontSize: 14,
          ),
        ),
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => MainScreen(),
      },
    );
  }
}
