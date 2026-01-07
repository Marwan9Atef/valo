import 'package:flutter/material.dart';

import '../../../../../core/dummy/model/ray_model.dart';
import 'mobile_history_item.dart';

class MobileHistoryList extends StatelessWidget {
  const MobileHistoryList({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      itemBuilder: (context, index) =>MobileHistoryItem(rayModel: RayModel.rayList[index],),itemCount: RayModel.rayList.length,
      separatorBuilder: (context, index) => const SizedBox(height: 17,),

    );
  }
}
