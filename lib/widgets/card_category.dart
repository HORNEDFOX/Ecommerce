import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CardCategory extends StatelessWidget {
  const CardCategory({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.transparent,
        elevation: 0,
        child:
        Container(
          child: Column(
            children: [
              Container(
                height: 71,
                width: 71,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.white,
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SvgPicture.network("https://svgur.com/i/m0P.svg", color: Color.fromRGBO(179, 179, 195, 1),),
                  ],
                ),
              ),
              SizedBox(height: 5,),
              Text("Computer", style: TextStyle(
                fontSize: 12,
                fontWeight: FontWeight.w500,
              ),),
            ],
          ),
        ),
    );
  }
}
