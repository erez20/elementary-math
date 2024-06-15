import 'package:get_it/get_it.dart';
import 'package:karin/data/app_events/app_state_repository_impl.dart';
import 'package:karin/data/current_game/current_game_repository_impl.dart';
import 'package:karin/domain/repositories/app_event_repository.dart';
import 'package:karin/domain/repositories/current_game_repository.dart';
import 'package:karin/domain/use_cases/app_listener_use_case.dart';
import 'package:karin/domain/use_cases/column_chosen_use_case.dart';

GetIt getIt = GetIt.instance;

void diInit() {
  getIt.registerLazySingleton<AppEventRepository>(
      () => AppEventRepositoryImpl());
  getIt.registerLazySingleton<CurrentGameRepository>(
      () => CurrentGameRepositoryImpl());
  //use cases
  getIt.registerFactoryParam<ColumnChosenUseCase, int, void>(
      (column, _) => ColumnChosenUseCase(
            appEventRepository: getIt<AppEventRepository>(),
            currentGameRepository: getIt<CurrentGameRepository>(),
            column: column,
          ));
  getIt.registerFactory<AppListenerUseCase>(() =>
      AppListenerUseCase(appEventRepository: getIt<AppEventRepository>()));
}
