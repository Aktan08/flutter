import 'package:easy_bloc/pageRepozitory.dart';
import 'package:easy_bloc/productRepozitor.dart';
import 'package:easy_bloc/main_app.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'bloc/page_bloc/page_bloc.dart';
import 'bloc/product_bloc/product_bloc.dart';
import 'dio_settings.dart';

void main(List<String> args) {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiRepositoryProvider(
      providers: [
        RepositoryProvider(
          create: (context) => DioSettings(),
        ),
        RepositoryProvider(
          create: (context) =>
              ProductRepo(dio: RepositoryProvider.of<DioSettings>(context).dio),
        ),
        RepositoryProvider(
          create: (context) => PageRepo(),
        ),
      ],
      child: BlocProvider(
        create: (context) => PageBloc(
          repo: RepositoryProvider.of<PageRepo>(context),
        ),
        child: const MaterialApp(
          home: MainApp(),
        ),
      ),
    );
  }
}
