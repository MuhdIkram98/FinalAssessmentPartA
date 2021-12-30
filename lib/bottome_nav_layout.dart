import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class BottomNavigationBarLayout extends StatefulWidget {
  const BottomNavigationBarLayout({Key? key}) : super(key: key);

  @override
  _BottomNavigationBarLayoutState createState() =>
      _BottomNavigationBarLayoutState();
}

class _BottomNavigationBarLayoutState extends State<BottomNavigationBarLayout> {
  @override
  Widget build(BuildContext context) {
    var _selectedIndex = 0;
    var bottomTextStyle =
        GoogleFonts.inter(fontSize: 12, fontWeight: FontWeight.w500);

    void _onItemTapped(int index) {
      setState(() {
        _selectedIndex = index;
      });
    }

    return Container(
      height: 64,
      decoration: BoxDecoration(
          color: Colors.black26,
          boxShadow: [
            BoxShadow(
                color: Colors.grey.withOpacity(0.2),
                spreadRadius: 3,
                blurRadius: 20,
                offset: Offset(0, 5))
          ],
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(24),
            topRight: Radius.circular(24),
          )),
      child: BottomNavigationBar(
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
              icon: _selectedIndex == 1
                  ? Icon(Icons.home)
                  : Icon(Icons.home_filled),
              label: "text"),
          BottomNavigationBarItem(
              icon: _selectedIndex == 2
                  ? Icon(Icons.ac_unit)
                  : Icon(Icons.ac_unit_outlined),
              label: "text"),
        ],
        currentIndex: _selectedIndex,
        //selectedItemColor: Colors.white,
        //unselectedItemColor: Colors.amberAccent,
        onTap: _onItemTapped,
        backgroundColor: Colors.transparent,
        type: BottomNavigationBarType.fixed,
        showSelectedLabels: true,
        elevation: 0,
      ),
    );
  }
}
