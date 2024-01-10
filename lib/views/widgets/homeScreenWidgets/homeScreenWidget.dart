import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';
import 'package:velocity_x/velocity_x.dart';
import 'package:vertical_percent_indicator/vertical_percent_indicator.dart';

import '../../../constants/icons.dart';
import '../../screens/HomeScreens/notification.dart';

class BmiWidget extends StatelessWidget {
  const BmiWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height * 0.16,
      decoration: ShapeDecoration(
        gradient: LinearGradient(
          begin: Alignment(-1.00, 0.08),
          end: Alignment(1, -0.08),
          colors: [Color(0xFF92A3FD), Color(0xFF9DCEFF)],
        ),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(22),
        ),
        shadows: [
          BoxShadow(
            color: Color(0x4C95ADFE),
            blurRadius: 22,
            offset: Offset(0, 10),
            spreadRadius: 0,
          )
        ],
      ),
      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("BMI(Body Mass Index)")
                    .text
                    .color(Colors.white)
                    .size(18)
                    .bold
                    .make(),
                10.heightBox,
                Text("You have a normal weight")
                    .text
                    .size(12)
                    .color(Colors.white)
                    .make(),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.02,
                ),
                Container(
                  width: 95,
                  height: 35,
                  decoration: ShapeDecoration(
                    gradient: LinearGradient(
                      begin: Alignment(-1.00, 0.08),
                      end: Alignment(1, -0.08),
                      colors: [Color(0xFFC58BF2), Color(0xFFEEA4CE)],
                    ),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(50),
                    ),
                  ),
                  child: Center(
                    child: Text("View More")
                        .text
                        .size(10)
                        .color(Colors.white)
                        .make(),
                  ),
                ),
              ],
            ),
          ),
          10.heightBox,
        ],
      ),
    );
  }
}

class TargetWidget extends StatefulWidget {
  const TargetWidget({super.key});

  @override
  State<TargetWidget> createState() => _TargetWidgetState();
}

class _TargetWidgetState extends State<TargetWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height * 0.07,
      decoration: ShapeDecoration(
        gradient: LinearGradient(
          begin: Alignment(-1.00, 0.08),
          end: Alignment(1, -0.08),
          colors: [
            Color(0xFF92A3FD).withOpacity(0.3),
            Color(0xFF9DCEFF).withOpacity(0.3)
          ],
        ),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(16),
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          const Text(
            'Target today',
          ).text.color(Colors.black).size(16).bold.make(),
          100.widthBox,
          Container(
            width: 78,
            height: 38,
            decoration: ShapeDecoration(
              gradient: LinearGradient(
                begin: Alignment(-1.00, 0.08),
                end: Alignment(1, -0.08),
                colors: [Color(0xFF92A3FD), Color(0xFF9DCEFF)],
              ),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(16),
              ),
            ),
            child: Center(
              child: Text(
                'Check',
              ).text.size(13).bold.make(),
            ),
          )
        ],
      ),
    );
  }
}

class ChartWidget extends StatefulWidget {
  const ChartWidget({super.key});

  @override
  State<ChartWidget> createState() => _ChartWidgetState();
}

