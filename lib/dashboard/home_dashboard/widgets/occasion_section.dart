import 'package:flutter/material.dart';

class OccasionSection extends StatelessWidget {
  final List<String> occasions = [
    'Boss Day', 'Diwali', 'Karwa', 'Bhai Dooj', 'Dussehra'
  ];

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: occasions.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            child: Column(
              children: [
                CircleAvatar(
                  radius: 30,
                  backgroundColor: Colors.amber.shade100,
                  child: Icon(Icons.card_giftcard, color: Colors.amber),
                ),
                SizedBox(height: 5),
                Text(
                  occasions[index],
                  style: TextStyle(fontSize: 12),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
