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
              // PART 1 - IMAGE
              // =========================
              ClipRRect(
                borderRadius: const BorderRadius.vertical(
                  top: Radius.circular(25),
                ),
                child: Image.asset(
                  'assets/chicken.jpg',
                  height: 285,
                  width: double.infinity,
                  fit: BoxFit.cover,
                ),
              ),

              // TITLE
              const Padding(
                padding: EdgeInsets.all(16),
                child: Text(
                  "Filipino Style Chicken Adobo",
                  style: TextStyle(
                    fontSize: 24,
                    letterSpacing: 2,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),

              // =========================
              // PART 2 - ICON ARRANGEMENT
              // =========================
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // LEFT COLUMN
                    const Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Icon(Icons.timer, color: Colors.blueGrey),
                            SizedBox(width: 6),
                            Text("Prep: 15 min"),
                          ],
                        ),

                        SizedBox(height: 10),

                        Row(
                          children: [
                            Icon(Icons.star, color: Colors.blueGrey),
                            SizedBox(width: 6),
                            Text("Cook: 45 min"),
                          ],
                        ),
                      ],
                    ),

                    const Spacer(),

                    // RIGHT COLUMN
                    const Row(
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

              // =========================
              // INGREDIENTS
              // =========================
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 16),
                child: Text(
                  "Ingredients",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
              ),

              const SizedBox(height: 5),

              // INGREDIENTS + HEART
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    const Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("• 1 whole chicken"),
                          Text("• Garlic"),
                          Text("• Onion"),
                          Text("• Bay Leaves"),
                          Text("• Cooking Oil"),
                          Text("• 1/2 Cup soy sauce"),
                          Text("• 1/4 Cup vinegar"),
                          Text("• 1 Cup water"),
                        ],
                      ),
                    ),

                    Container(
                      decoration: const BoxDecoration(
                        color: Colors.white,
                        shape: BoxShape.circle,
                        boxShadow: [
                          BoxShadow(color: Colors.black26, blurRadius: 20),
                        ],
                      ),
                      child: const Padding(
                        padding: EdgeInsets.all(10),
                        child: Icon(Icons.favorite, color: Colors.black),
                      ),
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
