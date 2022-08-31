import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_svg/svg.dart';
import 'package:testecommerce/widgets/capacity_list.dart';
import 'package:testecommerce/widgets/color_list.dart';
import 'package:testecommerce/widgets/shop_appbar.dart';

import '../bloc/models/product_class.dart';

class ProductDetail extends StatefulWidget {
  final Product element;
  const ProductDetail({Key? key, required this.element}) : super(key: key);

  @override
  _ProductDetailState createState() => _ProductDetailState(favorites: element.is_favorites!);
}

class _ProductDetailState extends State<ProductDetail>
    with TickerProviderStateMixin {

  _ProductDetailState({required this.favorites});

  late TabController _tabController;
  int selectColor = 0;
  int selectCapacity = 0;
  bool favorites;

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
                        "${this.widget.element.title}",
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
                                child: SvgPicture.asset(favorites == false ?
                                  "assets/heartline.svg" : "assets/heart.svg",
                                  color: Colors.white,
                                ),
                              ),
                              onTap: () {
                                setState(() {
                                  favorites == true ? favorites = false : favorites = true;
                                });
                              },
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
              initialRating: this.widget.element.rating!,
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
                    child: ShopAppBar(element: this.widget.element,),
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
                    child: ListView.builder(
                      itemCount: this.widget.element.color!.length,
                      scrollDirection: Axis.horizontal,
                      shrinkWrap: true,
                      itemBuilder: (BuildContext context, int index)
                      {
                        return InkWell(
                          onTap: ()
                          {
                            setState(() {
                              _onSelectColor(index);
                            });
                          },
                            child: ColorList(color: this.widget.element.color!.elementAt(index), selected: selectColor == index ? true : false,),
                        );
                      }
                    ),
                  ),
                ),
                Expanded(
                  child: Container(
                    height: 40.0,
                    child: ListView.builder(
                      itemCount: this.widget.element.capacity!.length,
                      scrollDirection: Axis.horizontal,
                      shrinkWrap: true,
                        itemBuilder: (BuildContext context, int index) {
                          return InkWell(
                            onTap: ()
                            {
                              setState(() {
                                _onSelectCapacity(index);
                              });
                            },
                              child: CapacityList(capacity: this.widget.element.capacity!.elementAt(index), selected: selectCapacity == index ? true : false,),
                          );
                        }
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
                          Text("\$${this.widget.element.price.toStringAsFixed(2)}", style: TextStyle(
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

  void _onSelectColor(int index)
  {
    selectColor = index;
  }

  void _onSelectCapacity(int index)
  {
    selectCapacity = index;
  }
}
