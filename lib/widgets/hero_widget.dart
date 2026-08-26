import 'package:flutter/material.dart';
import 'package:parkcar/theme/app_pallete.dart';

class HeroWidget extends StatelessWidget {
  const HeroWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(children: [content(), image()]);
  }

  Container content() {
    return Container(
      width: double.infinity,
      padding: EdgeInsets.only(
        left: 16,
        right: 16,
        bottom: 55,
        top: 70,
      ),
      color: AppPallete.colorPrimaryDark,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Container(
                width: 70,
                height: 70,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  image: DecorationImage(
                    image: AssetImage(
                      "assets/images/profile.jpg",
                    ),
                  ),
                ),
              ),
              SizedBox(width: 10),
              Column(
                crossAxisAlignment:
                    CrossAxisAlignment.start,
                children: [
                  Text(
                    "Haloo",
                    style: TextStyle(
                      color: AppPallete.textSecondari,
                      fontWeight: FontWeight.w500,
                      fontSize: 20,
                    ),
                  ),
                  Text(
                    "Imam Prasetya",
                    style: TextStyle(
                      color: AppPallete.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                    ),
                  ),
                ],
              ),
            ],
          ),
          SizedBox(height: 21),
          Text(
            "Get your\nSecure Park",
            style: TextStyle(
              color: AppPallete.white,
              height: 1,
              fontWeight: FontWeight.w800,
              fontSize: 30,
            ),
          ),
        ],
      ),
    );
  }

  Widget image() {
    return Positioned(
      width: 160,
      bottom: 54,
      right: 0,
      child: Image.asset(
        'assets/images/hero.png',
        fit: BoxFit.contain,
      ),
    );
  }
}
