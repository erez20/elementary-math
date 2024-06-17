import 'dart:async';

import 'package:fimber/fimber.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:karin/domain/models/app_event_enum.dart';
import 'package:karin/domain/use_cases/app_listener_use_case.dart';
import 'package:karin/presentation/navigation/navigation_state.dart';

class NavigationCubit extends Cubit<NavigationState> {
  NavigationCubit({required this.appListenerUseCase})
      : super(const NavigationState(dest: "", time: "eee"));

  final AppListenerUseCase appListenerUseCase;
  late final StreamSubscription _streamSubscription;
  init() {
    _streamSubscription = appListenerUseCase.execute().listen((event) {
      Fimber.d("event arrived: ${event.name}");
      if (event == AppEventEnum.init) {
        emit(NavigationState(dest: "/home", time: DateTime.now().toString()));
      } else {
        emit(NavigationState(dest: "/shope", time: DateTime.now().toString()));
      }
      ;
    });
  }

  @override
  Future<void> close() {
    _streamSubscription.cancel();
    return super.close();
  }
}
