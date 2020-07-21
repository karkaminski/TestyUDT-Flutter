import 'package:TestyUDT/dummy_data.dart';
import 'package:TestyUDT/screens/category_details_screen.dart';
import 'package:TestyUDT/screens/exam_result_details_screen.dart';
import 'package:TestyUDT/screens/exam_screen.dart';
import 'package:TestyUDT/widgets/raised_button_udt.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class ExamResultSummaryScreen extends StatelessWidget {
  static const routeName = '/categories/exam/resoult-summary';

  void buttonBack(BuildContext context) {
    DUMMY_QUESTIONS.forEach((element) {
      element.qivenAnswerIndex = null;
    });
    Navigator.of(context)
        .popUntil((ModalRoute.withName(CategoryDetailsScreen.routeName)));
  }

  void buttonRestart(BuildContext context) {
    print('RESTART');
  }

  void buttonDetails(BuildContext context){
    Navigator.of(context).pushNamed(ExamResultDetailsScreen.routeName);
  }

  @override
  Widget build(BuildContext context) {
    final routeArgs =
        ModalRoute.of(context).settings.arguments as Map<String, int>;

    int score = routeArgs['score'];
    int total = routeArgs['total'];

    return WillPopScope(
      onWillPop: () {
        buttonBack(context);
      },
      child: Scaffold(
          // appBar: AppBar(title: Text('WYNIK EGZAMINU')),
          body: Container(
        width: double.infinity,
        child: Column(crossAxisAlignment: CrossAxisAlignment.center, children: [
          Container(
            height: 80,
          ),
          SvgPicture.asset(score / total > 0.7
              ? 'assets/images/ico_passed.svg'
              : 'assets/images/ico_failed.svg'),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(score / total > 0.7 ? 'Zdałeś!' : 'Nie udało się...', style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold, color: score/total >0.7? Colors.green : Colors.red )),
          ),
          Padding(
            padding: const EdgeInsets.all(32.0),
            child: Text('Twój wynik to: ${score / total * 100}%', style: TextStyle(fontSize: 20),),
          ),
          SizedBox(
            width: 200,
            child: RaisedButton(
              color: score/total > 0.7 ? Colors.green : Colors.red,
                child: Text('Pokaż odpowiedzi',
                    style: TextStyle(
                        color: Colors.white, fontWeight: FontWeight.bold)),
                onPressed: () => buttonDetails(context)),
          ),
          SizedBox(
            width: 200,
            child: RaisedButton(
                color: Theme.of(context).accentColor,
                child: Text(
                  'Wykonaj ponownie\n(ten sam zestaw)',
                  style: TextStyle(
                      color: Colors.white, fontWeight: FontWeight.bold),
                ),
                onPressed: () {buttonRestart(context);}),
          ),
          Container(
            height: 50,
          ),
          SizedBox(
            width: 200,
            child: RaisedButton(
                color: Theme.of(context).accentColor,
                child: Text(
                  'Powrót do\nekranu kategorii',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      color: Colors.white, fontWeight: FontWeight.bold),
                ),
                onPressed: () {}),
          ),
        ]),
      )),
    );
  }
}
