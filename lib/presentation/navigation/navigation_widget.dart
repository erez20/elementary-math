import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

import 'navigation_cubit.dart';
import 'navigation_state.dart';

class NavigationWidget extends StatelessWidget {
  const NavigationWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<NavigationCubit, NavigationState>(
      listener: (contextListener, state) {
        if (state.dest.isNotEmpty) {
          contextListener.push(state.dest);
        }
      },
      builder: (context, state) {
        return Container(
            color: Colors.red,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: SizedBox.shrink(),
            ));
      },
    );
  }
}
