import 'package:TestyUDT/screens/categories_screen.dart';
import 'package:TestyUDT/screens/category_details_screen.dart';
import 'package:TestyUDT/screens/exam_result_details_screen.dart';
import 'package:TestyUDT/screens/exam_result_summary_screen.dart';
import 'package:TestyUDT/screens/exam_screen.dart';
import 'package:TestyUDT/screens/splash_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

MaterialColor yellowConstruction = MaterialColor(0xFFD7AB29, {
  50: Color.fromRGBO(215, 171, 41, .1),
  100: Color.fromRGBO(215, 171, 41, .2),
  200: Color.fromRGBO(215, 171, 41, .3),
  300: Color.fromRGBO(215, 171, 41, .4),
  400: Color.fromRGBO(215, 171, 41, .5),
  500: Color.fromRGBO(215, 171, 41, .6),
  600: Color.fromRGBO(215, 171, 41, .7),
  700: Color.fromRGBO(215, 171, 41, .8),
  800: Color.fromRGBO(215, 171, 41, .9),
  900: Color.fromRGBO(215, 171, 41, 1),
});

Color greyConstruction = Color.fromRGBO(50, 50, 50, 1);

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'TESTY UDT',
      theme: ThemeData(
          primaryColor: yellowConstruction,
          accentColor: greyConstruction,
          primarySwatch: yellowConstruction,
          visualDensity: VisualDensity.adaptivePlatformDensity,
          textTheme: TextTheme(
            headline1: TextStyle(
                fontSize: 40,
                fontWeight: FontWeight.bold,
                color: greyConstruction),
            headline2: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.normal,
              color: greyConstruction,
            ),
            headline5: TextStyle(fontSize: 25, fontWeight: FontWeight.w700),
            headline6: TextStyle(fontSize: 18, fontWeight: FontWeight.w300),
            bodyText1: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            bodyText2: TextStyle(fontWeight: FontWeight.w300),
          )),
      routes: {
        '/': (ctx) => SplashScreen(),
        CategoriesScreen.routeName: (ctx) => CategoriesScreen(),
        CategoryDetailsScreen.routeName: (ctx) => CategoryDetailsScreen(),
        ExamScreen.routeName: (ctx) => ExamScreen(),
        ExamResultSummaryScreen.routeName: (ctx) => ExamResultSummaryScreen(),
        ExamResultDetailsScreen.routeName: (ctx) => ExamResultDetailsScreen(),
      },
    );
  }
}
