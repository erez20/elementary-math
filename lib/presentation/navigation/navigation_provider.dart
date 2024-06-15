import 'package:fimber/fimber.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:karin/domain/use_cases/app_listener_use_case.dart';
import 'package:karin/main/di.dart';
import 'package:karin/presentation/navigation/navigation_cubit.dart';

import 'navigation_widget.dart';

class NavigationProvider extends StatelessWidget {
  const NavigationProvider({super.key, required this.child});

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) {
        return NavigationCubit(appListenerUseCase: getIt<AppListenerUseCase>())
          ..init();
      },
      child: NavigationWidget(child: child),
    );
  }
}
