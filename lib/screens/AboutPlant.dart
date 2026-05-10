import 'package:flutter/material.dart';

class AboutPlantPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffF5F5F5),
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              child: Stack(
                children: [
                  // Background card
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(40),
                        topRight: Radius.circular(40),
                        bottomLeft: Radius.circular(40),
                        bottomRight: Radius.circular(40),
                      ),

                      boxShadow: [
                        BoxShadow(
                          color: Colors.black12,
                          blurRadius: 20,
                          offset: Offset(0, 10),
                        ),
                      ],
                    ),
                  ),

                  // Plant Image
                  Center(
                    child: Image.asset(
                      '../assets/images/plant1.png',
                      height: 440,
                    ),
                  ),

                  // Left buttons
                  Positioned(
                    left: 20,
                    top: 60,
                    child: Column(
                      children: [
                        _infoBox(Icons.wb_sunny, "more light"),
                        SizedBox(height: 16),
                        _infoBox(Icons.water_drop, "enough"),
                        SizedBox(height: 16),
                        _infoBox(Icons.thermostat, "17°C - 27°C"),
                      ],
                    ),
                  ),
                ],
              ),
            ),

            // CONTENT
            Container(
              padding: EdgeInsets.fromLTRB(20, 20, 20, 30),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.vertical(top: Radius.circular(30)),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "About Tree",
                    style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 12),

                  Text(
                    "Plants are essential to life on Earth. They absorb sunlight through their leaves and use it to produce food in a process called photosynthesis. Trees, flowers, and grass not only provide oxygen but also create habitats for many living creatures.",
                    style: TextStyle(color: Colors.grey[600], height: 1.5),
                  ),

                  SizedBox(height: 25),

                  // BUTTON
                  SizedBox(
                    width: double.infinity,
                    child: ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Color(0xff4CAF50),
                        elevation: 5,
                        shadowColor: Colors.green.withOpacity(0.4),
                        shape: StadiumBorder(),
                        padding: EdgeInsets.symmetric(vertical: 16),
                      ),
                      child: Text(
                        "Post to media",
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  // INFO BOX
  Widget _infoBox(IconData icon, String text) {
    return Container(
      width: 70,
      padding: EdgeInsets.symmetric(vertical: 12),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(15),
        boxShadow: [
          BoxShadow(
            color: Colors.black12,
            blurRadius: 10,
            offset: Offset(0, 4),
          ),
        ],
      ),
      child: Column(
        children: [
          Icon(icon, color: Colors.green),
          SizedBox(height: 6),
          Text(text, style: TextStyle(fontSize: 12, color: Colors.grey[700])),
        ],
      ),
    );
  }
}
