import 'package:flutter_trainin/core/exceptions/duration_exceptions.dart';

enum DurationEnums { low, medium, high, high2 }

extension DurationEnumsExtension on DurationEnums {
  Duration get time {
    switch (this) {
      case DurationEnums.high:
        return const Duration(seconds: 10);
      case DurationEnums.medium:
        return const Duration(seconds: 5);
      case DurationEnums.low:
        return const Duration(seconds: 2);

      default:
    }
    throw DurationExceptions(this);
  }
}
