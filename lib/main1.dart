import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

void main() => runApp(const ChartApp()); 

class ChartApp extends StatelessWidget {
  const ChartApp({super.key}); 

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Charts in Flutter',
      debugShowCheckedModeBanner: false, 
      theme: ThemeData(primarySwatch: Colors.blue),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key}); 

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  // Tooltip behavior track korar jonno variable
  late TooltipBehavior _tooltipBehavior;

  @override
  void initState() {
    _tooltipBehavior = TooltipBehavior(enable: true);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('GeeksForGeeks'),
        foregroundColor: Colors.white,
        backgroundColor: Colors.green,
      ),
      body: SfCartesianChart(
        primaryXAxis: const CategoryAxis(), // Constant axis
        title: ChartTitle(text: 'Monthly Covid-19 Infections'),
        legend: const Legend(isVisible: true),
        tooltipBehavior: _tooltipBehavior,
        series: <CartesianSeries<Infections, String>>[
          LineSeries<Infections, String>(
            dataSource: <Infections>[
              Infections('Jan', 35000),
              Infections('Feb', 28000),
              Infections('Mar', 34000),
              Infections('Apr', 32000),
              Infections('May', 40000),
              Infections('Jun', 60000)
            ],
            xValueMapper: (Infections data, _) => data.year,
            yValueMapper: (Infections data, _) => data.victims,
            // Data labels setting
            dataLabelSettings: const DataLabelSettings(isVisible: true),
          )
        ],
      ),
    );
  }
}

class Infections {
  Infections(this.year, this.victims);
  final String year;
  final double victims;
}