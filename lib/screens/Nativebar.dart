import 'package:flutter/material.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';

import './My_garden.dart';
import './Medial.dart';
import './Scan.dart';
import './Profile.dart';
import './Setting.dart';
import './Dashboar.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => Nativebar();
}

class Nativebar extends State<MainPage> {
  final GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();
  int index = 0;

  @override
  Widget build(BuildContext context) {
    final items = <Widget>[
      Icon(Icons.camera, size: 30),
      Icon(Icons.local_florist, size: 30),
      Icon(Icons.newspaper, size: 30),
      Icon(Icons.person, size: 30),
    ];

    return Scaffold(
      extendBody: true,
      backgroundColor: Color(0xFFEEEEEE),
      body: Column(
        children: [
          _header(),
          Expanded(
            child: Navigator(
              key: navigatorKey,
              onGenerateRoute: (settings) {
                return MaterialPageRoute(builder: (_) => DashboardPage());
              },
            ),
          ),
        ],
      ),

      bottomNavigationBar: Theme(
        data: Theme.of(
          context,
        ).copyWith(iconTheme: IconThemeData(color: Colors.white)),
        child: CurvedNavigationBar(
          //  color: Colors.green,
          color: Color(0xFF5AAB61),
          backgroundColor: Colors.transparent,
          height: 60,
          index: index,
          items: items,
          onTap: (i) {
            setState(() {
              index = i;
            });

            Widget page;

            switch (i) {
              case 0:
                page = ScanPage();
                break;
              case 1:
                page = GardenPage();
                break;
              case 2:
                page = MedialPage();
                break;
              case 3:
                page = ProfilePage();
                break;
              default:
                page = DashboardPage();
            }

            navigatorKey.currentState!.push(
              MaterialPageRoute(builder: (_) => page),
            );
          },
        ),
      ),
    );
  }

  // ================= HEADER =================
  Widget _header() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          _circleIcon(
            Icons.arrow_back,
            onTap: () {
              // Navigator.pop(context);
              if (navigatorKey.currentState!.canPop()) {
                navigatorKey.currentState!.pop();
              }
            },
          ),

          _circleIcon(
            Icons.settings,
            onTap: () {
              // Navigator.push(
              //   context,
              //   MaterialPageRoute(
              //     builder: (_) => SettingsPage(),
              //   ),

              navigatorKey.currentState!.push(
                MaterialPageRoute(builder: (_) => SettingsPage()),
              );
            },
          ),
        ],
      ),
    );
  }

  Widget _circleIcon(IconData icon, {VoidCallback? onTap}) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: EdgeInsets.all(10),
        decoration: BoxDecoration(
          color: Color(0xFF5AAB61),
          shape: BoxShape.circle,
        ),
        child: Icon(icon, color: Colors.white),
      ),
    );
  }
}
