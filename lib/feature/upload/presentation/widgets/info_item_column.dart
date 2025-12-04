import 'package:flutter/cupertino.dart';

import '../../data/models/info_item_model.dart';
import 'info_item.dart';

class InfoItemColumn extends StatelessWidget {
  const InfoItemColumn({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children:  List.generate(3, (index) => InfoItem(infoItemModel: InfoItemModel.infoList[index],index: index,isColumn: true,),),

    );
  }
}
