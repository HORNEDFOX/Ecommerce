import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_svg/svg.dart';
import 'package:testecommerce/widgets/capacity_list.dart';
import 'package:testecommerce/widgets/color_list.dart';
import 'package:testecommerce/widgets/shop_appbar.dart';

class ProductDetail extends StatefulWidget {
  const ProductDetail({Key? key}) : super(key: key);

  @override
  _ProductDetailState createState() => _ProductDetailState();
}

class _ProductDetailState extends State<ProductDetail>
    with TickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    _tabController = TabController(length: 3, vsync: this);
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
    _tabController.dispose();
  }

  final _selectedColor = Color.fromRGBO(255, 110, 78, 1);
  final _selectedColorText = Color.fromRGBO(1, 0, 53, 1);
  final _unselectedColorText = Color.fromRGBO(0, 0, 0, 0.5);
  final _tabs = [
    Tab(
        child: Text('Shop',
            style: TextStyle(
              fontSize: 20,
            ))),
    Tab(
        child: Text('Details',
            style: TextStyle(
              fontSize: 20,
            ))),
    Tab(
        child: Text('Features',
            style: TextStyle(
              fontSize: 20,
            ))),
  ];

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 32),
        height: 430,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.only(
              topRight: Radius.circular(30),
              topLeft: Radius.circular(30),
            ),
            color: Colors.white,
            boxShadow: [
              BoxShadow(
                color: Color.fromRGBO(204, 204, 204, 0.5),
                offset: Offset(1.0, 1.0),
                blurRadius: 12.0,
              ),
            ]),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 28,
            ),
            Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    children: [
                      Text(
                        "Galaxy Note 20 Ultra",
                        style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      Container(
                        height: 37,
                        width: 37,
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(10),
                          child: Material(
                            color: Color.fromRGBO(1, 0, 53, 1),
                            child: InkWell(
                              child: Padding(
                                padding: const EdgeInsets.all(11),
                                child: SvgPicture.asset(
                                  "assets/heartline.svg",
                                  color: Colors.white,
                                ),
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
            RatingBar.builder(
              initialRating: 3,
              minRating: 1,
              direction: Axis.horizontal,
              allowHalfRating: true,
              itemCount: 5,
              itemSize: 20,
              itemPadding: EdgeInsets.only(left: 3.0),
              itemBuilder: (context, _) => Icon(
                Icons.star,
                color: Colors.amber,
              ),
              onRatingUpdate: (rating) {
                print(rating);
              },
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              height: kToolbarHeight - 8.0,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8.0),
              ),
              child: TabBar(
                controller: _tabController,
                tabs: _tabs,
                labelColor: _selectedColorText,
                indicatorColor: _selectedColor,
                labelStyle: TextStyle(
                  fontWeight: FontWeight.w700,
                ),
                unselectedLabelStyle: TextStyle(
                  fontWeight: FontWeight.w400,
                ),
                unselectedLabelColor: _unselectedColorText,
                indicatorWeight: 3,
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Expanded(
              child: TabBarView(
                controller: _tabController,
                children: <Widget>[
                  Container(
                    child: ShopAppBar(),
                  ),
                  Container(),
                  Container(),
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Text("Select color and capacity",
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                )),
            SizedBox(
              height: 10,
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  child: Container(
                    height: 45.0,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      shrinkWrap: true,
                      children: <Widget>[
                        ColorList(),
                        ColorList(),
                        ColorList(),
                      ],
                    ),
                  ),
                ),
                Expanded(
                  child: Container(
                    height: 40.0,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      shrinkWrap: true,
                      children: <Widget>[
                        CapacityList(),
                        CapacityList(),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 25,
            ),
            Row(
              children: [
            Expanded(child:
            Container(
              height: 54,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: Material(
                  color: Color.fromRGBO(255, 110, 78, 1),
                  child: InkWell(
                    child: Padding(
                      padding: const EdgeInsets.all(11),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Text("Add to Cart", style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                            fontWeight: FontWeight.w700,
                          ),),
                          Text("\$1,500.00", style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                            fontWeight: FontWeight.w700,
                          ),),
                        ],
                      )
                    ),
                    onTap: () {},
                  ),
                ),
              ),
            ),
            ),
                ],
            ),
            SizedBox(
              height: 25,
            ),
          ],
        ),
      ),
    );
  }
}
