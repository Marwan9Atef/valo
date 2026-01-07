import 'package:flutter/cupertino.dart';
import '../../../../../core/utils/sizebox_util.dart';
import '../../widgets/history_header.dart';
import 'mobile_history_list.dart';

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
            Expanded(child: MobileHistoryList())


          ],

        ),
      ),
    );
  }
}
