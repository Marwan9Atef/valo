import 'package:flutter/cupertino.dart';

import '../../data/models/info_item_model.dart';
import 'info_item.dart';

class InfoItemRow extends StatelessWidget {
  const InfoItemRow({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children:  List.generate(3, (index) => Expanded(child: InfoItem(infoItemModel: InfoItemModel.infoList[index],index: index,)),),

    );
  }
}
