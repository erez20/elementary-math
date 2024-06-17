import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:karin/domain/models/num_info.dart';
import 'package:karin/main/widgets/num_item_widget.dart';

import 'home_page_cubit.dart';
import 'home_page_state.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: SafeArea(
          child: Column(
        children: [_xxx(1, 5)],
      )),
    );
  }

  Widget _xxx(int from, int to) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: List<Widget>.generate(
        to - from + 1,
        (index) {
          var num = from + index;
          final model = NumInfoModel(
              value: num, color: Colors.blue[num * 100 % 999]!, id: "tag_$num");
          return homeItem(model);
        },
      ),
    );
  }

  Widget homeItem(NumInfoModel model) {
    return BlocBuilder<HomePageCubit, HomePageState>(
      builder: (context, state) {
        final cubit = context.read<HomePageCubit>();
        return NumItemWidget(
          model: model,
          size: 60,
          onTap: () => cubit.onItemTapped(model),
        );
      },
    );
  }
}
