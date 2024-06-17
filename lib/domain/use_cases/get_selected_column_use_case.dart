import 'package:karin/domain/models/app_event_enum.dart';
import 'package:karin/domain/models/num_info.dart';
import 'package:karin/domain/repositories/current_game_repository.dart';
import 'package:karin/domain/use_cases/app_event_use_case.dart';
import 'package:karin/domain/use_cases/use_case.dart';

class GetSelectedColumnUseCase extends UseCase {
  GetSelectedColumnUseCase({
    required CurrentGameRepository currentGameRepository,
  }) : _currentGameRepository = currentGameRepository;

  final CurrentGameRepository _currentGameRepository;
  @override
  NumInfoModel execute() {
    return _currentGameRepository.numInfoMode;
  }
}
