import 'package:flutter/material.dart';
import '../../../../../core/widget/desktop_list.dart';
import 'desktop_search_item.dart' show DesktopSearchItem;

class DesktopSearchItemList extends StatelessWidget {
  const DesktopSearchItemList({super.key});

  @override
  Widget build(BuildContext context) {
    return DesktopList(child:DesktopSearchItem() ,);
  }
}


