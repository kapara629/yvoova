import 'package:flutter/material.dart';
import 'package:fl_chart/fl_chart.dart';

class Firstscreen extends StatefulWidget {
  const Firstscreen({Key? key}) : super(key: key);

  @override
  State<Firstscreen> createState() => _FirstscreenState();
}

class _FirstscreenState extends State<Firstscreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Home"),
          actions: [
            IconButton(
              icon: Icon(Icons.menu, color: Colors.blue),
              onPressed: () => {},
            )
          ],
        ),
        body: SingleChildScrollView(
            child: ListView(children: [
          Card(
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
            elevation: 5.0,
            margin: EdgeInsets.all(10.0),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text('Rental Listing'),
                Icon(Icons.menu),
                PieChart(PieChartData())
              ],
            ),
          ),
          Card(
              elevation: 20,
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 10),
                child: Column(
                  children: [
                    const SizedBox(height: 8),
                    const Text(" hii"),
                  ],
                ),
              )),
          Card(
              elevation: 20,
              child: Padding(
                padding: EdgeInsets.all(10),
                child: Column(
                  children: [
                    const SizedBox(height: 8),
                    const Text("hlo"),
                  ],
                ),
              )),
          Card(
              elevation: 20,
              child: Padding(
                padding: EdgeInsets.all(10),
                child: Column(
                  children: [
                    const SizedBox(height: 8),
                    AppBar(
                      backgroundColor: Colors.white,
                      title: Text('Tasks'),
                      actions: [
                        IconButton(onPressed: () => {}, icon: Icon(Icons.menu))
                      ],
                    ),
                    const Text('something went wrong!',
                        style: TextStyle(color: Colors.black)),
                    Text('123'),
                    Text('456')
                  ],
                ),
              )),
          Card(
              elevation: 20,
              child: Padding(
                padding: EdgeInsets.all(10),
                child: Column(
                  children: [
                    const SizedBox(height: 8),
                    const Text("123"),
                  ],
                ),
              )),
          Card(
              elevation: 20,
              child: Padding(
                padding: EdgeInsets.all(10),
                child: Column(
                  children: [
                    const SizedBox(height: 8),
                    const Text("23"),
                  ],
                ),
              )),
          Card(
            elevation: 10,
            child: GridView.count(
                crossAxisCount: 2, mainAxisSpacing: 10, crossAxisSpacing: 10),
          )
        ])));
  }
}
