import 'package:karin/domain/repositories/current_game_repository.dart';

class CurrentGameRepositoryImpl implements CurrentGameRepository {
  int _column = 0;

  @override
  void setCurrColumn(int newColumn) {
    _column = newColumn;
  }

  @override
  int get column => _column;
}
