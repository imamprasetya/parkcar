import 'package:flutter/material.dart';
import 'package:parkcar/theme/app_pallete.dart';
import 'package:parkcar/widgets/container_widget.dart';

class InProgresWidget extends StatelessWidget {
  const InProgresWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return ContainerWidget(
      title: "In Progress Parking To",
      child: Container(
        width: double.infinity,
        margin: const EdgeInsets.symmetric(
          horizontal: 16,
        ),
        padding: const EdgeInsets.symmetric(
          horizontal: 16,
          vertical: 24,
        ),
        decoration: BoxDecoration(
          color: AppPallete.colorPrimary,
          borderRadius: BorderRadius.circular(16),
        ),
        child: Text('Text'),
      ),
    );
  }
}
