part of 'product_bloc.dart';

@immutable
abstract class ProductState {}

class ProductInitial extends ProductState {}

class ProductSucces extends ProductState {
  final List? product;
  ProductSucces({required this.product});
}

class ProductError extends ProductState {}
