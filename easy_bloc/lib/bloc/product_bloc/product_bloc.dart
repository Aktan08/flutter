import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

import '../../productRepozitor.dart';

part 'product_event.dart';
part 'product_state.dart';

class ProductBloc extends Bloc<ProductEvent, ProductState> {
  ProductBloc({required this.repo}) : super(ProductInitial()) {
    on<TabButtonEvent>(
      (event, emit) async {
        try {
          final product = await repo.getproducts();
          emit(ProductSucces(product: product));
        } catch (e) {
          emit(ProductError());
        }
      },
    );
  }
  final ProductRepo repo;
}
