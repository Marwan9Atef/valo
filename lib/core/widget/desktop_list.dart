import 'package:flutter/cupertino.dart';

class DesktopList extends StatelessWidget {

  const DesktopList({
    super.key,
    required this.child,
  });
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(itemBuilder: (context, index) => child,itemCount: 3,);
  }
}