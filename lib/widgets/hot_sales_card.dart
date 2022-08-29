import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:testecommerce/bloc/models/home_store_class.dart';

class HotSalesCard extends StatelessWidget {
  final HomeStore element;
  const HotSalesCard({Key? key, required this.element}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.transparent,
      elevation: 0,
      child:
      Container(
        padding: new EdgeInsets.only(left: 21, right: 21),
        child: Column(
          children: [
            Container(
              height: 182,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                image: DecorationImage(
                 image: NetworkImage(element.picture.toString()),
                  fit: BoxFit.cover,
                ),
                    borderRadius: BorderRadius.circular(10),
              ),
              child: Container(
                padding: new EdgeInsets.only(left: 25, top: 15, bottom: 15),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Row(
                    children: [
                      element.is_new == true ?
                            Container(
                              height: 31,
                              width: 31,
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: Color.fromRGBO(255, 110, 78, 1),
                              ),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Text('New', style: TextStyle(
                                    fontWeight: FontWeight.w700,
                                    fontSize: 10,
                                    color: Colors.white,
                                  ),),
                                ],
                              ),
                            ) : Container(height: 31,
                        width: 31,),
                    ],
                  ),
                  Container(
                    child: Row(
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("${element.title}", style: TextStyle(
                              color: Colors.white,
                              fontSize: 30,
                              fontWeight: FontWeight.w700,
                            ),),
                            SizedBox(height: 5,),
                            Text("${element.subtitle}", style: TextStyle(
                              color: Colors.white,
                              fontSize: 11,
                              fontWeight: FontWeight.w400,
                            ),),
                          ],
                        ),
                      ],
                    ),
                  ),
                  Row(
                    children: [
                      InkWell(
                        onTap: () => print('hello'),
                        child: new Container(
                          width: 98.0,
                          height: 30.0,
                          decoration: new BoxDecoration(
                            color: Colors.white,
                            borderRadius: new BorderRadius.circular(5.0),
                          ),
                          child: new Center(child: new Text('Buy now!', style: new TextStyle(fontSize: 14.0, fontWeight: FontWeight.w700),),),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
