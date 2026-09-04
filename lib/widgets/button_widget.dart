import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:parkcar/theme/app_pallete.dart';

class ButtonWidget extends StatelessWidget {
  final String text;
  final VoidCallback onTap;
  const ButtonWidget({
    super.key,
    required this.text,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onTap,
      style: ElevatedButton.styleFrom(
        elevation: 0,
        backgroundColor: AppPallete.white,
        foregroundColor: AppPallete.colorPrimaryDark,
        padding: const EdgeInsets.symmetric(
          horizontal: 20,
          vertical: 12,
        ),
        textStyle: GoogleFonts.plusJakartaSans(
          fontSize: 14,
          fontWeight: FontWeight.bold,
        ),
      ),
      child: Text("Open Maps"),
    );
  }
}
