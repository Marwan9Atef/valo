import 'package:flutter/material.dart';

import '../../../../core/theme/app_style.dart';
import '../../data/item_model.dart';
import 'app_bar_item.dart';

class DesktopAppBar extends StatefulWidget {
  const DesktopAppBar({super.key});

  @override
  State<DesktopAppBar> createState() => _DesktopAppBarState();
}

class _DesktopAppBarState extends State<DesktopAppBar> {
  int currentTab=0;
  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Text("X-Ray Search",style: AppStyles.styleRegular20(context),


      ),
      actions: List.generate(2, (index) => InkWell(onTap: () {
        if(currentTab==index)return;
        currentTab=index;
        setState(() {

        });



      },
          splashColor: Colors.transparent,
          highlightColor: Colors.transparent,
        onHighlightChanged: (isHighlight) {


        },


      child: AppBarItem(isActive: currentTab==index,item: ItemModel.items[index],))),




    );
  }
}
