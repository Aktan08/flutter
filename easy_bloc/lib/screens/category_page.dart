import 'package:easy_bloc/screens/home_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../bloc/category_bloc/category_bloc.dart';
import '../bloc/product_bloc/product_bloc.dart';
import '../model.dart';
import '../productRepozitor.dart';

class CategoryScreen extends StatelessWidget {
  const CategoryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var vm = RepositoryProvider.of<ProductRepo>(context);
    return SizedBox(
      height: MediaQuery.of(context).size.height * 1,
      width: MediaQuery.of(context).size.width * 1,
      child: DefaultTabController(
        length: 6,
        child: ListView(children: [
          BlocBuilder<CategoryBloc, CategoryState>(builder: (context, state) {
            if (state is CategorySearchState) {
              return SizedBox(
                width: MediaQuery.of(context).size.width * 1,
                height: MediaQuery.of(context).size.height * 1,
                child: ListView(
                  children: [
                    SizedBox(
                      width: MediaQuery.of(context).size.width * 1,
                      height: 40,
                      child:
                          ListView(scrollDirection: Axis.horizontal, children: [
                        SizedBox(
                          width: MediaQuery.of(context).size.width * 2,
                          height: 40,
                          child: TabBar(
                            labelColor: Colors.white,
                            indicatorColor: Colors.white,
                            tabs: [
                              Tab(child: Text('ДЖИНСЫ')),
                              Tab(child: Text('ЧИНОСЫ')),
                              Tab(child: Text('ШОРТЫ')),
                              Tab(child: Text('ВЕЛВЕТ')),
                              Tab(child: Text('КЛАССИКА')),
                              Tab(child: Text('СЛИМ')),
                            ],
                          ),
                        ),
                      ]),
                    ),
                    Grid(products: vm.products),
                  ],
                ),
              );
            }
            return const Defult();
          }),
        ]),
      ),
    );
  }
}

class Defult extends StatelessWidget {
  const Defult({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: DefaultTabController(
        length: 2,
        child: Column(children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                width: MediaQuery.of(context).size.width * 1,
                child: const TabBar(
                  labelColor: Colors.white,
                  indicatorColor: Colors.white,
                  tabs: [
                    Tab(child: Text('МУЖСКОЙ')),
                    Tab(child: Text('ЖЕНСКИЙ')),
                  ],
                ),
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width * 1,
                height: MediaQuery.of(context).size.height * 1,
                child: TabBarView(
                  children: [
                    Column(
                      children: const [
                        CategoryButton(buttonName: 'НОВАЯ КОЛЛЕКЦИЯ', num: 0),
                        CategoryButton(buttonName: 'ШТАНЫ', num: 1),
                        CategoryButton(buttonName: 'ФУТБОЛКИ', num: 2),
                        CategoryButton(buttonName: 'АКСЕССУАРЫ', num: 3),
                        CategoryButton(buttonName: 'СУМКИ', num: 4),
                        CategoryButton(buttonName: 'ОБУВЬ', num: 5),
                        CategoryButton(buttonName: 'КУРТКИ', num: 6),
                      ],
                    ),
                    Column(
                      children: const [
                        CategoryButton(buttonName: 'НОВАЯ КОЛЛЕКЦИЯ', num: 0),
                        CategoryButton(buttonName: 'ШТАНЫ', num: 1),
                        CategoryButton(buttonName: 'ФУТБОЛКИ', num: 2),
                        CategoryButton(buttonName: 'АКСЕССУАРЫ', num: 3),
                        CategoryButton(buttonName: 'СУМКИ', num: 4),
                        CategoryButton(buttonName: 'ОБУВЬ', num: 5),
                        CategoryButton(buttonName: 'КУРТКИ', num: 6),
                      ],
                    ),
                  ],
                ),
              )
            ],
          ),
        ]),
      ),
    );
  }
}

class CategoryButton extends StatefulWidget {
  const CategoryButton({
    Key? key,
    required this.num,
    required this.buttonName,
  }) : super(key: key);
  final int num;
  final String buttonName;

  @override
  State<CategoryButton> createState() => _CategoryButtonState();
}

class _CategoryButtonState extends State<CategoryButton> {
  @override
  Widget build(BuildContext context) {
    var vm = RepositoryProvider.of<ProductRepo>(context);
    return TextButton(
      onPressed: () {
        BlocProvider.of<CategoryBloc>(context).add(PressButtonEvent());
      },
      child: Text(
        widget.buttonName,
        style: const TextStyle(
          color: Colors.white,
          fontSize: 16,
        ),
      ),
    );
  }
}
