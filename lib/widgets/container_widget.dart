import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ContainerWidget extends StatelessWidget {
  final String title;
  final Widget child;
  const ContainerWidget({
    super.key,
    required this.title,
    required this.child,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        header(),
        const SizedBox(height: 16),
        child
      ],
    );
  }

  Widget header() {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 16,
      ),
      child: Row(
        children: [
          Text(
            title,
            style: GoogleFonts.plusJakartaSans(
              fontSize: 17,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }
}
