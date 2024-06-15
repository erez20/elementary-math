import 'package:karin/domain/repositories/app_event_repository.dart';

import 'use_case.dart';

abstract class AppEventUseCase extends UseCase {
  final AppEventRepository appEventRepository;

  AppEventUseCase({required this.appEventRepository});
}
