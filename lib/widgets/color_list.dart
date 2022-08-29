import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:flutter_hex_color/flutter_hex_color.dart';

class ColorList extends StatefulWidget {
  const ColorList({Key? key}) : super(key: key);

  @override
  _ColorListState createState() => _ColorListState();
}

class _ColorListState extends State<ColorList> {
  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.transparent,
      elevation: 0,
      child:
            Container(
              height: 45,
              width: 45,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: HexColor("#010035"),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SvgPicture.asset("assets/check.svg"),
                ],
              ),
            ),
    );
  }
}
