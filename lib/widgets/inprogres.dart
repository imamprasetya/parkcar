import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
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
        margin: const EdgeInsets.symmetric(horizontal: 16),
        padding: const EdgeInsets.symmetric(
          horizontal: 16,
          vertical: 24,
        ),
        decoration: BoxDecoration(
          color: AppPallete.colorPrimary,
          borderRadius: BorderRadius.circular(16),
          image: DecorationImage(
            image: AssetImage("assets/images/bg_in_progress.png"),
            fit: BoxFit.cover,
          ),
        ),
        child: Row(
          children: [
            SvgPicture.asset(
              'assets/svgs/grid.svg',
              height: 27,
              width: 27,
            ),
            const SizedBox(width: 10),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Imam Prasetya",
                  style: GoogleFonts.plusJakartaSans(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: AppPallete.white,
                  ),
                ),
                Text(
                  "Lot 197MB",
                  style: GoogleFonts.plusJakartaSans(
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                    color: AppPallete.white,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
