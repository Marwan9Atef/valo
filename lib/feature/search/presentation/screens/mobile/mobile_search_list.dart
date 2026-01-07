import 'package:flutter/material.dart';
import 'mobile_search_item.dart';
import '../../../../../core/dummy/model/ray_model.dart';
class MobileSearchList extends StatelessWidget {
  const MobileSearchList({
    super.key,

  });

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      itemBuilder: (context, index) =>MobileSearchItem(rayModel: RayModel.rayList[index],),itemCount: RayModel.rayList.length,
      separatorBuilder: (context, index) => const SizedBox(height: 17,),

    );
  }
}