import 'package:karin/domain/models/app_event_enum.dart';
import 'package:karin/domain/repositories/app_event_repository.dart';
import 'package:rxdart/rxdart.dart';

class AppEventRepositoryImpl implements AppEventRepository {
  @override
  BehaviorSubject<AppEventEnum> appEventStream =
      BehaviorSubject<AppEventEnum>.seeded(AppEventEnum.init);

  @override
  void add(AppEventEnum event) {
    appEventStream.add(event);
  }
}
