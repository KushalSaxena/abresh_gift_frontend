import 'package:flutter/material.dart';

class CarouselSection extends StatelessWidget {
  final List<String> carouselItems = [
    'Fresh Bakes made with the Best Ingredients',
    'Order Now and Get Delivery in 30 Mins',
    'Get Special Discounts up to ₹3000',
  ];

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 150,
      child: PageView.builder(
        itemCount: carouselItems.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: Card(
              color: Colors.amber[50],
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15),
              ),
              child: Center(
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Text(
                    carouselItems[index],
                    style: TextStyle(fontSize: 16, color: Colors.amber[800]),
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
