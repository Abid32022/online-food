import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:thestart/views/bottom_navigation_bar/research_Screen.dart';

import '../../utils/size_config.dart';
import '../../widgets/app_bars.dart';
import 'home.dart';

class bottomNavigationbar extends StatefulWidget {
  const bottomNavigationbar({Key? key}) : super(key: key);

  @override
  State<bottomNavigationbar> createState() => _bottomNavigationbarState();
}

class _bottomNavigationbarState extends State<bottomNavigationbar> {
  int currentIndex = 0;
  @override

  final screens = [
    home(),
    Reasearch(),
  Container(child: Center(child: Text("kom"))),
  Container(child: Center(child: Text("lome"))),
  ];

  @override
  Widget build(BuildContext context) {
    MySize().init(context);
    return Scaffold(
      body: screens[currentIndex],
      bottomNavigationBar: BottomNavigationBar(
      fixedColor: Colors.pink,
      showSelectedLabels: true,
        type: BottomNavigationBarType.fixed,

        currentIndex: currentIndex,
        onTap: (a){
          setState(() {
            currentIndex = a;
          });
        },

        items: [
          BottomNavigationBarItem(icon: Image.asset('assets/icons/home.png',height: 20,color: currentIndex == 0 ? Colors.pink: Colors.grey,),label: 'Welcome',),
          BottomNavigationBarItem(icon: Image.asset('assets/icons/bottomsearch.png',height: 20,color: currentIndex == 1 ? Colors.pink: Colors.grey,),label: 'Research'),
          BottomNavigationBarItem(icon: Image.asset('assets/icons/bottombag.png',height: 20,color: currentIndex == 2 ? Colors.pink: Colors.grey,),label: 'Orders'),
          BottomNavigationBarItem(icon: Image.asset('assets/icons/person.png',height: 20,color: currentIndex == 3 ? Colors.pink: Colors.grey,),label: 'Profile'),
        ],
      ),
    );
  }
}
