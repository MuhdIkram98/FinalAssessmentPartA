import 'package:flutter/material.dart';
import 'bottome_nav_layout.dart';
import 'device.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueGrey,
        title: Text("Layout"),
        elevation: 0,
      ),
      backgroundColor: Colors.blueGrey,
      bottomNavigationBar: BottomNavigationBarLayout(),
      body: Container(
          child: (Row(
        children: [
          Devices(
            title: 'Outdoor',
            room: 0,
          ),
          Devices(
            title: 'Toilet',
            room: 1,
          )
        ],
      ))),
    );
  }
}
