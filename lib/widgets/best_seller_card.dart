import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:testecommerce/bloc/models/best_seller_class.dart';

class BestSellerCard extends StatefulWidget {
  final BestSeller bestSeller;
  const BestSellerCard({Key? key, required this.bestSeller}) : super(key: key);

  @override
  _BestSellerCardState createState() => _BestSellerCardState();
}

class _BestSellerCardState extends State<BestSellerCard> {
  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.transparent,
      elevation: 30,
      shadowColor: Color.fromRGBO(204, 204, 204, 0.1),
      child: Container(
        child: Column(
          children: [
            Container(
              height: 227,
              width: 181,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
              ),
              child: Stack(
                children: [
                  Container(
                    padding:
                        const EdgeInsets.only(bottom: 21, left: 21, right: 21),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          height: 168,
                          width: MediaQuery.of(context).size.width,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: NetworkImage(this.widget.bestSeller.picture.toString()),
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        Row(
                          children: [
                            Text(
                              "\$${this.widget.bestSeller.price_without_discount}",
                              style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                            SizedBox(
                              width: 7,
                            ),
                            Text(
                              "\$${this.widget.bestSeller.discount_price}",
                              style: TextStyle(
                                fontSize: 10,
                                fontWeight: FontWeight.w500,
                                color: Color.fromRGBO(204, 204, 204, 1),
                                decoration: TextDecoration.lineThrough,
                              ),
                            ),
                          ],
                        ),
                        Text(
                          "${this.widget.bestSeller.title}",
                          style: TextStyle(
                            fontSize: 11,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Positioned(
                    right: 10,
                    top: 15,
                    width: 36,
                    height: 36,
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50.0),
                        boxShadow: [
                          BoxShadow(
                            color: Color.fromRGBO(204, 204, 204, 0.5),
                            offset: Offset(1.0, 1.0),
                            blurRadius: 12.0,
                          ),
                        ],
                      ),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(50),
                        child: Material(
                          color: Colors.white,
                          child: InkWell(
                            child: Padding(
                              padding: const EdgeInsets.only(left: 8, right: 8, top: 8, bottom: 6.5),
                              child: SvgPicture.asset(
                                "assets/heartline.svg",
                                height: 15,
                                color: Color.fromRGBO(255, 110, 78, 1),
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
            ),
          ],
        ),
      ),
    );
  }
}
