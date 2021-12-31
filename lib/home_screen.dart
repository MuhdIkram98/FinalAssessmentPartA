import 'package:flutter/material.dart';
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
      body: Container(
          child: (Wrap(
        direction: Axis.vertical,
        children: [
          Devices(
            title: 'Patio',
            room: 0,
          ),
          Devices(
            title: 'Toilet',
            room: 1,
          ),
          Devices(
            title: 'Living Room',
            room: 2,
          ),
          Devices(
            title: 'Bedroom',
            room: 3,
          ),
          Devices(
            title: 'Kitchen',
            room: 4,
          ),
          Devices(
            title: 'Garage',
            room: 5,
          ),
        ],
      ))),
    );
  }
}
