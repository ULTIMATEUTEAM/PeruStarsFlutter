import 'package:flutter/material.dart';
import 'package:peru_stars_mobile/pages/login_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      initialRoute: '/',
      theme: ThemeData(brightness: Brightness.light, primarySwatch: Colors.red),
      home: const LoginPage(),
      // home: Scaffold(
      //   appBar: AppBar(
      //     title: const Text('Donde esta mi super traje'),
      //   ),
      //   body: const Center(
      //     child: Text('Estaaa'),
      //   ),
      // ),
    );
  }
}
