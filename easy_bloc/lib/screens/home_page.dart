import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:provider/provider.dart';
import '../bloc/product_bloc/product_bloc.dart';
import '../model.dart';
import '../productRepozitor.dart';

class HomePage extends StatelessWidget {
  HomePage({
    Key? key,
    required this.products,
  }) : super(key: key);
  List products;
  @override
  Widget build(BuildContext context) {
    var vm = RepositoryProvider.of<ProductRepo>(context);
    return ListView(children: [
      SizedBox(
        height: 250,
        child: PageView.builder(
          itemCount: vm.images.length,
          controller: PageController(viewportFraction: 1),
          scrollDirection: Axis.horizontal,
          itemBuilder: (BuildContext context, int itemIndex) {
            return AppMainImage(
              image: vm.images[itemIndex],
            );
          },
        ),
      ),
      Column(
        children: [
          Row(
            children: const [
              Padding(
                padding: EdgeInsets.only(top: 8.0, left: 15, bottom: 0),
                child: Text(
                  'ХИТ ПРОДАЖ',
                  style: TextStyle(fontSize: 18),
                ),
              ),
              Spacer()
            ],
          ),
          Grid(products: products)
        ],
      ),
    ]);
  }
}

class AppMainImage extends StatelessWidget {
  const AppMainImage({
    Key? key,
    required this.image,
  }) : super(key: key);
  final String image;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width,
      height: 250,
      child: Column(children: [
        Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage(image),
              fit: BoxFit.cover,
            ),
            color: Colors.white,
          ),
          width: double.infinity,
          height: 250,
        ),
      ]),
    );
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 1,
      width: MediaQuery.of(context).size.width,
      child: ListView(children: [
        BlocBuilder<ProductBloc, ProductState>(builder: (context, state) {
          if (state is ProductSucces) {
            return SizedBox(
                width: MediaQuery.of(context).size.width * 1,
                height: MediaQuery.of(context).size.height * 1,
                child: HomePage(
                    products:
                        RepositoryProvider.of<ProductRepo>(context).products));
          }
          if (state is ProductError) {
            return Text('err');
          }

          BlocProvider.of<ProductBloc>(context).add(TabButtonEvent());
          return Text('error');
        }),
      ]),
    );
  }
}
