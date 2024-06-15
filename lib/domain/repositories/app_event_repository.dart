import 'package:karin/domain/models/app_event_enum.dart';


abstract class AppEventRepository {
  abstract final Stream<AppEventEnum> appEventStream;
  void add(AppEventEnum event);
}
