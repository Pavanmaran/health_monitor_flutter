import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class NewMeasurementScreen extends StatefulWidget {
  const NewMeasurementScreen({super.key});

  @override
  State<NewMeasurementScreen> createState() => _NewMeasurementScreenState();
}

class _NewMeasurementScreenState extends State<NewMeasurementScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Add new Measurement",
        ),
      ),
      body: Container(
        margin: const EdgeInsets.only(top: 4, left: 3, right: 3, bottom: 3),
        child: Column(
          children: [
            MeasuringContainer(
                "Measuring Arm",
                "Left Hand",
                const Icon(
                  Icons.health_and_safety,
                  color: Colors.red,
                ),
                const Icon(Icons.health_and_safety)),
            MeasuringContainer(
                "Body Position",
                "Sitting",
                const Icon(
                  Icons.person,
                  color: Colors.red,
                ),
                const Icon(Icons.person_2_outlined)),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Material(
                elevation: 2,
                shadowColor: Colors.black,
                borderRadius: BorderRadius.circular(10),
                child: Container(
                  margin: const EdgeInsets.only(left: 3, right: 3, top: 3),
                  child: const Padding(
                    padding: EdgeInsets.all(10),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "SYS",
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 30,
                                  ),
                                ),
                                Text("mmHg"),
                              ],
                            ),
                            Text(
                              "124",
                              style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                                fontSize: 30,
                                decoration: TextDecoration.underline,
                              ),
                            )
                          ],
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "DIA",
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 30,
                                  ),
                                ),
                                Text("mmHg"),
                              ],
                            ),
                            Text(
                              "80",
                              style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                                fontSize: 30,
                                decoration: TextDecoration.underline,
                              ),
                            )
                          ],
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Pulse",
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 30,
                                  ),
                                ),
                                Text("bpm"),
                              ],
                            ),
                            Text(
                              "69",
                              style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                                fontSize: 30,
                                decoration: TextDecoration.underline,
                              ),
                            )
                          ],
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Divider(
                          thickness: 2,
                          color: Colors.black38,
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                Icon(
                                  Icons.calendar_month,
                                  color: Colors.grey,
                                ),
                                SizedBox(
                                  width: 5,
                                ),
                                Text(
                                  "21/04/2024",
                                  style: TextStyle(
                                    color: Colors.grey,
                                  ),
                                )
                              ],
                            ),
                            Row(
                              children: [
                                Icon(
                                  Icons.timelapse,
                                  color: Colors.grey,
                                ),
                                SizedBox(
                                  width: 5,
                                ),
                                Text(
                                  "14:25",
                                  style: TextStyle(color: Colors.grey),
                                )
                              ],
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 5,
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Container(
              margin: const EdgeInsets.only(left: 5, right: 5),
              width: double.infinity,
              child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.red,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10))),
                  onPressed: () {},
                  child: const Text(
                    "Save",
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.white,
                    ),
                  )),
            )
          ],
        ),
      ),
    );
  }

  Padding MeasuringContainer(
      String title, String subtitle, Icon icon1, Icon icon2) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Material(
        elevation: 1,
        shadowColor: Colors.black,
        borderRadius: BorderRadius.circular(10),
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: SizedBox(
            width: double.infinity,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      title,
                      style: const TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                      ),
                    ),
                    Text(
                      subtitle,
                    ),
                  ],
                ),
                Row(
                  children: [
                    SizedBox(
                        height: 40,
                        child: CircleAvatar(
                          backgroundColor: Colors.white,
                          child: icon1,
                        )),
                    SizedBox(
                        height: 40,
                        child: CircleAvatar(
                          backgroundColor: Colors.white,
                          child: icon2,
                        )),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
