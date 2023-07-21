import 'package:flutter/material.dart';
import 'package:star_wish_bd/star_wish_bd.dart';

import 'booking_item_widget.dart';

class ConfirmScreen extends StatelessWidget {
  const ConfirmScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      itemCount: 20,
      itemBuilder: (context, index) {
        return const BookingItemWidget(
          buttonName: 'View',
        );
      },
    );
  }
}
