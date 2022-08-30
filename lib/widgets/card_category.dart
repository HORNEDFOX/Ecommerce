import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class CardCategory extends StatelessWidget {
  bool selected;
  CardCategory({Key? key, required this.selected}) : super(key: key);

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
                color: selected == true? Color.fromRGBO(255, 110, 78, 1) : Colors.white,
                boxShadow: [
                  BoxShadow(
                    color: Color.fromRGBO(204, 204, 204, 0.2),
                    offset: Offset(1.0, 1.0),
                    blurRadius: 12.0,
                  ),
                ],
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SvgPicture.network("https://svgur.com/i/m0P.svg", color: selected == true? Colors.white : Color.fromRGBO(179, 179, 195, 1),),
                ],
              ),
            ),
            SizedBox(height: 5,),
            Text("Phones", style: TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.w500,
              color: selected == true? Color.fromRGBO(255, 110, 78, 1) : Color.fromRGBO(1, 0, 53, 1),
            ),),
          ],
        ),
      ),
    );
  }
}