class _ChartWidgetState extends State<ChartWidget> {
  List<FlSpot> chartData = [
    FlSpot(0, 1),
    FlSpot(1, 3),
    FlSpot(2, 10),
    FlSpot(3, 7),
    FlSpot(4, 12),
    FlSpot(5, 13),
    FlSpot(6, 17),
    FlSpot(7, 15),
    FlSpot(8, 20),
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10),
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height * 0.2,
      decoration: ShapeDecoration(
        gradient: LinearGradient(
          begin: Alignment(-1.00, 0.08),
          end: Alignment(1, -0.08),
          colors: [
            Color(0xFF92A3FD).withOpacity(0.3),
            Color(0xFF9DCEFF).withOpacity(0.3)
          ],
        ),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(16),
        ),
      ),
      child: Stack(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  'Heart Rate',
                ).text.size(20).bold.make(),
                10.heightBox,
                const Text(
                  'Heart RPM',
                ).text.size(12).color(Colors.blueAccent).make(),
              ],
            ),
          ),
          LineChart(
            LineChartData(
              lineTouchData: LineTouchData(
                touchTooltipData: LineTouchTooltipData(
                  tooltipBgColor: Colors.blueAccent,
                ),
              ),
              gridData: FlGridData(
                show: false,
              ),
              titlesData: FlTitlesData(
                show: false,
              ),
              borderData: FlBorderData(
                show: false,
              ),
              lineBarsData: [
                LineChartBarData(
                  spots: chartData,
                  isCurved: true,
                  color: Colors.blueAccent,
                  barWidth: 2,
                  isStrokeCapRound: true,
                  dotData: FlDotData(
                    show: false,
                  ),
                  belowBarData: BarAreaData(
                    show: false,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class VerticalIndecatorWidget extends StatelessWidget {
  const VerticalIndecatorWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.44,
      height: 420,
      decoration: ShapeDecoration(
        color: Colors.white,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
        ),
        shadows: [
          BoxShadow(
            color: Color(0x0C1D242A),
            blurRadius: 40,
            offset: Offset(0, 10),
            spreadRadius: 0,
          )
        ],
      ),
      child: Column(
        children: [
          10.heightBox,
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              8.widthBox,
              const VerticalBarIndicator(
                percent: 0.5,
                width: 20,
                color: [Colors.blueAccent, Colors.blueAccent],
                height: 380,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        'Water Intake',
                      ).text.size(14).bold.make(),
                      10.heightBox,
                      const Text(
                        '4 Liters',
                      ).text.size(8).color(Colors.blueAccent).make(),
                    ],
                  ),
                  30.heightBox,
                  const Text(
                    'Real time updates',
                  ).text.size(6).bold.make(),
                  10.heightBox,
                  const Text(
                    '6 am - 8 am',
                  ).text.size(5).color(Colors.grey).make(),
                  const Text(
                    '600ml',
                  ).text.size(5).color(Colors.redAccent).make(),
                  10.heightBox,
                  const Text(
                    '8 am - 10 am',
                  ).text.size(5).color(Colors.grey).make(),
                  const Text(
                    '600ml',
                  ).text.size(5).color(Colors.redAccent).make(),
                  10.heightBox,
                  const Text(
                    '10 am - 12 pm',
                  ).text.size(5).color(Colors.grey).make(),
                  const Text(
                    '600ml',
                  ).text.size(5).color(Colors.redAccent).make(),
                  10.heightBox,
                  const Text(
                    '12 pm - 2 pm',
                  ).text.size(5).color(Colors.grey).make(),
                  const Text(
                    '600ml',
                  ).text.size(5).color(Colors.redAccent).make(),
                  10.heightBox,
                  const Text(
                    '2 pm - 4 pm',
                  ).text.size(5).color(Colors.grey).make(),
                  const Text(
                    '600ml',
                  ).text.size(5).color(Colors.redAccent).make(),
                  10.heightBox,
                  const Text(
                    '4 pm - now',
                  ).text.size(5).color(Colors.grey).make(),
                  const Text(
                    '600ml',
                  ).text.size(5).color(Colors.redAccent).make(),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class SleepWidget extends StatefulWidget {
  const SleepWidget({super.key});

  @override
  State<SleepWidget> createState() => _SleepWidgetState();
}

class _SleepWidgetState extends State<SleepWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.44,
      height: 200,
      decoration: ShapeDecoration(
        color: Colors.white,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
        ),
        shadows: [
          BoxShadow(
            color: Color(0x111D1617),
            blurRadius: 40,
            offset: Offset(0, 10),
            spreadRadius: 0,
          )
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text("Sleep").text.size(16).bold.make(),
          10.heightBox,
          Column(
            children: [
              const Text(
                'Sleep Time',
              ).text.size(12).color(Colors.blueAccent).make(),
              10.heightBox,
              const Text(
                '8 Hours',
              ).text.size(17).bold.make(),
            ],
          ),
          waveVector,
        ],
      ),
    );
  }
}

class CaloriesWidget extends StatefulWidget {
  const CaloriesWidget({super.key});

  @override
  State<CaloriesWidget> createState() => _CaloriesWidgetState();
}

class _CaloriesWidgetState extends State<CaloriesWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
        width: MediaQuery.of(context).size.width * 0.44,
        height: 200,
        decoration: ShapeDecoration(
          color: Colors.white,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20),
          ),
          shadows: [
            BoxShadow(
              color: Color(0x111D1617),
              blurRadius: 40,
              offset: Offset(0, 10),
              spreadRadius: 0,
            )
          ],
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Calories").text.size(16).bold.make(),
            10.heightBox,
            CircularPercentIndicator(
              radius: 120.0,
              lineWidth: 13.0,
              animation: true,
              percent: 0.5,
              center: Text(
                "200KCal\n     left",
                style: TextStyle(fontSize: 15.0),
              ),
              circularStrokeCap: CircularStrokeCap.round,
              progressColor: Colors.blueAccent,
            ),
          ],
        ));
  }
}
