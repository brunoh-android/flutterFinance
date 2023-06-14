import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

class Chart extends StatelessWidget {
  int indexx;
  Chart({Key? key, required this.indexx}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 300,
      child: SfCartesianChart(
        primaryXAxis: CategoryAxis(),
        series: <LineSeries<SalesData, String>>[
          LineSeries<SalesData, String>(
            dataSource: week(),
            xValueMapper: (SalesData sales, _) => sales.year,
            yValueMapper: (SalesData sales, _) => sales.sales,
          )
        ],
      ),
    );
  }

  List<SalesData> week() {
    List<SalesData> data = [
      SalesData('Mon', 20),
      SalesData('Tue', 30),
      SalesData('Wed', 25),
      SalesData('Thu', 40),
      SalesData('Fri', 35),
      SalesData('Sat', 50),
      SalesData('Sun', 45),
    ];
    return data;
  }
}

class SalesData {
  SalesData(this.year, this.sales);
  final String year;
  final int sales;
}
