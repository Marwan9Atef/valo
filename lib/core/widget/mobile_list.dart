import 'package:flutter/material.dart';
class MobileList extends StatelessWidget {
  const MobileList({
    super.key,
    required this.child,
  });
  final Widget child;
  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      itemBuilder: (context, index) => child,itemCount: 3,
      separatorBuilder: (context, index) => const SizedBox(height: 17,),

    );
  }
}