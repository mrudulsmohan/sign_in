import 'package:flutter/material.dart';

class Recentorders extends StatelessWidget {
  final bool isIncrease;

  const Recentorders({
    Key? key,
    this.isIncrease = true,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double containerWidth = MediaQuery.of(context).size.width * 0.22;
    double containerHeight = MediaQuery.of(context).size.height * 0.64;

    List<String> orderImages = [
      'lib/assets/images/Group 112.png',
      'lib/assets/images/Group 112.png',
      'lib/assets/images/Group 112.png',
      'lib/assets/images/Group 112.png',
      'lib/assets/images/Group 112.png',
      'lib/assets/images/Group 112.png',
    ];

    List<String> orderTexts = [
      'Smart Phone',
      'White Headphones',
      'Stop Watch',
      'Kikon Camera',
      'Photo Frame',
      'Canvas Shoes'
    ];
    List<String> orderTexts2 = [
      'Mobiles',
      'Music',
      'Electronics',
      'Electronics',
      'Furniture',
      'Footwear'
    ];

    List<String> orderPrice = [
      '\$199.99',
      '\$79.49',
      '\$49.29',
      '\$1699.00',
      '\$29.99',
      '\$89.99'
    ];

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
            offset: const Offset(0, 3),
          ),
        ],
      ),
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Recent Orders',
                style: TextStyle(
                  color: Colors.grey[600],
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                ),
              ),
              DropdownButtonHideUnderline(
                child: DropdownButton<String>(
                  onChanged: (String? newValue) {
                    switch (newValue) {
                      case 'view_all':
                        break;
                      case 'action':
                        break;
                      case 'action 2':
                        break;
                      case 'action 3':
                        break;
                      default:
                        break;
                    }
                  },
                  items: [
                    const DropdownMenuItem<String>(
                      value: 'view_all',
                      child: Row(
                        children: [
                          Icon(Icons.three_p_outlined),
                        ],
                      ),
                    ),
                    const DropdownMenuItem<String>(
                      value: 'action',
                      child: Text('Action'),
                    ),
                    const DropdownMenuItem<String>(
                      value: 'action 2',
                      child: Text('Action 2'),
                    ),
                    const DropdownMenuItem<String>(
                      value: 'action 3',
                      child: Text('Action 3'),
                    ),
                  ],
                ),
              ),
            ],
          ),
          const SizedBox(height: 20),
          Expanded(
            child: ListView.builder(
              itemCount: orderTexts.length,
              itemBuilder: (context, index) {
                return Container(
                  margin: const EdgeInsets.only(bottom: 12),
                  child: Row(
                    children: [
                      Expanded(
                        flex: 2,
                        child: Row(
                          children: [
                            Image.asset(
                              orderImages[index],
                              width: 50,
                              height: 50,
                              fit: BoxFit.cover,
                            ),
                            const SizedBox(width: 12),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(orderTexts2[index]),
                                Text(orderTexts[index]),
                              ],
                            ),
                          ],
                        ),
                      ),
                      Expanded(
                        child: Align(
                          alignment: Alignment.centerRight,
                          child: Text(
                            orderPrice[index],
                            style: TextStyle(
                              color: Colors.green,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
