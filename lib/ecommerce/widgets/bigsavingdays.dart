import 'package:flutter/material.dart';

class Bigsavingdays extends StatelessWidget {
  final bool isIncrease;

  const Bigsavingdays({
    super.key,
    this.isIncrease = true,
  });

  @override
  Widget build(BuildContext context) {
    double containerWidth = MediaQuery.of(context).size.width * 0.22;
    double containerHeight = MediaQuery.of(context).size.height * 0.6;

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
            child: Icon(Icons.add_ic_call, color: Colors.black),
          ),
          SizedBox(width: 10),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'sdsd',
                  style: TextStyle(
                    color: Colors.grey[600],
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 5),
                Text(
                  'car',
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
                      'jkhjk',
                      style: TextStyle(
                        color: isIncrease ? Colors.green : Colors.red,
                      ),
                    ),
                    Text(
                      'ssss',
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
