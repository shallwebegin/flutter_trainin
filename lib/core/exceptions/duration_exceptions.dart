import 'package:flutter_trainin/core/enums/duration_enum.dart';

class DurationExceptions implements Exception {
  final DurationEnums data;

  DurationExceptions(this.data);

  @override
  String toString() {
    return 'Duration not found $data';
  }
}
