import 'package:TestyUDT/screens/exam_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class CategoryDetailsScreen extends StatelessWidget {
  static const routeName = '/category_details';

  void startExam(BuildContext context) {
    Navigator.of(context).pushNamed(
      ExamScreen.routeName,
    );
  }

  @override
  Widget build(BuildContext context) {
    final routeArgs =
        ModalRoute.of(context).settings.arguments as Map<String, String>;
    final mediaQuery = MediaQuery.of(context);
    return Scaffold(
        appBar: AppBar(
          title: Text(routeArgs['title']),
        ),
        body: Container(
          width: double.infinity,
          height: double.infinity,
          child: Stack(
            children: [
              Positioned(
                bottom: 0,
                right: 0,
                child: SvgPicture.asset(
                  "assets/images/${routeArgs['iconName']}",
                  width: mediaQuery.size.width * 0.8,
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      routeArgs['title'],
                      style: Theme.of(context).textTheme.headline5,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(bottom: 10),
                      child: Text(
                        routeArgs['description'],
                        style: Theme.of(context).textTheme.headline6,
                      ),
                    ),
                    InkWell(
                      onTap: () {},
                      child: Card(
                        elevation: 10,
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Icon(
                                Icons.description,
                                size: 70,
                                color: Theme.of(context).primaryColor,
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Container(
                                child: Text(
                                  'Nauka',
                                  style: Theme.of(context).textTheme.bodyText1,
                                ),
                              ),
                            ),
                            Spacer(),
                            Icon(Icons.keyboard_arrow_right)
                          ],
                        ),
                      ),
                    ),
                    //Exam Card start:
                    InkWell(
                      onTap: () => startExam(context),
                      child: Card(
                        elevation: 10,
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Icon(Icons.school,
                                  size: 70,
                                  color: Theme.of(context).primaryColor),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Container(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'Egzamin',
                                      style:
                                          Theme.of(context).textTheme.bodyText1,
                                    ),
                                    Text(
                                      'Ilość pytań: 15',
                                      style:
                                          Theme.of(context).textTheme.bodyText2,
                                    ),
                                    Text(
                                      'Próg zdawalności: 11',
                                      style:
                                          Theme.of(context).textTheme.bodyText2,
                                    ),
                                    Text(
                                      'Czas: 30 minut',
                                      style:
                                          Theme.of(context).textTheme.bodyText2,
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            Spacer(),
                            Icon(Icons.keyboard_arrow_right)
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
        ));
  }
}
