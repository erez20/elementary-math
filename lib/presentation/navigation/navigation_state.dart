import 'package:equatable/equatable.dart';

class NavigationState extends Equatable {
  final String dest;
  final String time;

  const NavigationState({required this.dest, required this.time});

  @override
  List<Object?> get props => [dest, time];
}
