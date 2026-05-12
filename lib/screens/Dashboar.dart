import 'package:flutter/material.dart';

class DashboardPage extends StatelessWidget {

  final List<String> plants = [
    "assets/images/plant/plant_2.png",
    "assets/images/plant/plant_1.png",
    "assets/images/plant/plant_3.png",
    "assets/images/plant/plant_4.png",
    "assets/images/plant/plant_5.png",
    "assets/images/plant/plant_6.png",
    "assets/images/plant/plant_7.png",
    "assets/images/plant/plant_8.png",
  ];
    @override

     Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffEEEEEE),

      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              child: SingleChildScrollView(
                child: Padding(
                  padding: const EdgeInsets.all(16),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      //  TITLE
                      const Center(
                        child: Text(
                          "My Garden",
                          style: TextStyle(
                            fontSize: 26,
                            color: Colors.green,
                            fontWeight: FontWeight.bold,
                            letterSpacing: 1,
                          ),
                        ),
                      ),

                      const SizedBox(height: 20),

                      //  GRID
                      GridView.builder(
                        shrinkWrap: true,
                        physics: const NeverScrollableScrollPhysics(),
                        itemCount: plants.length,
                        gridDelegate:
                            SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount:
                              MediaQuery.of(context).size.width > 400
                                  ? 4
                                  : 3,
                          crossAxisSpacing: 10,
                          mainAxisSpacing: 10,
                        ),
                        itemBuilder: (context, index) {
                          return Container(
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(15),
                              border: Border.all(color: Colors.black12),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.black.withOpacity(0.05),
                                  blurRadius: 8,
                                  offset: const Offset(0, 4),
                                )
                              ],
                            ),
                            child: Column(
                              children: [
                                Expanded(
                                  child: Padding(
                                    padding: const EdgeInsets.all(6),
                                    child: Image.asset(
                                      plants[index],
                                      fit: BoxFit.contain,
                                    ),
                                  ),
                                ),
                                Text(
                                  "Plant ${index + 1}",
                                  style: const TextStyle(fontSize: 10),
                                ),
                                const SizedBox(height: 6),
                              ],
                            ),
                          );
                        },
                      ),

                      const SizedBox(height: 25),

                      //  TITLE WEATHER
                      Text(
                        "Weather Forecast",
                        style: TextStyle(
                          fontSize: 22,
                          color: Colors.blue[300],
                          fontWeight: FontWeight.bold,
                        ),
                      ),

                      const SizedBox(height: 10),

                      //  WEATHER CARD
                      Container(
                        padding: const EdgeInsets.symmetric(
                            vertical: 15, horizontal: 10),
                        decoration: BoxDecoration(
                          gradient: const LinearGradient(
                            colors: [
                              Color(0xff5AA9E6),
                              Color(0xff7FC8F8),
                            ],
                          ),
                          borderRadius: BorderRadius.circular(15),
                          border: Border.all(color: Colors.black12),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.blue.withOpacity(0.2),
                              blurRadius: 10,
                              offset: const Offset(0, 5),
                            )
                          ],
                        ),
                        child: Row(
                          mainAxisAlignment:
                              MainAxisAlignment.spaceAround,
                          children: [
                            _weatherItem(
                                "MON", Icons.wb_sunny, Colors.yellow),
                            _weatherItem(
                                "TUE", Icons.cloud, Colors.grey),
                            _weatherItem("WED", Icons.thunderstorm,
                                Colors.deepPurple),
                            _weatherItem(
                                "THU", Icons.cloud, Colors.grey),
                            _weatherItem(
                                "FRI", Icons.ac_unit, Colors.lightBlue),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

}

 Widget _weatherItem(String day, IconData icon, Color color) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          day,
          style: const TextStyle(color: Colors.white70, fontSize: 12),
        ),
        const SizedBox(height: 8),
        Icon(icon, color: color, size: 30),
        const SizedBox(height: 8),
        const Text(
          "22°C",
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
        const Text(
          "71°F",
          style: TextStyle(color: Colors.white70, fontSize: 11),
        ),
      ],
    );
  }
