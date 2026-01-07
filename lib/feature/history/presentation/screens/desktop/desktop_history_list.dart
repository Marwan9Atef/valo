import 'package:flutter/cupertino.dart';

import '../../../../../core/dummy/model/ray_model.dart';
import 'disktop_history_item.dart';

class DesktopHistoryList extends StatelessWidget {
  const DesktopHistoryList({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(itemBuilder: (context, index) => DesktopHistoryItem(rayModel: RayModel.rayList[index],),itemCount: RayModel.rayList.length,);
  }
}
