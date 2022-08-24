import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class HotSalesCard extends StatelessWidget {
  const HotSalesCard({Key? key}) : super(key: key);

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
                 image: NetworkImage("https://content.api.news/v3/images/bin/1e1c42d1b014dc9b8a56dcd7213aac21"),
                  fit: BoxFit.cover,
                ),
                color: Colors.amber,
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
                            ),
                    ],
                  ),
                  Container(
                    child: Row(
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Iphone 12", style: TextStyle(
                              color: Colors.white,
                              fontSize: 30,
                              fontWeight: FontWeight.w700,
                            ),),
                            SizedBox(height: 5,),
                            Text("Súper. Mega. Rápido.", style: TextStyle(
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
