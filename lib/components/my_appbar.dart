import 'package:flutter/material.dart';

class MyAppBar extends StatelessWidget {
  final String title;
  VoidCallback ontap;
   MyAppBar({
    required this.ontap,
    required this.title,
   });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(25.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(
            child: Text(
              title,
              style: TextStyle(
                fontSize: 40,
              ),
            )
          ),
          GestureDetector(
            onTap: ontap,
            child: Container(
              padding: EdgeInsets.all(12),
              decoration: BoxDecoration(
                border: Border.all(color: Colors.white),
                borderRadius: BorderRadius.circular(12),
                color: Colors.grey.shade200,
              ),
              child: Icon(
                Icons.search,
                size: 36,
              ),
            ),
          )
        ],
      ),
    );
  }
}