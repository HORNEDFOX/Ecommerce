import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:testecommerce/widgets/app_bar_product.dart';
import 'package:testecommerce/widgets/product_detail.dart';

import '../bloc/bloc/product_bloc.dart';
import '../bloc/repository/product_repository.dart';

class Product extends StatefulWidget {
  const Product({Key? key}) : super(key: key);

  @override
  _ProductState createState() => _ProductState();
}

class _ProductState extends State<Product> {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => ProductBloc(
        productRepository: RepositoryProvider.of<ProductRepository>(context),
      )..add(LoadProductEvent()),
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: CustomScrollView(slivers: [
          SliverAppBar(
            backgroundColor: Color.fromRGBO(248, 248, 248, 1),
            toolbarHeight: 80,
            floating: false,
            pinned: true,
            elevation: 0.0,
            flexibleSpace: const FlexibleSpaceBar(
              background: AppBarProduct(),
            ),
          ),
          BlocBuilder<ProductBloc, ProductState>(builder: (context, state) {
            if (state is ProductLoadedState) {
              return SliverToBoxAdapter(
                  child: Expanded(
                      child: CarouselSlider.builder(
                itemCount: state.product.images!.length,
                itemBuilder:
                    (BuildContext context, int itemIndex, int pageViewIndex) =>
                        Container(
                  //width: 226,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                          color: Color.fromRGBO(204, 204, 204, 0.2),
                          offset: Offset(1.0, 1.0),
                          blurRadius: 12.0,
                        ),
                      ]),
                  child: Container(
                    margin: EdgeInsets.symmetric(horizontal: 5, vertical: 15),
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: NetworkImage(state.product.images!
                            .elementAt(itemIndex)
                            .toString()),
                        fit: BoxFit.fill,
                      ),
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                ),
                options: CarouselOptions(
                  height: 335.0,
                  initialPage: 0,
                  autoPlay: true,
                  viewportFraction: 0.7,
                  enlargeCenterPage: true,
                  //aspectRatio: 1.2,
                ),
              )));
            }
            if (state is ProductErrorState) {
              return SliverToBoxAdapter(
                child: Text("${state.error}"),
              );
            }
            return SliverToBoxAdapter();
          }),
          SliverToBoxAdapter(
            child: SizedBox(
              height: 20,
            ),
          ),
          SliverToBoxAdapter(
            child: BlocBuilder<ProductBloc, ProductState>(
                builder: (context, state) {
              if (state is ProductLoadedState) {
                return ProductDetail(element: state.product,);
              }
              return Container();
            }),
          ),
        ]),
      ),
    );
  }
}
