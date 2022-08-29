import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../bloc/bloc/home_store_bloc.dart';
import '../bloc/repository/home_store_repository.dart';
import 'hot_sales_card.dart';

class HotSales extends StatelessWidget {
  const HotSales({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
        create: (context) => HomeStoreBloc(
              homeStoreRepository:
                  RepositoryProvider.of<HomeStoreRepository>(context),
            )..add(LoadHomeStoreEvent()),
        child: Container(
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    children: [
                      Container(
                        padding: new EdgeInsets.only(left: 25),
                        child: Text(
                          "Hot Sales",
                          style: TextStyle(
                            fontSize: 25,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      Container(
                          padding: new EdgeInsets.only(right: 17),
                          child: TextButton(
                              onPressed: () {},
                              child: Text(
                                "view all",
                                style: TextStyle(
                                  color: Color.fromRGBO(255, 110, 78, 1),
                                  fontSize: 15,
                                  fontWeight: FontWeight.w400,
                                ),
                              ))),
                    ],
                  ),
                ],
              ),
              Row(
                children: [
                  BlocBuilder<HomeStoreBloc, HomeStoreState>(
                      builder: (context, state) {
                    if (state is HomeStoreLoadedState) {
                      return Expanded(
                          child: CarouselSlider.builder(
                        itemCount: state.homestore.length,
                        itemBuilder: (BuildContext context, int itemIndex,
                                int pageViewIndex) =>
                            Container(
                          child: HotSalesCard(element: state.homestore.elementAt(itemIndex),),
                        ),
                        options: CarouselOptions(
                          height: 190.0,
                          initialPage: 0,
                          autoPlay: true,
                          viewportFraction: 1,
                        ),
                      ));
                    }
                    if (state is HomeStoreErrorState) {
                      return Container(
                        child: Text("${state.error}"),
                      );
                    }
                    return Container();
                  }),
                ],
              ),
            ],
          ),
        ));
  }
}
