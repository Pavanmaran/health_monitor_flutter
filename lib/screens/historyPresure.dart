import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class PressureHistory extends StatefulWidget {
  const PressureHistory({super.key});

  @override
  State<PressureHistory> createState() => _PressureHistoryState();
}

class _PressureHistoryState extends State<PressureHistory> {
  List<int> sys = [120, 131, 124, 140, 118, 120, 139, 120, 116];
  List<int> dio = [80, 89, 81, 90, 75, 80, 78, 92, 83];
  List<int> pulse = [68, 78, 70, 74, 65, 68, 70, 72, 80];

  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView.builder(
        itemCount: sys.length,
        itemBuilder: (context, index) {
          return HistoryContainer(
            index: index,
          );
        },
      ),
    );
  }
}

class HistoryContainer extends StatelessWidget {
  int index;
  HistoryContainer({
    super.key,
    required this.index,
  });

  @override
  Widget build(BuildContext context) {
    List<int> sys = [120, 131, 124, 140, 118, 120, 139, 120, 116];
    List<int> dio = [80, 89, 81, 90, 75, 80, 78, 92, 83];
    List<int> pulse = [68, 78, 70, 74, 65, 68, 70, 72, 80];
    List<int> date = [21, 20, 19, 18, 17, 16, 15, 14, 13];

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
                  sys[index].toString(),
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 25,
                  ),
                ),
                const Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "SYS",
                      style: TextStyle(color: Colors.grey, fontSize: 10),
                    ),
                    Text(
                      "mmHg",
                      style: TextStyle(color: Colors.grey, fontSize: 10),
                    )
                  ],
                ),
                const SizedBox(
                  width: 5,
                ),
                Text(
                  dio[index].toString(),
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 25,
                  ),
                ),
                const Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "DIA",
                      style: TextStyle(color: Colors.grey, fontSize: 10),
                    ),
                    Text(
                      "mmHg",
                      style: TextStyle(color: Colors.grey, fontSize: 10),
                    )
                  ],
                ),
                const SizedBox(
                  width: 5,
                ),
                Text(
                  pulse[index].toString(),
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 25,
                  ),
                ),
                const Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Pulse",
                      style: TextStyle(color: Colors.grey, fontSize: 10),
                    ),
                    Text(
                      "bpm",
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
