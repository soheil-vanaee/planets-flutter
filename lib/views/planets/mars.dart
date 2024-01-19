import 'package:flutter/material.dart';

class MarsPage extends StatelessWidget {
  const MarsPage({super.key});

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
            Image.asset("assets/images/palnets/marspng.parspng.com_.png"),
            SizedBox(height: 50),
            Padding(
              padding: const EdgeInsets.only(left: 20.0),
              child: Text(
                "Mars",
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
                "Mars, the fourth planet from the sun, is a terrestrial planet with a thin atmosphere primarily composed of carbon dioxide. It is known as the <Red Planet> due to its iron oxide-rich surface, giving it a reddish appearance",
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
                "Distance from the Sun", "~227.94 million km"), // برای مریخ
            _buildInfoRow("Mass", "~0.64171 × 10^24 kg"), // برای مریخ
            _buildInfoRow("Radius", "~3,389.5 km"), // برای مریخ
            _buildInfoRow("Orbital Period", "~687 days"), // برای مریخ
            _buildInfoRow("Average Temperature", "~−80°C (−62°F)"), // برای مریخ
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
