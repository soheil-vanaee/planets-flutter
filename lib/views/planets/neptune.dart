import 'package:flutter/material.dart';

class NeptunePage extends StatelessWidget {
  const NeptunePage({super.key});

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
            Image.asset("assets/images/palnets/neptunepng.parspng.com_.png"),
            SizedBox(height: 50),
            Padding(
              padding: const EdgeInsets.only(left: 20.0),
              child: Text(
                "Neptune",
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
                "Dark, cold and whipped by supersonic winds, giant Neptune is the eighth and most distant major planet orbiting our Sun. More than 30 times as far from the Sun as Earth, Neptune is not visible to the naked eye. In 2011, Neptune completed its first 165-year orbit since its discovery.",
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
                "Distance from the Sun", "~4.5 billion km"), // برای نپتون
            _buildInfoRow("Mass", "~17.15 × 10^24 kg"), // برای نپتون
            _buildInfoRow("Radius", "~24,622 km"), // برای نپتون
            _buildInfoRow("Orbital Period", "~164.79 years"), // برای نپتون
            _buildInfoRow(
                "Average Temperature", "~−214°C (−353°F)"), // برای نپتون
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
