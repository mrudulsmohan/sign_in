import 'package:flutter/material.dart';
import 'package:responsive_framework/responsive_framework.dart';
import 'package:sign_in/ecommerce/widgets/app.dart';
import 'package:sign_in/ecommerce/widgets/bigsavingdays.dart';
import 'package:sign_in/ecommerce/widgets/ecommercecard..dart';
import 'package:sign_in/ecommerce/widgets/recentorders.dart';

import 'package:sign_in/ecommerce/widgets/rectangle.dart';

class Ecommercehome extends StatelessWidget {
  const Ecommercehome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;
    double screenWidth = screenSize.width;
    double screenHeight = screenSize.height;

    double containerWidth = screenWidth *
        (ResponsiveBreakpoints.of(context).largerThan(TABLET) ? 0.3 : 0.8);
    double containerHeight = screenHeight *
        (ResponsiveBreakpoints.of(context).largerThan(TABLET) ? 0.75 : 0.95);

    return Scaffold(
      drawer: const Drawer(),
      appBar:
          const EcommerceAppbar(), // Remove `const` if parameters are needed
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Ecommerce',
                style: TextStyle(
                  fontSize: screenWidth < 600
                      ? 18.0
                      : (screenWidth < 1200 ? 22.0 : 24.0),
                  fontWeight: FontWeight.w800,
                ),
              ),
              const SizedBox(height: 15),
              const Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Column(
                    children: [
                      Row(
                        children: [
                          EcommerceCard(
                            icon: Icons.shopping_bag,
                            title: 'Total Sales',
                            value: '14,732',
                            change: '+4.2%',
                            changeLabel: 'this month',
                            isIncrease: true,
                          ),
                          SizedBox(width: 16),
                          EcommerceCard(
                            icon: Icons.receipt,
                            title: 'Total Expenses',
                            value: '\$28,346.00',
                            change: '+12.0%',
                            changeLabel: 'this month',
                            isIncrease: true,
                          ),
                        ],
                      ),
                      SizedBox(height: 16),
                      Row(
                        children: [
                          EcommerceCard(
                            icon: Icons.person,
                            title: 'Total Visitors',
                            value: '1,29,368',
                            change: '-7.6%',
                            changeLabel: 'this month',
                            isIncrease: false,
                          ),
                          SizedBox(width: 16),
                          EcommerceCard(
                            icon: Icons.shopping_cart,
                            title: 'Total Orders',
                            value: '35,367',
                            change: '+2.5%',
                            changeLabel: 'this month',
                            isIncrease: true,
                          ),
                        ],
                      ),
                      SizedBox(height: 16),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Bigsavingdays(),
                          SizedBox(width: 16),
                          Recentorders()
                        ],
                      )
                    ],
                  ),
                  SizedBox(width: 16),
                  Ecommercegraph()
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
