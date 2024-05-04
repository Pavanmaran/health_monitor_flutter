import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

class PressureGraph extends StatefulWidget {
  const PressureGraph({super.key});

  @override
  State<PressureGraph> createState() => _PressureGraphState();
}

class _PressureGraphState extends State<PressureGraph> {
  List<int> sys = [120, 131, 124, 140, 118, 120, 139, 120, 116];
  List<int> dio = [80, 89, 81, 90, 75, 80, 78, 92, 83];
  List<int> pulse = [68, 78, 70, 74, 65, 68, 70, 72, 80];
  List<int> date = [21, 20, 19, 18, 17, 16, 15, 14, 13];

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        height: MediaQuery.of(context).size.height / 2,
        width: double.infinity,
        child: Card(
          color: Colors.white,
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    "SYS - DIA",
                    style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.share,
                    ),
                  )
                ],
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: LineChart(
                    chartData,
                  ),
                ),
              ),
            ],
          ),
        ));
  }

  LineChartData get chartData => LineChartData(
        gridData: gridData,
        borderData: borderData,
        lineTouchData: lineTouchData,
        lineBarsData: lineBarsData,
        titlesData: titlesData,
        betweenBarsData: [
          BetweenBarsData(
            fromIndex: 0,
            toIndex: 1,
            color: const Color(0xFFA9907E).withOpacity(.3),
          ),
        ],
        minY: 40,
        maxY: 200,
      );

  FlGridData get gridData => FlGridData(
        show: true,
        drawVerticalLine: false,
        horizontalInterval: 1,
        checkToShowHorizontalLine: (double value) {
          return value == 60 ||
              value == 80 ||
              value == 100 ||
              value == 120 ||
              value == 140 ||
              value == 160 ||
              value == 180;
        },
      );

  FlBorderData get borderData => FlBorderData(show: false);

  LineTouchData get lineTouchData => const LineTouchData(
        enabled: false,
      );

  List<LineChartBarData> get lineBarsData => [
        firstLineBars,
        secondLineBars,
      ];

  LineChartBarData get firstLineBars => LineChartBarData(
        isCurved: true,
        dotData: const FlDotData(show: false),
        belowBarData: BarAreaData(show: false),
        color: const Color(0xFF5F6F52),
        barWidth: 3,
        spots: const [
          FlSpot(21, 120),
          FlSpot(20, 131),
          FlSpot(19, 124),
          FlSpot(18, 140),
          FlSpot(17, 118),
          FlSpot(16, 120),
          FlSpot(15, 139),
          FlSpot(14, 120),
          FlSpot(13, 116),
        ],
      );

  LineChartBarData get secondLineBars => LineChartBarData(
        isCurved: false,
        dotData: const FlDotData(show: false),
        color: const Color(0xFFCD5C08),
        barWidth: 3,
        spots: const [
          FlSpot(21, 120),
          FlSpot(20, 131),
          FlSpot(19, 124),
          FlSpot(18, 140),
          FlSpot(17, 118),
          FlSpot(16, 120),
          FlSpot(15, 139),
          FlSpot(14, 120),
          FlSpot(13, 116),
        ],
      );

  FlTitlesData get titlesData => FlTitlesData(
        leftTitles: AxisTitles(
          sideTitles: SideTitles(
            showTitles: true,
            getTitlesWidget: leftTitlesWidget,
            interval: 20,
            reservedSize: 30,
          ),
        ),
        topTitles: const AxisTitles(
          sideTitles: SideTitles(showTitles: false),
        ),
        rightTitles: const AxisTitles(
          sideTitles: SideTitles(showTitles: false),
        ),
        bottomTitles: AxisTitles(
          sideTitles: SideTitles(
            showTitles: true,
            interval: 1,
            getTitlesWidget: bottomTitlesWidget,
          ),
        ),
      );

  Widget leftTitlesWidget(double value, TitleMeta meta) {
    const style = TextStyle(fontSize: 12, fontWeight: FontWeight.bold);
    return SideTitleWidget(
      axisSide: meta.axisSide,
      child: Text(
        value.toStringAsFixed(0),
        style: style,
      ),
    );
  }

  Widget bottomTitlesWidget(double value, TitleMeta meta) {
    const style = TextStyle(fontSize: 12, fontWeight: FontWeight.bold);
    String text;
    switch (value.toInt()) {
      case 21:
        text = '21 \nApril';
        break;
      case 20:
        text = '20 \nApril';
        break;
      case 19:
        text = '19 \nApril';
        break;
      case 18:
        text = '18 \nApril';
        break;
      case 17:
        text = '17 \nApril';
        break;
      case 16:
        text = '16 \nApril';
        break;
      case 15:
        text = '15 \nApril';
        break;
      case 14:
        text = '14 \nApril';
        break;
      case 13:
        text = '13 \nApril';
        break;
      case 9:
        text = 'Oct';
        break;
      case 10:
        text = 'Nov';
        break;
      case 11:
        text = 'Dec';
        break;
      default:
        return Container();
    }
    return SideTitleWidget(
      axisSide: meta.axisSide,
      space: 3,
      child: Text(
        text,
        style: style,
      ),
    );
  }
}
