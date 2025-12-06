import 'package:flutter/cupertino.dart';
import 'package:valo/feature/search/presentation/screens/mobile/mobile_search_item.dart';

class MobileSearchItemList extends StatelessWidget {
  const MobileSearchItemList({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      itemBuilder: (context, index) => const MobileSearchItem(),itemCount: 3,
      separatorBuilder: (context, index) => const SizedBox(height: 17,),

    );
  }
}
