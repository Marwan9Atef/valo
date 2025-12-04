import 'package:flutter/material.dart';

import '../../data/models/nav_model.dart';
import 'nav_bar_item.dart';

class CustomNavBar extends StatefulWidget {
  const CustomNavBar({super.key});

  @override
  State<CustomNavBar> createState() => _CustomNavBarState();
}

class _CustomNavBarState extends State<CustomNavBar> {
  int _currentPage=0;
  @override
  Widget build(BuildContext context) {
    return NavigationBar(
      selectedIndex: _currentPage,
    onDestinationSelected: (index){
      if(index==_currentPage){
        return;
      }
      setState(() {
        _currentPage=index;
      });

    },
      destinations: NavModel.navList.map((e) => NavBarItem(navModel: e)).toList(),

    );
  }
}
