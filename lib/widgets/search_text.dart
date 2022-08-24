import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class SearchText extends StatefulWidget {
  const SearchText({Key? key}) : super(key: key);

  @override
  _SearchTextState createState() => _SearchTextState();
}

class _SearchTextState extends State<SearchText> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        children: [
          Container(
            padding: new EdgeInsets.only(left: 35, right: 11),
            width: MediaQuery.of(context).size.width/1.15,
            height: 34,
            alignment: Alignment.center,
            child: TextFormField(
              cursorColor: Color.fromRGBO(255, 110, 78, 1),
              //controller: txtQuery,
              //onChanged: search,
              decoration: InputDecoration(
                  contentPadding:
                  EdgeInsets.only(left: 15, bottom: 11, top: 11, right: 15),
                hintText: "Search",
                enabledBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(50.0), borderSide: BorderSide(color: Colors.white)),
                disabledBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(50.0), borderSide: BorderSide(color: Colors.white)),
                focusedBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(50.0), borderSide: BorderSide(color: Colors.white)),
                prefixIcon: Icon(Icons.search, color: Color.fromRGBO(255, 110, 78, 1),),
              ),
            ),
          ),
          Container(
            child: ClipRRect(
              borderRadius: BorderRadius.circular(50),
              child: Material(
                color: Color.fromRGBO(255, 110, 78, 1),
                child: InkWell(
                  child: Padding(
                    padding: const EdgeInsets.all(9),
                    child: SvgPicture.asset("assets/qrcode.svg", height: 15,),
                  ),
                  onTap: () {},
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
