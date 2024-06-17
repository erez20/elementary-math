import 'package:karin/domain/models/num_info.dart';

abstract class CurrentGameRepository {
  void setNumInfoModel(NumInfoModel model);
  NumInfoModel get numInfoMode;
}
