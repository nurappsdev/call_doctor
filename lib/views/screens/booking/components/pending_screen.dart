import 'package:flutter/material.dart';
import 'package:star_wish_bd/star_wish_bd.dart';

import 'booking_item_widget.dart';
class PendingScreen extends StatelessWidget {
  const PendingScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      itemCount: 20,
      itemBuilder: (context, index) {
        return const BookingItemWidget(
          buttonName: 'Pending',
        );
      },
    );
  }
}
