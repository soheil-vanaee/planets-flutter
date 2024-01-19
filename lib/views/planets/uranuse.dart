import 'package:flutter/material.dart';

class UranusPage extends StatelessWidget {
  const UranusPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SingleChildScrollView(
        padding: EdgeInsets.only(top: 128.0, bottom: 16.0),
        child: Column(
          crossAxisAlignment:
              CrossAxisAlignment.start, // Align content to the left
          children: [
            Image.asset("assets/images/palnets/uranuspng.parspng.com_.png"),
            SizedBox(height: 50),
            Padding(
              padding: const EdgeInsets.only(left: 20.0),
              child: Text(
                "Uranus",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 30,
                  fontWeight: FontWeight.w800,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Text(
                "Uranus is one of two ice giants in the outer solar system (the other is Neptune). Most (80% or more) of the planet's mass is made up of a hot dense fluid of (icy) materials – water, methane, and ammonia – above a small rocky core. Near the core, it heats up to 9,000 degrees Fahrenheit (4,982 degrees Celsius).",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.w400,
                ),
                textAlign: TextAlign.start,
              ),
            ),
            SizedBox(
              height: 40,
            ),
            _buildInfoRow(
                "Distance from the Sun", "~2.87 billion km"), // برای اورانوس
            _buildInfoRow("Mass", "~8.68 × 10^24 kg"), // برای اورانوس
            _buildInfoRow("Radius", "~25,362 km"), // برای اورانوس
            _buildInfoRow("Orbital Period", "~84.02 years"), // برای اورانوس
            _buildInfoRow(
                "Average Temperature", "~−224°C (−371°F)"), // برای اورانوس
          ],
        ),
      ),
    );
  }

  Widget _buildInfoRow(String title, String value) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start, // Align content to the left
        children: [
          Text(
            "$title:",
            style: TextStyle(
              color: Colors.white,
              fontSize: 16,
              fontWeight: FontWeight.w600,
            ),
          ),
          SizedBox(width: 8),
          Text(
            value,
            style: TextStyle(
              color: Colors.white,
              fontSize: 16,
              fontWeight: FontWeight.w400,
            ),
          ),
        ],
      ),
    );
  }
}
