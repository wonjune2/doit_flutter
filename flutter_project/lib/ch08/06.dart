import 'package:flutter/material.dart';

class MyColorItemWidget extends StatelessWidget {
  Color color;
  MyColorItemWidget({
    super.key,
    required this.color,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        color: color,
        width: 150,
        height: 150,
      ),
    );
  }
}
