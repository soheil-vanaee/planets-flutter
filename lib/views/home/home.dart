import 'package:flutter/material.dart';
import 'package:planets/views/planets/earth.dart';
import 'package:planets/views/planets/jupiter.dart';
import 'package:planets/views/planets/mars.dart';
import 'package:planets/views/planets/mercury.dart';
import 'package:planets/views/planets/neptune.dart';
import 'package:planets/views/planets/saturn.dart';
import 'package:planets/views/planets/uranuse.dart';
import 'package:planets/views/planets/venus.dart';

class HomePage extends StatelessWidget {
  HomePage({Key? key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text(
          "outdoors",
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: ListView.builder(
        itemCount: planetPages.length,
        itemBuilder: (context, index) {
          return Card(
            color: const Color.fromARGB(255, 255, 255, 255),
            child: ListTile(
              onTap: () {
                // انتقال به صفحه مرتبط با هر سیاره با انیمیشن
                Navigator.push(
                  context,
                  PageRouteBuilder(
                    pageBuilder: (context, animation, secondaryAnimation) =>
                        planetPages[index],
                    transitionsBuilder:
                        (context, animation, secondaryAnimation, child) {
                      const begin = Offset(1.0, 0.0);
                      const end = Offset.zero;
                      const curve = Curves.easeInOutCubic;
                      var tween = Tween(begin: begin, end: end)
                          .chain(CurveTween(curve: curve));
                      var offsetAnimation = animation.drive(tween);

                      return SlideTransition(
                        position: offsetAnimation,
                        child: child,
                      );
                    },
                  ),
                );
              },
              title: Center(
                child: Text(
                  "Go to ${_getPlanetName(index)}",
                  style: TextStyle(color: Colors.black),
                ),
              ),
            ),
          );
        },
      ),
    );
  }

  String _getPlanetName(int index) {
    switch (index) {
      case 0:
        return 'Mercury';
      case 1:
        return 'Venus';
      case 2:
        return 'Earth';
      case 3:
        return 'Mars';
      case 4:
        return 'Jupiter';
      case 5:
        return 'Saturn';
      case 6:
        return 'Uranus';
      case 7:
        return 'Neptune';
      default:
        return 'Unknown';
    }
  }

  // لیست صفحات مرتبط با هر سیاره
  final List<Widget> planetPages = [
    MercuryPage(),
    VenusPage(),
    EarthPage(),
    MarsPage(),
    JupiterPage(),
    SaturnPage(),
    UranusPage(),
    NeptunePage(),
  ];
}
