import 'package:flutter/material.dart';
import 'desktop_search_item.dart' show DesktopSearchItem;

class DesktopSearchItemList extends StatelessWidget {
  const DesktopSearchItemList({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(itemBuilder: (context, index) => DesktopSearchItem(),itemCount: 3,);
  }
}
