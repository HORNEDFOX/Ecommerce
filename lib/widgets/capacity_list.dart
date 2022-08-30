import 'package:flutter/material.dart';

class CapacityList extends StatefulWidget {
  final String capacity;
  bool selected;
  CapacityList({Key? key, required this.capacity, required this.selected}) : super(key: key);

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
          color: this.widget.selected == true ? Color.fromRGBO(255, 110, 78, 1) : Colors.transparent,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text("${this.widget.capacity} GB", style: TextStyle(
              fontSize: 13,
              fontWeight: FontWeight.w700,
              color: this.widget.selected == true ? Colors.white : Color.fromRGBO(141, 141, 141, 1),
            ),),
          ],
        ),
      ),
    );
  }
}

