import 'package:TestyUDT/screens/category_details_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'categories_screen.dart';

class SplashScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final mediaQuery = MediaQuery.of(context);
    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
      body: Container(
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          // mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 40),
              child: Container(
                  height: mediaQuery.size.width * 0.8,
                  child: SvgPicture.asset('assets/images/logo_testyudt.svg')),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 4.0),
              child: Column(
                children: [
                  Text(
                    'Testy UDT',
                    style: Theme.of(context).textTheme.headline1,
                  ),
                  Text(
                    'Aplikacja edukacyjna testów egzaminacyjnych\nUrzędu Dozoru Technicznego',
                    style: Theme.of(context).textTheme.headline2,
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: RaisedButton(
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
                color: Theme.of(context).accentColor,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 10),
                  child: Text(
                    'START',
                    style: TextStyle(color: Theme.of(context).primaryColor, fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                ),
                onPressed: () {
                  Navigator.of(context).pushReplacementNamed(CategoriesScreen.routeName);
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Container(
                height: 28,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Image.asset('assets/images/logo_nnoka.png'),
                    // Image.asset('assets/images/logo_centrum.png'),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
