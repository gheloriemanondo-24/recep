import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: RecipePage(),
    );
  }
}

class RecipePage extends StatelessWidget {
  const RecipePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFDDE3E7),
      body: Center(
        child: Container(
          width: 350,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(25),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // =========================
              // PART 1 - IMAGE + TITLE
              // =========================
              ClipRRect(
                borderRadius: const BorderRadius.vertical(
                  top: Radius.circular(25),
                ),
                child: Image.network(
                  "https://images.unsplash.com/photo-1604908554027-3b1c88a5f9ad",
                  height: 200,
                  width: double.infinity,
                  fit: BoxFit.cover,
                ),
              ),

              const Padding(
                padding: EdgeInsets.all(16),
                child: Text(
                  "Lemon Herb Roasted Chicken",
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                ),
              ),

              // =========================
              // PART 2 - PREP / COOK / DIFFICULTY
              // =========================
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    Row(
                      children: [
                        Icon(Icons.timer, color: Colors.blueGrey),
                        SizedBox(width: 6),
                        Text("Prep: 15 min"),
                      ],
                    ),

                    Row(
                      children: [
                        Icon(Icons.star, color: Colors.blueGrey),
                        SizedBox(width: 6),
                        Text("Cook: 45 min"),
                      ],
                    ),

                    Row(
                      children: [
                        Icon(Icons.restaurant_menu, color: Colors.blueGrey),
                        SizedBox(width: 6),
                        Text("Difficulty: Easy"),
                      ],
                    ),
                  ],
                ),
              ),

              const SizedBox(height: 20),
            ],
          ),
        ),
      ),
    );
  }
}
