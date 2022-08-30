import 'package:flutter/material.dart';
import 'package:testecommerce/bloc/models/product_class.dart';

import 'CartCard.dart';

class CartDetail extends StatelessWidget {
  final List<Product> element;
  const CartDetail({Key? key, required this.element}) : super(key: key);

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
                  ListView.builder(
                    itemCount: element.length,
                    scrollDirection: Axis.vertical,
                    shrinkWrap: true,
                    itemBuilder: (BuildContext context, int index){
                      return CartCard(element: element.elementAt(index),);
                    }
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
