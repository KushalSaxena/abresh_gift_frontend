import 'package:flutter/material.dart';

class CategorySection extends StatelessWidget {
  // Changed the type from Map<String, String> to Map<String, dynamic>
  final List<Map<String, dynamic>> categories = [
    {"title": "Diwali Gifts", "icon": Icons.card_giftcard},
    {"title": "Same Day", "icon": Icons.alarm},
    {"title": "Personalized", "icon": Icons.edit},
    {"title": "Cakes", "icon": Icons.cake},
    {"title": "Flowers", "icon": Icons.local_florist},
    {"title": "Plants", "icon": Icons.eco},
    {"title": "International", "icon": Icons.public},
    {"title": "Corporate", "icon": Icons.shopping_cart},
  ];

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      child: GridView.builder(
        physics: NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 4,
          childAspectRatio: 0.8,
          crossAxisSpacing: 10,
          mainAxisSpacing: 10,
        ),
        itemCount: categories.length,
        itemBuilder: (context, index) {
          return Column(
            children: [
              Icon(
                categories[index]['icon'] as IconData, // Cast as IconData
                size: 40,
                color: Colors.amber,
              ),
              SizedBox(height: 5),
              Text(
                categories[index]['title']!,
                style: TextStyle(fontSize: 12),
                textAlign: TextAlign.center,
              ),
            ],
          );
        },
      ),
    );
  }
}
