import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:parkcar/theme/app_pallete.dart';

class DiscoverPage extends StatelessWidget {
  const DiscoverPage({super.key});

  @override
  Widget build(BuildContext context) {
    return bottomNavbar();
  }

  Scaffold bottomNavbar() {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        backgroundColor: AppPallete.white,
        selectedItemColor: AppPallete.colorPrimary,
        unselectedItemColor: AppPallete.colorGray,
        showUnselectedLabels: true,
        selectedLabelStyle: GoogleFonts.plusJakartaSans(
          fontSize: 13,
          fontWeight: FontWeight.bold,
        ),
        unselectedLabelStyle: GoogleFonts.plusJakartaSans(
          fontSize: 13,
          fontWeight: FontWeight.w700,
        ),
        items: [
          bottomNavigationBarItem(
            icon: 'assets/svgs/discover.svg',
            label: 'Home',
          ),
          bottomNavigationBarItem(
            icon: 'assets/svgs/orders.svg',
            label: 'orders',
          ),
          bottomNavigationBarItem(
            icon: 'assets/svgs/wallet.svg',
            label: 'wallet',
          ),
          bottomNavigationBarItem(
            icon: 'assets/svgs/setting.svg',
            label: 'setting',
          ),
        ],
      ),
    );
  }

  BottomNavigationBarItem bottomNavigationBarItem({
    required String label,
    required String icon,
  }) {
    return BottomNavigationBarItem(
      icon: SvgPicture.asset(
        icon,
        colorFilter: ColorFilter.mode(AppPallete.colorGray, BlendMode.srcIn),
      ),
      activeIcon: SvgPicture.asset(
        icon,
        colorFilter: ColorFilter.mode(AppPallete.colorPrimary, BlendMode.srcIn),
      ),
      label: label,
    );
  }
}
