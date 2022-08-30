import 'package:flutter/material.dart';

import 'card_category.dart';

class CategoryList extends StatefulWidget {
  const CategoryList({Key? key}) : super(key: key);

  @override
  _CategoryListState createState() => _CategoryListState();
}

class _CategoryListState extends State<CategoryList> {
  int SelectIndex = 0;

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
                    child: ListView.builder(
                        itemCount: 5,
                        scrollDirection: Axis.horizontal,
                        shrinkWrap: true,
                        padding: new EdgeInsets.only(left: 20),
                        itemBuilder: (BuildContext context, int index) {
                          return InkWell(
                            onTap: ()
                            {
                              setState(() {
                                _onSelectIndex(index);
                              });
                              print("Selected ${SelectIndex}");
                            },
                            child: CardCategory(selected: SelectIndex == index ? true : false,),
                          );
                        }
                    ),
                  ),
                ),
              ],
            ),
          ],
        ));
  }

  void _onSelectIndex(int index) {
    SelectIndex = index;
  }
}
