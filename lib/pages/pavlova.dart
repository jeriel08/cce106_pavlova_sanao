import 'package:flutter/material.dart';

class Pavlova extends StatelessWidget {
  const Pavlova({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Sanao_Activity1'), centerTitle: true),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withValues(alpha: 0.5),
                    spreadRadius: 2,
                    blurRadius: 7,
                    offset: const Offset(0, 3),
                  ),
                ],
              ),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(15),
                child: Image.asset('assets/pavlova.jpg', fit: BoxFit.cover),
              ),
            ),
            const SizedBox(height: 16),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  'Strawberry Pavlova',
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 8),
                const Text(
                  'Pavlova is a meringue-based dessert named after the Russian ballerina Anna Pavlova. It features a crisp crust and soft, light inside, topped with fruit and whipped cream.',
                  style: TextStyle(fontSize: 16, height: 1.5),
                ),
                const SizedBox(height: 16),
                Center(child: buildRatingRow()),
                const SizedBox(height: 16),
                buildRowTabs(),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget buildRatingRow() => Row(
    mainAxisSize: MainAxisSize.min,
    children: [
      Row(
        children: List.generate(
          5,
          (index) => Icon(
            index < 3 ? Icons.star : Icons.star_border,
            color: Colors.yellow,
            size: 20,
          ),
        ),
      ),
      const SizedBox(width: 8),
      const Text(
        '170 Reviews',
        style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
      ),
    ],
  );

  Widget buildIconTab(IconData icon, String label, String value) => Column(
    children: [
      Icon(icon, color: Colors.yellow, size: 28),
      const SizedBox(height: 8),
      Text(
        label,
        style: const TextStyle(
          fontWeight: FontWeight.bold,
          color: Colors.black,
          fontSize: 12,
        ),
      ),
      const SizedBox(height: 4),
      Text(value, style: const TextStyle(fontSize: 13, color: Colors.black)),
    ],
  );

  Widget buildRowTabs() => Row(
    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
    children: [
      buildIconTab(Icons.timer_outlined, 'Duration', '30 mins'),
      buildIconTab(Icons.restaurant_menu, 'Servings', '4 servings'),
      buildIconTab(Icons.work_outline, 'Difficulty', 'Easy'),
    ],
  );
}
