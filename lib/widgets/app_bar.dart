import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class AppBarHome extends StatelessWidget implements PreferredSizeWidget {
  const AppBarHome({Key? key}) : super(key: key);

  @override
  Size get preferredSize => const Size.fromHeight(50);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        margin: new EdgeInsets.only(left: 45, right: 17),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Column(children: [
              Container(),
            ]),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  child: Row(
                    children: [
                      SvgPicture.asset("assets/map.svg"),
                      SizedBox(
                        width: 11,
                      ),
                      Text(
                        "Zihuatanejo, Gro",
                        style: TextStyle(
                          color: Color.fromRGBO(1, 0, 53, 1),
                          fontSize: 15,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      Container(
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(50),
                          child: Material(
                            child: InkWell(
                              child: Padding(
                                padding: const EdgeInsets.all(10),
                                child: SvgPicture.asset("assets/arrow.svg"),
                              ),
                              onTap: () {},
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(50),
                    child: Material(
                      child: InkWell(
                        child: Padding(
                          padding: const EdgeInsets.all(8),
                          child: SvgPicture.asset("assets/filter.svg"),
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
