import 'package:easy_bloc/productRepozitor.dart';
import 'package:easy_bloc/screens/cart_page.dart';
import 'package:easy_bloc/screens/category_page.dart';
import 'package:easy_bloc/screens/home_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:provider/provider.dart';

import 'assets/colors.dart';
import 'assets/images.dart';
import 'bloc/category_bloc/category_bloc.dart';
import 'bloc/page_bloc/page_bloc.dart';
import 'bloc/product_bloc/product_bloc.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

import 'pageRepozitory.dart';

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,
      appBar: AppBar(
        backgroundColor: AppColors.appbarbackground,
        title: SizedBox(
          child: AppImages.easy,
          height: 40,
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 10.0),
            child: AppIcons.filter,
          )
        ],
      ),
      body: SizedBox(
        height: MediaQuery.of(context).size.height * 1,
        width: MediaQuery.of(context).size.width,
        child: ListView(children: [
          BlocBuilder<PageBloc, PageState>(builder: (context, state) {
            if (state is PageSearch) {
              return Text('Search');
            }
            if (state is PageCategory) {
              return BlocProvider(
                  create: (context) => CategoryBloc(
                        repo: RepositoryProvider.of<ProductRepo>(context),
                      ),
                  child: Container(
                      color: AppColors.background = Colors.black,
                      child: CategoryScreen()));
            }
            if (state is PageProfile) {
              return Text('Profile');
            }
            if (state is PageCart) {
              return BlocProvider(
                  create: (context) => ProductBloc(
                        repo: RepositoryProvider.of<ProductRepo>(context),
                      ),
                  child: Container(
                      color: Colors.black,
                      width: MediaQuery.of(context).size.width * 1,
                      height: MediaQuery.of(context).size.height * 1,
                      child: CartScreen()));
            }
            if (state is PageHome) {
              return BlocProvider(
                  create: (context) => ProductBloc(
                        repo: RepositoryProvider.of<ProductRepo>(context),
                      ),
                  child: Container(
                      color: Colors.white,
                      width: MediaQuery.of(context).size.width * 1,
                      height: MediaQuery.of(context).size.height * 1,
                      child: HomeScreen()));
            }
            return Text('Home');
          }),
        ]),
      ),
      bottomNavigationBar: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              blurRadius: 20,
              color: Colors.black.withOpacity(.1),
            )
          ],
        ),
        child: SafeArea(
          child: Container(
            color: Colors.black,
            width: 362.7,
            child: GNav(
              rippleColor: Colors.grey[900]!,
              hoverColor: Colors.grey[900]!,
              backgroundColor: Colors.black,
              gap: 8,
              activeColor: Colors.white,
              iconSize: 24,
              padding: EdgeInsets.all(16),
              duration: Duration(milliseconds: 400),
              tabBackgroundColor: Colors.grey[900]!,
              color: Colors.white,
              tabs: const [
                GButton(
                  icon: Icons.home,
                  text: 'ДОМОЙ',
                ),
                GButton(
                  icon: Icons.search,
                  text: 'ПОИСК',
                ),
                GButton(
                  icon: Icons.menu,
                  text: 'МЕНЮ',
                ),
                GButton(
                  icon: Icons.person,
                  text: 'ПРОФИЛЬ',
                ),
                GButton(
                  icon: Icons.shopping_basket_sharp,
                  text: 'КОРЗИНА',
                ),
              ],
              onTabChange: (index) {
                RepositoryProvider.of<PageRepo>(context).selectedindex = index;
                BlocProvider.of<PageBloc>(context).add(PageTabChangeEvent());
              },
            ),
          ),
        ),
      ),
    );
  }
}
