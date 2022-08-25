import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:testecommerce/widgets/app_bar_product.dart';

class Product extends StatefulWidget {
  const Product({Key? key}) : super(key: key);

  @override
  _ProductState createState() => _ProductState();
}

class _ProductState extends State<Product> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: CustomScrollView(slivers: [
        SliverAppBar(
          backgroundColor: Color.fromRGBO(248, 248, 248, 1),
          toolbarHeight: 60,
          floating: false,
          pinned: true,
          elevation: 0.0,
          flexibleSpace: const FlexibleSpaceBar(
            background: AppBarProduct(),
          ),
        ),
    SliverToBoxAdapter(
      child: SizedBox(height: 30,),
    ),
        SliverToBoxAdapter(
          child: Expanded(
              child: CarouselSlider.builder(
            itemCount: 3,
            itemBuilder:
                (BuildContext context, int itemIndex, int pageViewIndex) =>
                    Container(
                      //width: 226,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(
                            color: Color.fromRGBO(204, 204, 204, 0.2),
                            offset: Offset(1.0, 1.0),
                            blurRadius: 12.0,
                          ),
                        ]
                      ),
                      child: Container(
                        margin: EdgeInsets.symmetric(horizontal: 5, vertical: 15),
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: NetworkImage("https://www.portative.by/upload/iblock/3cf/3cf557ac2d3ce6f2fd23e1e2bc5bbd25.jpg"),
                            fit: BoxFit.fill,
                          ),
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
            ),
            options: CarouselOptions(
              height: 335.0,
              initialPage: 0,
              autoPlay: true,
              viewportFraction: 0.7,
              enlargeCenterPage: true,
              //aspectRatio: 1.2,
            ),
          )),
        ),
        SliverToBoxAdapter(
          child: SizedBox(height: 20,),
        ),
        SliverToBoxAdapter(
        ),
      ]),
    );
  }
}
