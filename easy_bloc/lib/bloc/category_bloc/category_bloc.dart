import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

import '../../pageRepozitory.dart';
import '../../productRepozitor.dart';

part 'category_event.dart';
part 'category_state.dart';

class CategoryBloc extends Bloc<CategoryEvent, CategoryState> {
  CategoryBloc({required this.repo}) : super(CategoryInitial()) {
    on<CategoryEvent>((event, emit) {
      emit((CategorySearchState()));
    });
  }
  final ProductRepo repo;
}
