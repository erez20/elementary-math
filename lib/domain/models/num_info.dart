import 'package:flutter/material.dart';

class NumInfoModel {
  final int value;
  final Color color;
  final String id;

  NumInfoModel({
    required this.value,
    required this.color,
    required this.id,
  });

  static nullModel() => NumInfoModel(value: 0, color: Colors.black, id: "");
}
