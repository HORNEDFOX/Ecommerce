import 'package:flutter/material.dart';

import 'CartCard.dart';

class CartDetail extends StatelessWidget {
  const CartDetail({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: Container(
        padding: EdgeInsets.symmetric(horizontal: 32),
        decoration: BoxDecoration(
          border: Border.all(
            width: 0,
            color: Color.fromRGBO(1, 0, 53, 1),//the one you prefer
          ),
            borderRadius: BorderRadius.only(
              topRight: Radius.circular(30),
              topLeft: Radius.circular(30),
            ),
            color: Color.fromRGBO(1, 0, 53, 1),
        ),
        child: Column(
          //mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
                  ListView(
                    scrollDirection: Axis.vertical,
                    shrinkWrap: true,
                    children: <Widget>[
                      CartCard(),
                      CartCard(),
                      CartCard(),
                      CartCard(),
                    ],
                  ),
            SizedBox(
              height: 12,
            )
          ],
        ),
        ),
    );
  }
}
