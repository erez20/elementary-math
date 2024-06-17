import 'package:get_it/get_it.dart';
import 'package:karin/data/app_events/app_state_repository_impl.dart';
import 'package:karin/data/current_game/current_game_repository_impl.dart';
import 'package:karin/domain/models/num_info.dart';
import 'package:karin/domain/repositories/app_event_repository.dart';
import 'package:karin/domain/repositories/current_game_repository.dart';
import 'package:karin/domain/use_cases/app_listener_use_case.dart';
import 'package:karin/domain/use_cases/get_selected_column_use_case.dart';
import 'package:karin/domain/use_cases/on_selected_column_use_case.dart';

GetIt getIt = GetIt.instance;

void diInit() {
  getIt.registerLazySingleton<AppEventRepository>(
      () => AppEventRepositoryImpl());
  getIt.registerLazySingleton<CurrentGameRepository>(
      () => CurrentGameRepositoryImpl());
  //use cases
  getIt.registerFactoryParam<OnColumnSelectedUseCase, NumInfoModel, void>(
      (model, _) => OnColumnSelectedUseCase(
            appEventRepository: getIt<AppEventRepository>(),
            currentGameRepository: getIt<CurrentGameRepository>(),
            model: model,
          ));

  getIt
      .registerFactory<GetSelectedColumnUseCase>(() => GetSelectedColumnUseCase(
            currentGameRepository: getIt<CurrentGameRepository>(),
          ));

  getIt.registerFactory<AppListenerUseCase>(() =>
      AppListenerUseCase(appEventRepository: getIt<AppEventRepository>()));
}
