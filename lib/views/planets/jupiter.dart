import 'package:flutter/material.dart';

class JupiterPage extends StatelessWidget {
  const JupiterPage({super.key});

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
            Image.asset("assets/images/palnets/JUPITERPNG.PARSPNG.COM_.png"),
            SizedBox(height: 50),
            Padding(
              padding: const EdgeInsets.only(left: 20.0),
              child: Text(
                "Jupiter",
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
                "Jupiter is the fifth planet from our Sun and is, by far, the largest planet in the solar system – more than twice as massive as all the other planets combined",
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
                "Distance from the Sun", "~778 million km"), // برای مشتری
            _buildInfoRow("Mass", "~1.898 × 10^27 kg"), // برای مشتری
            _buildInfoRow("Radius", "~69,911 km"), // برای مشتری
            _buildInfoRow("Orbital Period", "~11.86 years"), // برای مشتری
            _buildInfoRow(
                "Average Temperature", "~−145°C (−234°F)"), // برای مشتری
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
