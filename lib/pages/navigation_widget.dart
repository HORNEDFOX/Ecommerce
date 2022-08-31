import 'package:badges/badges.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:testecommerce/pages/cart.dart';
import 'package:testecommerce/pages/home.dart';
import 'package:testecommerce/pages/product.dart';

import '../bloc/bloc/basket_bloc.dart';
import '../bloc/repository/basket_repository.dart';

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
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => BasketBloc(
        basketRepository: RepositoryProvider.of<BasketRepository>(context),
      )..add(LoadBasketEvent()),
      child: Scaffold(
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
          child: Container(
              height: 60,
              decoration: BoxDecoration(
                color: Theme.of(context).primaryColor,
                borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(20),
                  topRight: Radius.circular(20),
                ),
              ),
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Row(children: [
                      Icon(
                        Icons.circle,
                        color: Colors.white,
                        size: 8,
                      ),
                      SizedBox(
                        width: 8,
                      ),
                      Text(
                        'Explore',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 15,
                          fontWeight: FontWeight.w700,
                        ),
                      )
                    ]),
                    Row(children: [
                      InkWell(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const Cart()),
                          );
                        },
                        child: BlocBuilder<BasketBloc, BasketState>(
                            builder: (context, state) {
                          if (state is BasketLoadedState) {
                            return Badge(
                              ignorePointer: true,
                              badgeContent: Text('${state.basket.product!.length}',
                                style: TextStyle(
                                  color: state.basket.product!.length > 0 ? Colors.white : Colors.transparent,
                                  fontWeight: FontWeight.w700,
                                ),
                              ),
                              badgeColor: state.basket.product!.length > 0 ? Color.fromRGBO(255, 110, 78, 1) : Colors.transparent,
                              child: SvgPicture.asset("assets/shop.svg"),
                            );
                          }
                          return Container(
                            child: SvgPicture.asset("assets/shop.svg"),
                          );
                        }),
                      ),
                    ]),
                    Row(children: [
                      SvgPicture.asset(
                        "assets/heartline.svg",
                        width: 19,
                        color: Colors.white,
                      ),
                    ]),
                    Row(children: [
                      SvgPicture.asset("assets/user.svg"),
                    ]),
                  ])),
        ),
      ),
    );
  }
}
