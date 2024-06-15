import 'package:karin/domain/models/app_event_enum.dart';
import 'package:karin/domain/use_cases/app_event_use_case.dart';

class AppListenerUseCase extends AppEventUseCase {
  AppListenerUseCase({required super.appEventRepository});

  @override
  Stream<AppEventEnum> execute() {
    return appEventRepository.appEventStream;
  }
}
