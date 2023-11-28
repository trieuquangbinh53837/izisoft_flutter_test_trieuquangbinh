import 'package:flutter/material.dart';

class CardView extends StatelessWidget {
  final String cardTitle;
  final double price;
  final String category;
  final Widget child;

  CardView({
    required this.cardTitle,
    required this.price,
    required this.category,
    required this.child,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(8),
      child: Card(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.network(
              'https://image.vtc.vn/resize/th/upload/2022/01/06/cay-bang-thaiphonggallery-20-11243273.jpg',
              width: 150,
              height: 150,
              fit: BoxFit.cover,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                cardTitle,
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                '\$$price',
                style: TextStyle(
                  fontSize: 14,
                  color: Colors.green,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                category,
                style: TextStyle(
                  fontSize: 14,
                  color: Colors.grey,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: child,
            ),
          ],
        ),
      ),
    );
  }
}
