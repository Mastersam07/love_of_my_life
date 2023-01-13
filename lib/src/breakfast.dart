import 'package:love_of_my_life/love_of_my_life.dart';

class Breakfast {
  final BreakfastType type;
  final BreakfastServiceMethod serviceMethod;
  final BreakfastStatus status;

  const Breakfast({
    required this.type,
    required this.serviceMethod,
    required this.status,
  });

  Breakfast copyWith({
    final BreakfastType? type,
    final BreakfastServiceMethod? serviceMethod,
    final BreakfastStatus? status,
  }) {
    return Breakfast(
      type: type ?? this.type,
      serviceMethod: serviceMethod ?? this.serviceMethod,
      status: status ?? this.status,
    );
  }
}
