import 'package:flutter/material.dart';

class CallSubPages extends StatelessWidget {
  final Widget widget;
  final Route route;

  const CallSubPages({Key? key, required this.route, required this.widget})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(context, route);
      },
      child: widget,
    );
  }
}
