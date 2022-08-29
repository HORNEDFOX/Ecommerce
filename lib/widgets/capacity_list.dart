import 'package:flutter/material.dart';

class CapacityList extends StatefulWidget {
  const CapacityList({Key? key}) : super(key: key);

  @override
  _CapacityListState createState() => _CapacityListState();
}

class _CapacityListState extends State<CapacityList> {
  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.transparent,
      elevation: 0,
      child:
      Container(
        height: 40,
        width: 70,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
          color: Color.fromRGBO(255, 110, 78, 1),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text("128 GB", style: TextStyle(
              fontSize: 13,
              fontWeight: FontWeight.w700,
              color: Colors.white,
            ),),
          ],
        ),
      ),
    );
  }
}

