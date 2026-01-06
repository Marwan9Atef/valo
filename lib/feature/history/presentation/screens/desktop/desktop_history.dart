import 'package:flutter/cupertino.dart';
import '../../../../../core/widget/desktop_list.dart';
import '../../widgets/history_header.dart';
import 'disktop_history_item.dart';

class DesktopHistory extends StatelessWidget {
  const DesktopHistory({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: EdgeInsets.only(left: 16,right: 16,top: 12),

        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
         const HistoryHeader(),
            Expanded(child: DesktopList(child: DesktopHistoryItem(),))

          ]

        ),
      ),
    );
  }
}
