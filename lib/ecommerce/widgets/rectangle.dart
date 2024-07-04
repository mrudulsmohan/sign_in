import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

class Ecommercegraph extends StatelessWidget {
  final bool isIncrease;

  const Ecommercegraph({
    super.key,
    this.isIncrease = true,
  });

  @override
  Widget build(BuildContext context) {
    double containerWidth = MediaQuery.of(context).size.width * 0.35;
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
                'Earnings',
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
                      case 'export':
                        break;
                      case 'import':
                        break;
                      case 'download':
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
                          Text('View All'),
                          Icon(Icons.arrow_drop_down),
                        ],
                      ),
                    ),
                    const DropdownMenuItem<String>(
                      value: 'export',
                      child: Text('Export'),
                    ),
                    const DropdownMenuItem<String>(
                      value: 'import',
                      child: Text('Import'),
                    ),
                    const DropdownMenuItem<String>(
                      value: 'download',
                      child: Text('Download'),
                    ),
                  ],
                ),
              ),
            ],
          ),
          const SizedBox(height: 20),
          const Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Column(
                children: [
                  Text(
                    'First Half',
                    style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 15,
                    ),
                  ),
                  Text(
                    '\$51.9k',
                    style: TextStyle(
                      fontWeight: FontWeight.w700,
                      fontSize: 18,
                    ),
                  ),
                ],
              ),
              Column(
                children: [
                  Text(
                    'Top Gross',
                    style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 15,
                    ),
                  ),
                  Text(
                    '\$18.32k',
                    style: TextStyle(
                      fontWeight: FontWeight.w700,
                      fontSize: 18,
                    ),
                  ),
                ],
              ),
              Column(
                children: [
                  Text(
                    'Second Half',
                    style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 15,
                    ),
                  ),
                  Text(
                    '\$38k',
                    style: TextStyle(
                      fontWeight: FontWeight.w700,
                      fontSize: 18,
                    ),
                  ),
                ],
              ),
            ],
          ),
          const SizedBox(height: 20),
          Expanded(
            child: BarChart(
              BarChartData(
                alignment: BarChartAlignment.spaceAround,
                maxY: 100,
                barTouchData: BarTouchData(
                  touchTooltipData: BarTouchTooltipData(
                    getTooltipItem: (group, groupIndex, rod, rodIndex) {
                      String month;
                      switch (group.x.toInt()) {
                        case 0:
                          month = 'Jan';
                          break;
                        case 1:
                          month = 'Feb';
                          break;
                        case 2:
                          month = 'Mar';
                          break;
                        case 3:
                          month = 'Apr';
                          break;
                        case 4:
                          month = 'May';
                          break;
                        case 5:
                          month = 'Jun';
                          break;
                        case 6:
                          month = 'Jul';
                          break;
                        case 7:
                          month = 'Aug';
                          break;
                        case 8:
                          month = 'Sep';
                          break;
                        case 9:
                          month = 'Oct';
                          break;
                        case 10:
                          month = 'Nov';
                          break;
                        case 11:
                          month = 'Dec';
                          break;
                        default:
                          month = '';
                      }
                      return BarTooltipItem(
                        '$month\n${rod.toY}',
                        const TextStyle(color: Colors.white),
                      );
                    },
                    // tooltipBgColor: Colors.blueGrey,
                  ),
                ),
                titlesData: FlTitlesData(
                  leftTitles: AxisTitles(
                    sideTitles: SideTitles(
                      showTitles: true,
                      getTitlesWidget: (value, meta) {
                        if (value % 20 == 0) {
                          return Text('${value.toInt()}');
                        }
                        return Container();
                      },
                    ),
                  ),
                  bottomTitles: AxisTitles(
                    sideTitles: SideTitles(
                      showTitles: true,
                      getTitlesWidget: (value, meta) {
                        switch (value.toInt()) {
                          case 0:
                            return const Text('Jan');
                          case 1:
                            return const Text('Feb');
                          case 2:
                            return const Text('Mar');
                          case 3:
                            return const Text('Apr');
                          case 4:
                            return const Text('May');
                          case 5:
                            return const Text('Jun');
                          case 6:
                            return const Text('Jul');
                          case 7:
                            return const Text('Aug');
                          case 8:
                            return const Text('Sep');
                          case 9:
                            return const Text('Oct');
                          case 10:
                            return const Text('Nov');
                          case 11:
                            return const Text('Dec');
                          default:
                            return Container();
                        }
                      },
                    ),
                  ),
                ),
                borderData: FlBorderData(
                  show: false,
                ),
                barGroups: [
                  BarChartGroupData(
                    x: 0,
                    barRods: [
                      BarChartRodData(
                        toY: 70,
                        color: Colors.deepPurple,
                        width: 15,
                      ),
                    ],
                  ),
                  BarChartGroupData(
                    x: 1,
                    barRods: [
                      BarChartRodData(
                        toY: 80,
                        color: Colors.deepPurpleAccent,
                        width: 15,
                      ),
                    ],
                  ),
                  BarChartGroupData(
                    x: 2,
                    barRods: [
                      BarChartRodData(
                        toY: 60,
                        color: Colors.deepPurple,
                        width: 15,
                      ),
                    ],
                  ),
                  BarChartGroupData(
                    x: 3,
                    barRods: [
                      BarChartRodData(
                        toY: 90,
                        color: Colors.deepPurpleAccent,
                        width: 15,
                      ),
                    ],
                  ),
                  BarChartGroupData(
                    x: 4,
                    barRods: [
                      BarChartRodData(
                        toY: 40,
                        color: Colors.deepPurple,
                        width: 15,
                      ),
                    ],
                  ),
                  BarChartGroupData(
                    x: 5,
                    barRods: [
                      BarChartRodData(
                        toY: 80,
                        color: Colors.deepPurpleAccent,
                        width: 15,
                      ),
                    ],
                  ),
                  BarChartGroupData(
                    x: 6,
                    barRods: [
                      BarChartRodData(
                        toY: 70,
                        color: Colors.deepPurple,
                        width: 15,
                      ),
                    ],
                  ),
                  BarChartGroupData(
                    x: 7,
                    barRods: [
                      BarChartRodData(
                        toY: 100,
                        color: Colors.deepPurpleAccent,
                        width: 15,
                      ),
                    ],
                  ),
                  BarChartGroupData(
                    x: 8,
                    barRods: [
                      BarChartRodData(
                        toY: 50,
                        color: Colors.deepPurple,
                        width: 15,
                      ),
                    ],
                  ),
                  BarChartGroupData(
                    x: 9,
                    barRods: [
                      BarChartRodData(
                        toY: 60,
                        color: Colors.deepPurpleAccent,
                        width: 15,
                      ),
                    ],
                  ),
                  BarChartGroupData(
                    x: 10,
                    barRods: [
                      BarChartRodData(
                        toY: 70,
                        color: Colors.deepPurple,
                        width: 15,
                      ),
                    ],
                  ),
                  BarChartGroupData(
                    x: 11,
                    barRods: [
                      BarChartRodData(
                        toY: 120,
                        color: Colors.deepPurpleAccent,
                        width: 15,
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
