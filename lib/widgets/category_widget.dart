import 'package:flutter/material.dart';
import 'package:testecommerce/widgets/card_category.dart';

class CategoryList extends StatelessWidget {
  const CategoryList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        color: Color.fromRGBO(248, 248, 248, 1),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  children: [
                    Container(
                      padding: new EdgeInsets.only(left: 25),
                    child: Text("Select Category", style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.w700,
                    ),),
                    ),
                  ],
                ),
                Column(
                  children: [
                    Container(
                        padding: new EdgeInsets.only(right: 17),
                    child: TextButton(onPressed: () {}, child: Text("view all", style: TextStyle(
                      color: Color.fromRGBO(255, 110, 78, 1),
                      fontSize: 15,
                      fontWeight: FontWeight.w400,
                    ),))),
                  ],
                ),
              ],
            ),
            Row(
              children: [
                Expanded(
                  child: Container(
                    height: 100.0,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      shrinkWrap: true,
                      children: <Widget>[
                        SizedBox(width: 20),
                        CardCategory(),
                        CardCategory(),
                        CardCategory(),
                        CardCategory(),
                        CardCategory(),
                        CardCategory(),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ],
        ));
  }
}
