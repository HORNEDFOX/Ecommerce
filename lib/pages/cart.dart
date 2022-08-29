import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:testecommerce/widgets/app_bar_cart.dart';
import 'package:testecommerce/widgets/cart_detail.dart';

class Cart extends StatelessWidget {
  const Cart({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            backgroundColor: Color.fromRGBO(248, 248, 248, 1),
            toolbarHeight: 80,
            floating: false,
            pinned: true,
            elevation: 0.0,
            flexibleSpace: const FlexibleSpaceBar(
              background: AppBarCart(),
            ),
          ),
          SliverAppBar(
            backgroundColor: Color.fromRGBO(248, 248, 248, 1),
            toolbarHeight: 70,
            floating: false,
            pinned: false,
            elevation: 0.0,
            flexibleSpace: const FlexibleSpaceBar(
              background: MyCart(),
            ),
          ),
          SliverToBoxAdapter(
            child: CartDetail(),
          ),
          SliverFillRemaining(
            hasScrollBody: false,
            fillOverscroll: true,
            child: Container(
              color: Color.fromRGBO(1, 0, 53, 1),
              child: Align(
                alignment: Alignment.bottomCenter,
                child: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Container(
                        child: Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Divider(
                          color: Color.fromRGBO(255, 255, 255, 0.25),
                          height: 2,
                        ),
                        SizedBox(
                          height: 8,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Total",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 15,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                            Text(
                              "\$6,000 us",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 15,
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 7,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Delivery",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 15,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                            Text(
                              "Free",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 15,
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 8,
                        ),
                        Divider(
                          color: Color.fromRGBO(255, 255, 255, 0.2),
                          height: 1,
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Row(
                          children: [
                            Expanded(
                              child: Container(
                                height: 54,
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(10),
                                  child: Material(
                                    color: Color.fromRGBO(255, 110, 78, 1),
                                    child: InkWell(
                                      child: Padding(
                                        padding: const EdgeInsets.all(11),
                                        child: Center(
                                          child: Text(
                                            "Checkout",
                                            style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 20,
                                              fontWeight: FontWeight.w700,
                                            ),
                                          ),
                                        ),
                                      ),
                                      onTap: () {},
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ))),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class MyCart extends StatelessWidget {
  const MyCart({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Container(
      padding: new EdgeInsets.only(left: 42, bottom: 30),
      child: Text(
        "My Cart",
        style: TextStyle(
          fontSize: 35,
          fontWeight: FontWeight.w700,
        ),
      ),
    ));
  }
}
