import 'package:flutter/cupertino.dart';
import '../../widgets/history_header.dart';
import 'desktop_history_list.dart';


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
            Expanded(child: DesktopHistoryList())

          ]

        ),
      ),
    );
  }
}
