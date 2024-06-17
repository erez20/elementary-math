import 'package:karin/domain/models/app_event_enum.dart';
import 'package:karin/domain/models/num_info.dart';
import 'package:karin/domain/repositories/current_game_repository.dart';
import 'package:karin/domain/use_cases/app_event_use_case.dart';

class OnColumnSelectedUseCase extends AppEventUseCase {
  OnColumnSelectedUseCase({
    required NumInfoModel model,
    required super.appEventRepository,
    required CurrentGameRepository currentGameRepository,
  })  : _currentGameRepository = currentGameRepository,
        _numInfoModel = model;

  final NumInfoModel _numInfoModel;
  final CurrentGameRepository _currentGameRepository;
  @override
  void execute() {
    _currentGameRepository.setNumInfoModel(_numInfoModel);
    appEventRepository.add(AppEventEnum.columnTap);
  }
}
