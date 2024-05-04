import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:health_monitor/screens/historyPresure.dart';

class WeightHistory extends StatefulWidget {
  const WeightHistory({super.key});

  @override
  State<WeightHistory> createState() => _WeightHistoryState();
}

class _WeightHistoryState extends State<WeightHistory> {
  List<String> weight = ["94.9", "95.0", "97.8", "95.3", "97.8", "98.5"];
  List<String> bmi = ["25.48", "25.57", "26.24", "26.54", "26.26", "25.48"];
  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView.builder(
        itemCount: weight.length,
        itemBuilder: (context, index) {
          return HistoryContainerWeight(
            index: index,
          );
        },
      ),
    );
  }
}

class HistoryContainerWeight extends StatelessWidget {
  int index;
  HistoryContainerWeight({super.key, required this.index});

  @override
  Widget build(BuildContext context) {
    List<String> weight = ["94.9", "95.0", "97.8", "95.3", "97.8", "98.5"];
    List<String> bmi = ["25.48", "25.57", "26.24", "26.54", "26.26", "25.48"];
    List<int> date = [21, 20, 19, 18, 17, 16];
    return Card(
      color: Colors.white,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "${date[index].toString()} April 2024  19:00",
                  style: const TextStyle(color: Colors.grey),
                ),
                const Row(
                  children: [
                    Icon(
                      Icons.healing,
                      size: 15,
                      color: Colors.grey,
                    ),
                    Icon(
                      Icons.bed,
                      size: 15,
                      color: Colors.grey,
                    )
                  ],
                )
              ],
            ),
            const SizedBox(
              height: 5,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                SizedBox(
                  height: 8,
                  child: SvgPicture.asset("assets/icons/dot.svg"),
                ),
                Text(
                  weight[index].toString(),
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 25,
                  ),
                ),
                const Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Weight",
                      style: TextStyle(color: Colors.black, fontSize: 10),
                    ),
                    Text(
                      "Kg",
                      style: TextStyle(color: Colors.grey, fontSize: 10),
                    )
                  ],
                ),
                const SizedBox(
                  width: 5,
                ),
                Text(
                  bmi[index],
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 25,
                  ),
                ),
                const Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "BMI",
                      style: TextStyle(color: Colors.black, fontSize: 10),
                    ),
                    Text(
                      "kg/cm",
                      style: TextStyle(color: Colors.grey, fontSize: 10),
                    )
                  ],
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
