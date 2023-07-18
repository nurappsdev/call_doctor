import 'package:flutter/material.dart';

typedef IndexedWidgetBuilder = Widget Function(BuildContext context, int index);

class HorizontalListViewWidget extends StatelessWidget {
  final EdgeInsetsGeometry? padding;
  final IndexedWidgetBuilder itemBuilder;
  final ScrollPhysics? physics;
  final int itemCount;
  final ScrollController? controller;

  const HorizontalListViewWidget({
    super.key,
    this.controller,
    this.physics,
    this.padding,
    required this.itemCount,
    required this.itemBuilder,
  });

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: padding,
      controller: controller,
      key: key,
      physics: physics,
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          for (int index = 0; index < itemCount; index++)
            itemBuilder(context, index),
        ],
      ),
    );
  }
}


