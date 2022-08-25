import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class AppBarProduct extends StatelessWidget {
  const AppBarProduct({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        margin: new EdgeInsets.only(left: 42, right: 35, top: 15),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Column(children: [
              Container(
                height: 37,
                width: 37,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: Material(
                    color: Color.fromRGBO(1, 0, 53, 1),
                    child: InkWell(
                      child: Padding(
                        padding: const EdgeInsets.all(11),
                        child: SvgPicture.asset("assets/back.svg"),
                      ),
                      onTap: () {},
                    ),
                  ),
                ),
              ),
            ]),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("Product Details", style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w500,
                ),),
              ],
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  height: 37,
                  width: 37,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: Material(
                      color: Color.fromRGBO(255, 110, 78, 1),
                      child: InkWell(
                        child: Padding(
                          padding: const EdgeInsets.all(11),
                          child: SvgPicture.asset("assets/shop.svg"),
                        ),
                        onTap: () {},
                      ),
                    ),
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
