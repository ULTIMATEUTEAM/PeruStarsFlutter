import 'package:flutter/material.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:peru_stars_mobile/ui/pages/login_page.dart';
import 'ui/widgets/BottomBar.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.red,
        visualDensity: VisualDensity.adaptivePlatformDensity,
        textTheme: TextTheme(
          headline1: TextStyle(
            fontSize: 24.0,
            fontWeight: FontWeight.bold,
            color: Color(0XFF030047),
          ),
          headline2: TextStyle(
            fontSize: 24.0,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
          headline3: TextStyle(
            fontSize: 18.0,
            fontWeight: FontWeight.bold,
            color: Color(0XFF030047),
          ),
          headline4: TextStyle(
            fontSize: 18.0,
            fontWeight: FontWeight.w500,
            color: Colors.red[300],
          ),
          headline5: TextStyle(
            fontSize: 16.0,
            fontWeight: FontWeight.w500,
            color: Color(0XFFB7B7D2),
          ),
          bodyText1: TextStyle(
            fontSize: 16.0,
            fontWeight: FontWeight.w400,
            color: Colors.black87,
          ),
          bodyText2: TextStyle(
            fontSize: 16.0,
            fontWeight: FontWeight.w400,
            color: Color(0XFFB7B7D2),
          ),
        ),
      ),
      home: const LoginPage(),
    );
  }
}

class SplashScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
