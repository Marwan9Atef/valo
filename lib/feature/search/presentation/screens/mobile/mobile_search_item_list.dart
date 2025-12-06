import 'package:flutter/cupertino.dart';
import 'package:valo/feature/search/presentation/screens/mobile/mobile_search_item.dart';
import '../../../../../core/widget/mobile_list.dart';

class MobileSearchItemList extends StatelessWidget {
  const MobileSearchItemList({super.key,});


  @override
  Widget build(BuildContext context) {
    return const MobileList(child: MobileSearchItem(),);
  }
}

