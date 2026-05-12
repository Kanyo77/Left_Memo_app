import 'dart:ui';
import 'package:flutter/material.dart';

class  AboutPlantPage extends StatelessWidget {
  const AboutPlantPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffE8F5E9),

      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [

              // ================= TOP SECTION =================

              SizedBox(
                height: 500,
                child: Stack(
                  children: [

                    // MAIN CARD
                    Container(
                      margin: const EdgeInsets.all(20),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(40),
                        gradient: const LinearGradient(
                          begin: Alignment.topLeft,
                          end: Alignment.bottomRight,
                          colors: [
                            Colors.white,
                            Color(0xffF1F8E9),
                          ],
                        ),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.green.withOpacity(0.15),
                            blurRadius: 30,
                            offset: const Offset(0, 15),
                          ),
                        ],
                      ),
                    ),

                    // PLANT IMAGE
                    Center(
                      child: Hero(
                        tag: "plant",
                        child: Image.asset(
                          "assets/images/plant1.png",
                          height: 360,
                          fit: BoxFit.contain,
                        ),
                      ),
                    ),

                    // LEFT INFO BOXES
                    Positioned(
                      left: 25,
                      top: 65,
                      child: Column(
                        children: [

                          _infoBox(
                            Icons.wb_sunny_outlined,
                            "Medium",
                            Colors.orange.shade50,
                            Colors.orange,
                          ),

                          const SizedBox(height: 18),

                          _infoBox(
                            Icons.water_drop_outlined,
                            "Enough",
                            Colors.blue.shade50,
                            Colors.blue,
                          ),

                          const SizedBox(height: 18),

                          _infoBox(
                            Icons.thermostat_outlined,
                            "17°-27°",
                            Colors.red.shade50,
                            Colors.redAccent,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),

              // ================= CONTENT =================

              Container(
                padding: const EdgeInsets.fromLTRB(25, 10, 25, 35),

                decoration: const BoxDecoration(
                  color: Colors.white,

                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(35),
                    topRight: Radius.circular(35),
                  ),
                ),

                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [

                    // PLANT NAME
                    const Text(
                      "Aloe Vera",
                      style: TextStyle(
                        fontSize: 34,
                        fontWeight: FontWeight.bold,
                        color: Color(0xff1B5E20),
                      ),
                    ),

                    const SizedBox(height: 5),

                    // SCIENTIFIC NAME
                    Text(
                      "Aloe barbadensis miller",
                      style: TextStyle(
                        color: Colors.grey.shade600,
                        fontStyle: FontStyle.italic,
                        fontSize: 15,
                      ),
                    ),

                    const SizedBox(height: 25),

                    const SizedBox(height: 30),

                    // ABOUT TITLE
                    const Text(
                      "About Plant",
                      style: TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                      ),
                    ),

                    const SizedBox(height: 15),

                    // DESCRIPTION
                    Text(
                     "Plants are essential to life on Earth. They absorb sunlight through their leaves and use it to produce food in a process called photosynthesis. Trees, flowers, and grass not only provide oxygen but also create habitats for many living creatures.",
                      style: TextStyle(
                        color: Colors.grey.shade700,
                        height: 1.8,
                        fontSize: 15,
                      ),
                    ),

                    const SizedBox(height: 35),

                    // BUTTON
                    Container(
                      width: double.infinity,
                      height: 60,

                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),

                        gradient: const LinearGradient(
                          colors: [
                            Color(0xff43A047),
                            Color(0xff66BB6A),
                          ],
                        ),

                        boxShadow: [
                          BoxShadow(
                            color:
                                Colors.green.withOpacity(0.4),
                            blurRadius: 20,
                            offset: const Offset(0, 8),
                          ),
                        ],
                      ),

                      child: ElevatedButton.icon(
                        onPressed: () {},

                        icon: const Icon(
                          Icons.send_rounded,
                          color: Colors.white,
                        ),

                        label: const Text(
                          "Post to Media",
                          style: TextStyle(
                            fontSize: 17,
                            fontWeight: FontWeight.w600,
                            color: Colors.white,
                          ),
                        ),

                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.transparent,
                          shadowColor: Colors.transparent,
                          shape: RoundedRectangleBorder(
                            borderRadius:
                                BorderRadius.circular(30),
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
      ),
    );
  }

  // ================= INFO BOX =================

  Widget _infoBox(
    IconData icon,
    // String title,
    String value,
    Color bgColor,
    Color iconColor,
  ) {
    return Container(
      width: 85,
      padding: const EdgeInsets.symmetric(
        vertical: 15,
        horizontal: 10,
      ),

      decoration: BoxDecoration(
        color: Colors.white.withOpacity(0.85),
        borderRadius: BorderRadius.circular(22),

        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.05),
            blurRadius: 15,
            offset: const Offset(0, 5),
          ),
        ],
      ),

      child: Column(
        children: [

          Container(
            padding: const EdgeInsets.all(10),

            decoration: BoxDecoration(
              color: bgColor,
              shape: BoxShape.circle,
            ),

            child: Icon(
              icon,
              color: iconColor,
              size: 24,
            ),
          ),

          const SizedBox(height: 10),

          const SizedBox(height: 4),

          Text(
            value,
            textAlign: TextAlign.center,
            style: const TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 13,
            ),
          ),
        ],
      ),
    );
  }

 }