import 'package:flutter/material.dart';
import 'Nativebar.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned.fill(
            child: Image.asset(
              //wallpaper.png
              "../assets/images/wallpaper.png",
              fit: BoxFit.cover,
            ),
          ),

          Positioned.fill(
            child: Container(color: Colors.black.withOpacity(0.5)),
          ),

          SafeArea(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Spacer(),

                Image.asset(
                  "../assets/images/logo.png",
                  height: 211,
                  fit: BoxFit.contain,
                ),

                SizedBox(height: 20),

                Text(
                  "Leaf Neno",
                  style: TextStyle(
                    fontSize: 42,
                    fontWeight: FontWeight.w500,
                    color: Colors.greenAccent,
                    fontFamily: "Roboto",
                  ),
                ),

                SizedBox(height: 10),

                // SUBTITLE
                Text(
                  "Let us help you care for your plants",
                  style: TextStyle(color: Colors.white70, fontSize: 14),
                ),

                Spacer(),

                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 30),
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                          builder: (context) => MainPage(),
                        ),
                      );
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.white,
                      foregroundColor: Colors.black,
                      shape: StadiumBorder(),
                      padding: EdgeInsets.symmetric(vertical: 14),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset("../assets/images/icon.png", height: 22),
                        SizedBox(width: 10),
                        Text(
                          "Continue with Google",
                          style: TextStyle(fontSize: 16),
                        ),
                      ],
                    ),
                  ),
                ),

                SizedBox(height: 230),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
