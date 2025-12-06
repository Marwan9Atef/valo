import 'package:flutter/cupertino.dart';
import 'package:valo/core/utils/sizebox_util.dart';
import 'package:valo/core/widget/mobile_list.dart';
import 'package:valo/feature/history/presentation/screens/mobile/mobile_history_item.dart';

import '../../widgets/history_header.dart';

class MobileHistoryScreen extends StatelessWidget {
  const MobileHistoryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: EdgeInsets.only(left: 16,right: 16,top: 16),
        child: Column(
          children: [
           const HistoryHeader(),
            16.hight,
            Expanded(child: MobileList(child: MobileHistoryItem()))


          ],

        ),
      ),
    );
  }
}
