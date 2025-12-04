import 'package:flutter/cupertino.dart';

extension SizeboxUtil on num {
  SizedBox get width => SizedBox(width: toDouble());
  SizedBox get hight => SizedBox(height: toDouble());
}