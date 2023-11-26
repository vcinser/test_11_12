import 'package:flutter/material.dart';
import 'package:pie_chart/pie_chart.dart';

class Chart extends StatelessWidget {
  Chart({super.key});

  final dataMap = <String, double>{
    "Flutter": 5,
    "React": 3,
    "Xamarin": 2,
    "Ionic": 2,
  };

 final colorList = <Color>[
    const Color(0xfffdcb6e),
    const Color(0xff0984e3),
    const Color(0xfffd79a8),
    const Color(0xffe17055),
    const Color(0xff6c5ce7),
  ];
  
  @override
  Widget build(BuildContext context) {
    return PieChart(
                            dataMap: dataMap,
                            chartType: ChartType.ring,
                            baseChartColor: Colors.grey[50]!.withOpacity(0.15),
                            colorList: colorList,
                            chartValuesOptions: const ChartValuesOptions(
                              showChartValuesInPercentage: true,
                            ),
                            legendOptions: const LegendOptions(
                              showLegends: false
                            ),
                            totalValue: 20,
                          );
  }
}