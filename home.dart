import 'package:flutter/material.dart';
import 'package:pp_screen/contact_list.dart';
import 'package:pp_screen/profile.dart';

class HomeScreen extends StatefulWidget {
  HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int seleectedIndex = 0;

  List<Widget> screen = [
    Profile(),
    ContactList(),

    // Container(
    //   width: double.infinity,
    //   height: double.infinity,
    //   color: Colors.orange,
    // ),
    Container(
      width: double.infinity,
      height: double.infinity,
      color: Colors.grey,
    ),
    Container(
      width: double.infinity,
      height: double.infinity,
      color: Colors.grey,
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("BottomNavigation"),
      ),
      body: screen.elementAt(seleectedIndex),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: "Profile",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.phone),
            label: "calllist",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: "home",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: "search",
          ),
        ],
        currentIndex: seleectedIndex,
        selectedItemColor: Colors.green,
        unselectedItemColor: Colors.red,
        selectedFontSize: 28,
        unselectedFontSize: 20,
        iconSize: 40,
        backgroundColor: Colors.black,
        onTap: (int index) {
          //print(index);
          setState(() {
            seleectedIndex = index;
          });
        },
      ),
    );
  }
}
