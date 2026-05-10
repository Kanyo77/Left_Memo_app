import 'package:flutter/material.dart';

class GardenPage extends StatelessWidget {
  const GardenPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffF3F3F3),

      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.green[300],
        onPressed: () {},
        child: const Icon(Icons.add, color: Colors.white),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.startFloat,

      body: SafeArea(
        child: ListView(
          padding: const EdgeInsets.only(bottom: 100, top: 5),
          children: const [
            PlantCard(
              name: "Polypodiopsida",
              status: "Good",
              image: "../assets/images/plant1.png",
            ),
            PlantCard(
              name: "Snake Plant",
              status: "Need water",
              image: "../assets/images/plant2.png",
            ),
            PlantCard(
              name: "Areca Palm",
              status: "Good",
              image: "../assets/images/plant3.png",
            ),
            PlantCard(
              name: "Snake Plant",
              status: "Need water",
              image: "../assets/images/plant2.png",
            ),
            PlantCard(
              name: "Areca Palm",
              status: "Good",
              image: "../assets/images/plant3.png",
            ),
          ],
        ),
      ),
    );
  }
}

class PlantCard extends StatelessWidget {
  final String name;
  final String status;
  final String image;

  const PlantCard({
    super.key,
    required this.name,
    required this.status,
    required this.image,
  });

  @override
  Widget build(BuildContext context) {
    // Xử lý status
    final bool isGood = status.toLowerCase() == "good";

    final Color statusColor = isGood ? Colors.green : Colors.orange;
    final IconData statusIcon = isGood ? Icons.check_circle : Icons.warning;

    return InkWell(
      borderRadius: BorderRadius.circular(25),
      onTap: () {},
      child: Container(
        margin: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
        padding: const EdgeInsets.all(14),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(25),
          border: Border.all(color: Colors.grey.shade200),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.05),
              blurRadius: 10,
              offset: const Offset(0, 5),
            ),
          ],
        ),
        child: Row(
          children: [
            // 🗑 DELETE BUTTON
            IconButton(
              icon: const Icon(Icons.delete_outline, color: Colors.green),
              onPressed: () {},
            ),

            const SizedBox(width: 5),

            // TEXT
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    name,
                    style: const TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                    ),
                  ),
                  const SizedBox(height: 6),

                  // 👉 STATUS
                  Row(
                    children: [
                      Icon(statusIcon, color: statusColor, size: 16),
                      const SizedBox(width: 5),
                      Text(status, style: TextStyle(color: statusColor)),
                    ],
                  ),

                  const SizedBox(height: 10),

                  // REMINDER BUTTON
                  Container(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 20,
                      vertical: 6,
                    ),
                    decoration: BoxDecoration(
                      color: Colors.green[300],
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: const Text(
                      "Reminder",
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ],
              ),
            ),

            const SizedBox(width: 10),

            // 🌱 IMAGE
            ClipRRect(
              borderRadius: BorderRadius.circular(15),
              child: Image.asset(
                image,
                height: 70,
                width: 70,
                fit: BoxFit.cover,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
