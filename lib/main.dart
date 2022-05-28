import 'package:flutter/material.dart';
import 'package:peru_stars_mobile/ui/pages/artwork_page.dart';
import '/ui/widgets/NavBar.dart';
import 'ui/widgets/SideBar.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
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
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: SideBar(),
      appBar: NavBar(),
      body: ArtworkPage(),
    );
  }
}
