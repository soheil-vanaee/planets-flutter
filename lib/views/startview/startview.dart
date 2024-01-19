import 'package:flutter/material.dart';
import 'package:planets/views/home/home.dart';

class MyStartPage extends StatelessWidget {
  const MyStartPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 130.0, bottom: 80),
            child: Image.asset("assets/images/palnets/logomain.png"),
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.all(18.0),
                child: Text(
                  "outdoors",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 30,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ),
            ],
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text(
                "What is happening in the galaxy?",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ],
          ),
          SizedBox(
            height: 20,
          ),
          TextButton(
            onPressed: () {
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(builder: (context) => HomePage()),
              );
            },
            style: TextButton.styleFrom(
              backgroundColor: Colors.white, // بک‌گراند دکمه
            ),
            child: Padding(
              padding: const EdgeInsets.fromLTRB(30, 10, 30, 10),
              child: Text(
                "let's go see",
                style: TextStyle(
                  color: Colors.black, // رنگ متن دکمه
                ),
              ),
            ),
          ),
        ],
      ),
      backgroundColor: Colors.black,
    );
  }
}
