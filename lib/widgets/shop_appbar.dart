import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ShopAppBar extends StatelessWidget {
  const ShopAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          children: [
            Container(
              height: 28,
              width: 28,
              child: SvgPicture.asset(
                "assets/cpu.svg",
                height: 28,
              ),
            ),
            SizedBox(
              height: 9,
            ),
            Text(
              "Exynos 990",
              style: TextStyle(
                fontSize: 11,
                fontWeight: FontWeight.w400,
                color: Color.fromRGBO(183, 183, 183, 1),
              ),
            ),
          ],
        ),
        Column(
          children: [
            Container(
              height: 28,
              width: 28,
              child: SvgPicture.asset(
                "assets/camera.svg",
                height: 28,
              ),
            ),
            SizedBox(
              height: 9,
            ),
            Text(
              "108 + 12 mp",
              style: TextStyle(
                fontSize: 11,
                fontWeight: FontWeight.w400,
                color: Color.fromRGBO(183, 183, 183, 1),
              ),
            ),
          ],
        ),
        Column(
          children: [
            Container(
              height: 28,
              width: 28,
              child: SvgPicture.asset(
                "assets/ram.svg",
                height: 28,
              ),
            ),
            SizedBox(
              height: 9,
            ),
            Text(
              "8 GB",
              style: TextStyle(
                fontSize: 11,
                fontWeight: FontWeight.w400,
                color: Color.fromRGBO(183, 183, 183, 1),
              ),
            ),
          ],
        ),
        Column(
          children: [
            Container(
              height: 28,
              width: 28,
              child: SvgPicture.asset(
                "assets/memory.svg",
                height: 15,
              ),
            ),
            SizedBox(
              height: 9,
            ),
            Text(
              "256 GB",
              style: TextStyle(
                fontSize: 11,
                fontWeight: FontWeight.w400,
                color: Color.fromRGBO(183, 183, 183, 1),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
