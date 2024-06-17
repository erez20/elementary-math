import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:karin/domain/models/num_info.dart';
import 'package:karin/domain/use_cases/on_selected_column_use_case.dart';

import 'home_page_state.dart';

class HomePageCubit extends Cubit<HomePageState> {
  HomePageCubit() : super(HomePageState());

  void onItemTapped(NumInfoModel model) {
    GetIt.instance<OnColumnSelectedUseCase>(param1: model).execute();
  }
}
