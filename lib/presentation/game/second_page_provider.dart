import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:karin/domain/models/num_info.dart';
import 'package:karin/domain/use_cases/get_selected_column_use_case.dart';
import 'package:karin/presentation/game/second_page.dart';

import 'second_page_cubit.dart';
import 'second_page_state.dart';

class SecondPageProvider extends StatelessWidget {
  const SecondPageProvider({super.key});

  @override
  Widget build(BuildContext context) {
    GetSelectedColumnUseCase useCase =
        GetIt.instance<GetSelectedColumnUseCase>();
    NumInfoModel model = useCase.execute();
    return BlocProvider(
      create: (context) => SecondPageCubit(),
      child: SecondPage(model: model),
    );
  }
}
