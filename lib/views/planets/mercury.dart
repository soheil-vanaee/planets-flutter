import 'package:flutter/material.dart';

class MercuryPage extends StatelessWidget {
  const MercuryPage({super.key});

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
            Image.asset("assets/images/palnets/mercurypng.parspng.com_.png"),
            SizedBox(height: 50),
            Padding(
              padding: const EdgeInsets.only(left: 20.0),
              child: Text(
                " Mercury",
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
                "The third planet from the Sun and the only astronomical object known to harbor life.",
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
            _buildInfoRow("Distance from the Sun", "~384,400 km"), // برای ماه
            _buildInfoRow("Mass", "~0.073 × 10^24 kg"), // برای ماه
            _buildInfoRow("Radius", "~1,737.4 km"), // برای ماه
            _buildInfoRow("Orbital Period", "~27.3 days"), // برای ماه
            _buildInfoRow("Average Temperature", "~−20°C (−4°F)"), // برای ماه
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
