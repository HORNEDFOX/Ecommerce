import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:testecommerce/pages/cart.dart';
import 'package:testecommerce/pages/home.dart';
import 'package:testecommerce/pages/product.dart';

class NavigationWidget extends StatefulWidget {
  const NavigationWidget({Key? key}) : super(key: key);

  @override
  State<NavigationWidget> createState() => _NavigationWidgetState();
}

class _NavigationWidgetState extends State<NavigationWidget> {
  int _selectedIndex = 0;
  TextStyle optionStyle =
      const TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
  final List<Widget> _widgetOptions = <Widget>[
    const Home(),
    const Product(),
    const Cart(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: Container(
        decoration: BoxDecoration(
          color: Colors.transparent,
          borderRadius: BorderRadius.only(
              topRight: Radius.circular(30), topLeft: Radius.circular(30)),
          boxShadow: [
            BoxShadow(color: Colors.black38, spreadRadius: 0, blurRadius: 10),
          ],
        ),
        child: ClipRRect(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(30.0),
            topRight: Radius.circular(30.0),
          ),
          child: BottomNavigationBar(
            backgroundColor: Color.fromRGBO(1, 0, 53, 1),
            items: <BottomNavigationBarItem>[
              BottomNavigationBarItem(
                icon: SvgPicture.asset(
                  "assets/arrow.svg",
                  color: _selectedIndex == 0 ? Colors.amber : Colors.green,
                ),
                label: "",
              ),
              BottomNavigationBarItem(
                icon: SvgPicture.asset(
                  "assets/arrow.svg",
                  color: _selectedIndex == 1 ? Colors.amber : Colors.green,
                ),
                label: "",
              ),
              BottomNavigationBarItem(
                icon: SvgPicture.asset(
                  "assets/arrow.svg",
                  color: _selectedIndex == 2 ? Colors.amber : Colors.green,
                ),
                label: "",
              ),
            ],
            showSelectedLabels: true,
            showUnselectedLabels: true,
            currentIndex: _selectedIndex,
            selectedLabelStyle: TextStyle(color: Colors.white),
            unselectedLabelStyle: TextStyle(color: Colors.white),
            onTap: _onItemTapped,
            elevation: 0,
          ),
        ),
      ),
    );
  }
}
