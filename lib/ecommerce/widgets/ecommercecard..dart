import 'package:flutter/material.dart';

class EcommerceCard extends StatelessWidget {
  final IconData icon;
  final String title;
  final String value;
  final String change;
  final String changeLabel;
  final bool isIncrease;

  const EcommerceCard({
    Key? key,
    required this.icon,
    required this.title,
    required this.value,
    required this.change,
    required this.changeLabel,
    this.isIncrease = true,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double containerWidth = MediaQuery.of(context).size.width * 0.22;
    double containerHeight = MediaQuery.of(context).size.height * 0.18;

    return Container(
      width: containerWidth,
      height: containerHeight,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.2),
            spreadRadius: 2,
            blurRadius: 5,
            offset: Offset(0, 3),
          ),
        ],
      ),
      padding: const EdgeInsets.all(16.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          CircleAvatar(
            backgroundColor: Colors.grey[200],
            child: Icon(icon, color: Colors.black),
          ),
          SizedBox(width: 10),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  title,
                  style: TextStyle(
                    color: Colors.grey[600],
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 5),
                Text(
                  value,
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 5),
                Row(
                  children: [
                    Text(
                      'Increase by ',
                      style: TextStyle(
                        color: Colors.grey[600],
                      ),
                    ),
                    Text(
                      change,
                      style: TextStyle(
                        color: isIncrease ? Colors.green : Colors.red,
                      ),
                    ),
                    Text(
                      ' $changeLabel',
                      style: TextStyle(
                        color: Colors.grey[600],
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
