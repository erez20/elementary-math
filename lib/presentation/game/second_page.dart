import 'package:flutter/material.dart';
import 'package:karin/domain/models/num_info.dart';
import 'package:karin/main/widgets/num_item_widget.dart';

class SecondPage extends StatelessWidget {
  const SecondPage({
    super.key,
    required NumInfoModel model,
  }) : _model = model;

  final NumInfoModel _model;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.white,
      body: Center(
        child: NumItemWidget(
          model: _model,
          size: 30,
        ),
      ),
    );
  }
}
