import 'package:karin/domain/models/app_event_enum.dart';
import 'package:karin/domain/repositories/current_game_repository.dart';
import 'package:karin/domain/use_cases/app_event_use_case.dart';

class ColumnChosenUseCase extends AppEventUseCase {
  ColumnChosenUseCase({
    required int column,
    required super.appEventRepository,
    required CurrentGameRepository currentGameRepository,
  })  : _currentGameRepository = currentGameRepository,
        _column = column;

  final int _column;
  final CurrentGameRepository _currentGameRepository;
  @override
  void execute() {
    _currentGameRepository.setCurrColumn(_column);
    appEventRepository.add(AppEventEnum.columnTap);
  }
}
