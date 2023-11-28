import 'package:flutter/material.dart';

class CategoryTabs extends StatefulWidget {
  const CategoryTabs(this.title);
  final String title;

  @override
  _CategoryTabsState createState() => _CategoryTabsState();
}

class _CategoryTabsState extends State<CategoryTabs> {
  bool isTapped = false;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() {
          isTapped = !isTapped;
        });
      },
      child: Container(
        child: Text(
          widget.title,
          style: TextStyle(
            fontWeight: isTapped ? FontWeight.w900 : FontWeight.w300,
            fontSize: 18,
            color: isTapped ? Colors.black : Colors.grey,
          ),
        ),
        padding: EdgeInsets.symmetric(horizontal: 15),
      ),
    );
  }
}
