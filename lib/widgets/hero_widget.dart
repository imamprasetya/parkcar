import 'package:flutter/material.dart';
import 'package:parkcar/theme/app_pallete.dart';

class HeroWidget extends StatelessWidget {
  const HeroWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(children: [content()]);
  }

  Container content() {
    return Container(
      width: double.infinity,
      padding: EdgeInsets.only(left: 16, right: 16, bottom: 16, top: 70),
      color: AppPallete.colorPrimaryDark,
      child: Column(
        children: [
          Row(
            children: [
              Container(
                width: 50,
                height: 50,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  image: DecorationImage(
                    image: AssetImage("assets/images/profile.jpg"),
                  ),
                ),
              ),
              Text("user", style: TextStyle(color: AppPallete.white)),
            ],
          ),
          Text("Get your\nSecure Park"),
        ],
      ),
    );
  }
}
