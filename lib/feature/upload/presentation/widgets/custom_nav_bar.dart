import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:valo/feature/home/presentation/cubit/page_cubit.dart';

import '../../data/models/nav_model.dart';
import 'nav_bar_item.dart';

class CustomNavBar extends StatefulWidget {
  const CustomNavBar({super.key});

  @override
  State<CustomNavBar> createState() => _CustomNavBarState();
}

class _CustomNavBarState extends State<CustomNavBar> {


  @override
  Widget build(BuildContext context) {
    return BlocBuilder<PageCubit, int>(
      builder: (context, currentTab) {
        return NavigationBar(
          selectedIndex: currentTab,
          onDestinationSelected: (index) {
            if (index == currentTab) {
              return;
            }
            context.read<PageCubit>().setValue(index);

          },
          destinations: NavModel.navList
              .map((e) => NavBarItem(navModel: e))
              .toList(),

        );
      },
    );
  }
}
