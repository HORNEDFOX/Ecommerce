import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:testecommerce/widgets/app_bar.dart';
import 'package:testecommerce/widgets/best_seller_card.dart';
import 'package:testecommerce/widgets/category_widget.dart';
import 'package:testecommerce/widgets/hot_sales.dart';
import 'package:testecommerce/widgets/search_text.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            backgroundColor: Color.fromRGBO(248, 248, 248, 1),
            toolbarHeight: 40,
            floating: false,
            pinned: true,
            elevation: 0.0,
            flexibleSpace: const FlexibleSpaceBar(
              background: AppBarHome(),
            ),
          ),
          SliverAppBar(
            backgroundColor: Color.fromRGBO(248, 248, 248, 1),
            toolbarHeight: 125,
            floating: false,
            pinned: false,
            elevation: 0.0,
            flexibleSpace: const FlexibleSpaceBar(
              background: CategoryList(),
            ),
          ),
          SliverAppBar(
            backgroundColor: Color.fromRGBO(248, 248, 248, 1),
            toolbarHeight: 30,
            floating: false,
            pinned: true,
            elevation: 0.0,
            flexibleSpace: const FlexibleSpaceBar(
              background: SearchText(),
            ),
          ),
          SliverToBoxAdapter(
            child: HotSales(),
          ),
          SliverToBoxAdapter(
            child: Container(
                child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      children: [
                        Container(
                          padding: new EdgeInsets.only(left: 25),
                          child: Text(
                            "Best Seller",
                            style: TextStyle(
                              fontSize: 25,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        Container(
                            padding: new EdgeInsets.only(right: 17),
                            child: TextButton(
                                onPressed: () {},
                                child: Text(
                                  "view all",
                                  style: TextStyle(
                                    color: Color.fromRGBO(255, 110, 78, 1),
                                    fontSize: 15,
                                    fontWeight: FontWeight.w400,
                                  ),
                                ))),
                      ],
                    ),
                  ],
                ),
              ],
            )),
          ),
          SliverPadding(
            padding: const EdgeInsets.symmetric(horizontal: 21),
            sliver: SliverGrid(
              gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
                maxCrossAxisExtent: 200.0,
                mainAxisSpacing: 12.0,
                crossAxisSpacing: 14.0,
                childAspectRatio: 0.70,
              ),
              delegate: SliverChildBuilderDelegate(
                (BuildContext context, int index) {
                  return BestSellerCard();
                },
                childCount: 20,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
