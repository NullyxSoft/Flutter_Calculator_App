// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

class PageRouteCard extends StatelessWidget {
  final int index;
  final List<Icon> iconList;
  final List<String> textList;
  const PageRouteCard({
    Key? key,
    required this.index,
    required this.iconList,
    required this.textList,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      child: Card(
        color: Colors.transparent,
        elevation: 0,
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [Icon(iconList.elementAt(index).icon,), Text(textList.elementAt(index))],
          ),
        ),
      ),
    );
  }
}
