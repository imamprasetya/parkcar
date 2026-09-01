import 'package:flutter/material.dart';
import 'package:parkcar/theme/app_pallete.dart';

class ButtonWidget extends StatelessWidget {
  const ButtonWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {},
      style: ElevatedButton.styleFrom(
        foregroundColor: AppPallete.colorPrimaryDark,
      ),
      child: Text("Open Maps"),
    );
  }
}
