import 'package:bloc/bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meta/meta.dart';

import '../../pageRepozitory.dart';

part 'page_event.dart';
part 'page_state.dart';

class PageBloc extends Bloc<PageEvent, PageState> {
  PageBloc({required this.repo}) : super(PageHome()) {
    on<PageTabChangeEvent>((event, emit) {
      if (repo.selectedindex == 0) {
        emit(PageHome());
      }
      if (repo.selectedindex == 1) {
        emit(PageSearch());
      }
      if (repo.selectedindex == 2) {
        emit(PageCategory());
      }
      if (repo.selectedindex == 3) {
        emit(PageProfile());
      }
      if (repo.selectedindex == 4) {
        emit(PageCart());
      }
    });
  }
  final PageRepo repo;
}
