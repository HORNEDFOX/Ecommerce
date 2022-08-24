import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:testecommerce/widgets/app_bar.dart';
import 'package:testecommerce/widgets/category_widget.dart';
import 'package:testecommerce/widgets/hot_sales.dart';
import 'package:testecommerce/widgets/hot_sales_card.dart';
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
          SliverGrid(
            gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
              maxCrossAxisExtent: 200.0,
              mainAxisSpacing: 10.0,
              crossAxisSpacing: 10.0,
              childAspectRatio: 4.0,
            ),
            delegate: SliverChildBuilderDelegate(
                  (BuildContext context, int index) {
                return Container(
                  alignment: Alignment.center,
                  color: Colors.teal[100 * (index % 9)],
                  child: Text('grid item $index'),
                );
              },
              childCount: 50,
            ),
          ),
        ],
      ),
    );
  }
}
