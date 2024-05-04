import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:health_monitor/screens/pressureGraph.dart';
import 'package:health_monitor/screens/weightGraph.dart';
import 'package:health_monitor/tabItem.dart';

class Graph extends StatefulWidget {
  const Graph({super.key});

  @override
  State<Graph> createState() => _GraphState();
}

class _GraphState extends State<Graph> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          title: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SvgPicture.asset(
                "assets/icons/health.svg",
              ),
              const SizedBox(
                width: 10,
              ),
              const Text(
                "Health Monitor",
              ),
            ],
          ),
          centerTitle: true,
          bottom: PreferredSize(
            preferredSize: const Size.fromHeight(40),
            child: ClipRRect(
              borderRadius: const BorderRadius.all(Radius.circular(10)),
              child: Container(
                height: 40,
                margin: const EdgeInsets.symmetric(horizontal: 20),
                decoration: BoxDecoration(
                  borderRadius: const BorderRadius.all(Radius.circular(10)),
                  color: Colors.red.shade100,
                ),
                child: const TabBar(
                  indicatorSize: TabBarIndicatorSize.tab,
                  dividerColor: Colors.transparent,
                  indicator: BoxDecoration(
                    color: Colors.red,
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                  ),
                  labelColor: Colors.white,
                  unselectedLabelColor: Colors.black54,
                  tabs: [
                    TabItem(title: 'Pressure', count: 6),
                    TabItem(title: 'Weight', count: 3),
                  ],
                ),
              ),
            ),
          ),
        ),
        body: const TabBarView(
          children: [
            PressureGraph(),
            WeightGraph(),
          ],
        ),
      ),
    );
  }
}
