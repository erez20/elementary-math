import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

import 'navigation_cubit.dart';
import 'navigation_state.dart';

class NavigationWidget extends StatelessWidget {
  final Widget child;
  const NavigationWidget({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    context.push("/shope/$world");
    return BlocConsumer<NavigationCubit, NavigationState>(
      listener: (contextListener, state) {
        if (state.dest.isNotEmpty) {
          //contextListener.push(state.dest);
        }
      },
      builder: (context, state) {
        if (state.dest.isNotEmpty) {
          context.push(state.dest);
        }

        return Container(
            color: Colors.red,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: child,
            ));
      },
    );
  }
}
