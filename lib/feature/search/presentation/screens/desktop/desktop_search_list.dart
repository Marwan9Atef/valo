import 'package:flutter/cupertino.dart';
import 'package:valo/core/dummy/model/ray_model.dart';

import 'desktop_search_item.dart';

class DesktopSearchList extends StatelessWidget {

  const DesktopSearchList({
    super.key,

  });


  @override
  Widget build(BuildContext context) {
    return ListView.builder(itemBuilder: (context, index) => DesktopSearchItem(rayModel: RayModel.rayList[index],),itemCount: RayModel.rayList.length,);
  }
}