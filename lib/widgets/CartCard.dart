import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class CartCard extends StatefulWidget {
  const CartCard({Key? key}) : super(key: key);

  @override
  _CartCardState createState() => _CartCardState();
}

class _CartCardState extends State<CartCard> {
  int _n = 1;

  void add() {
    setState(() {
      _n++;
    });
  }

  void minus() {
    setState(() {
      if (_n != 0)
        _n--;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.transparent,
      elevation: 0,
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Container(
                child: Row(
                  children: [
                    Container(
                      height: 88,
                      width: 88,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.white,
                      ),
                      child: Container(
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: NetworkImage(
                                "https://i01.appmifile.com/webfile/globalimg/gaoruijia/RN-10-PRO-blue.png"),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          width: 130,
                          child:
                        Text("Galaxy Note 20 Ultra",style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 20,
                          color: Colors.white,
                        ),
                          maxLines: 3,
                          softWrap: true,
                        ),
                        ),
                        SizedBox(height: 8,),
                        Text("\$3000.00",style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 20,
                          color: Color.fromRGBO(255, 110, 78, 1),
                        ),),
                      ],
                    ),
                    Container(
                      margin: const EdgeInsets.only(left: 15, right: 10),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(100),
                        color: Color.fromRGBO(40, 40, 67, 1),
                      ),
                      child: Column(
                        children: [
                          Container(
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(50),
                              child: Material(
                                color: Colors.transparent,
                                child: InkWell(
                                  child: Padding(
                                    padding: const EdgeInsets.all(8),
                                    child: Icon(Icons.add, color: Colors.white, size: 15,),
                                  ),
                                  onTap: add,
                                ),
                              ),
                            ),
                          ),
                          Text('$_n',
                              style: new TextStyle(fontSize: 20.0, fontWeight: FontWeight.w500, color: Colors.white)),
                          Container(
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(50),
                              child: Material(
                                color: Colors.transparent,
                                child: InkWell(
                                  child: Padding(
                                    padding: const EdgeInsets.all(8),
                                    child: Icon(Icons.remove, color: Colors.white, size: 15,),
                                  ),
                                  onTap: minus,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(50),
                        child: Material(
                          color: Colors.transparent,
                          child: InkWell(
                            child: Padding(
                              padding: const EdgeInsets.all(8),
                              child: SvgPicture.asset("assets/trash.svg"),
                            ),
                            onTap: () {},
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
