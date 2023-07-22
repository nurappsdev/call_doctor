import 'package:flutter/material.dart';
import 'package:doctor/doctor.dart';

import 'booking_item_widget.dart';

class CanceledScreen extends StatelessWidget {
  const CanceledScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      itemCount: 20,
      itemBuilder: (context, index) {
        return const BookingItemWidget(
          buttonName: 'Canceled',
        );
      },
    );
  }
}
