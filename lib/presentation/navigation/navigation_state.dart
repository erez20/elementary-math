import 'package:equatable/equatable.dart';

class NavigationState extends Equatable {
  final String dest;

  const NavigationState({required this.dest});

  @override
  List<Object?> get props => [dest];
}
