import 'package:flutter/material.dart';
import 'package:karin/domain/models/num_info.dart';
import 'package:karin/domain/repositories/current_game_repository.dart';

class CurrentGameRepositoryImpl implements CurrentGameRepository {
  NumInfoModel _numInfoModel = NumInfoModel.nullModel();

  @override
  void setNumInfoModel(NumInfoModel model) {
    _numInfoModel = model;
  }

  @override
  NumInfoModel get numInfoMode => _numInfoModel;
}
