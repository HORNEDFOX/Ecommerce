import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

import 'hot_sales_card.dart';

class HotSales extends StatelessWidget {
  const HotSales({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  children: [
                    Container(
                      padding: new EdgeInsets.only(left: 25),
                      child: Text("Hot Sales", style: TextStyle(
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
                  child: CarouselSlider.builder(
                    itemCount: 3,
                    itemBuilder: (BuildContext context, int itemIndex, int pageViewIndex) =>
                        Container(
                          child: HotSalesCard(),
                        ), options: CarouselOptions(
                      height: 190.0,
                    initialPage: 0,
                    autoPlay: true,
                    viewportFraction: 1,
                  ),
                  )
                ),
              ],
            ),
          ],
        ));
  }
}
