import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:parkcar/theme/app_pallete.dart';
import 'package:parkcar/widgets/hero_widget.dart';
import 'package:parkcar/widgets/inprogres.dart';

class DiscoverPage extends StatelessWidget {
  const DiscoverPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: bottomNavBar(),
      body: const SingleChildScrollView(
        child: Column(
          children: [
            HeroWidget(),
            SizedBox(height: 20),
            InProgresWidget(),
          ],
        ),
      ),
    );
  }

  BottomNavigationBar bottomNavBar() {
    return BottomNavigationBar(
      type: BottomNavigationBarType.fixed,
      backgroundColor: AppPallete.white,
      selectedItemColor: AppPallete.colorPrimaryDark,
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
        bottomNavBarItem(
          icon: 'assets/svgs/discover.svg',
          label: 'Home',
        ),
        bottomNavBarItem(
          icon: 'assets/svgs/orders.svg',
          label: 'orders',
        ),
        bottomNavBarItem(
          icon: 'assets/svgs/wallet.svg',
          label: 'wallet',
        ),
        bottomNavBarItem(
          icon: 'assets/svgs/setting.svg',
          label: 'setting',
        ),
      ],
    );
  }

  BottomNavigationBarItem bottomNavBarItem({
    required String label,
    required String icon,
  }) {
    return BottomNavigationBarItem(
      icon: SvgPicture.asset(
        icon,
        colorFilter: ColorFilter.mode(
          AppPallete.colorGray,
          BlendMode.srcIn,
        ),
      ),
      activeIcon: SvgPicture.asset(
        icon,
        colorFilter: ColorFilter.mode(
          AppPallete.colorPrimary,
          BlendMode.srcIn,
        ),
      ),
      label: label,
    );
  }
}
