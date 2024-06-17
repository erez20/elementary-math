import 'package:flutter/material.dart';
import 'package:karin/domain/models/num_info.dart';
import 'package:karin/presentation/app/styles.dart';

class NumItemWidget extends StatelessWidget {
  const NumItemWidget(
      {super.key, required this.model, required this.size, this.onTap});
  final NumInfoModel model;
  final double size;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return Hero(
      tag: model.id,
      child: InkWell(
        onTap: onTap,
        child: Text(
          "${model.value}",
          style: Styles.lob(size, model.color),
        ),
      ),
    );
  }
}
