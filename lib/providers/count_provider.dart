// import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'count_provider.g.dart';

@riverpod
class CounterNotifier extends _$CounterNotifier {
  @override
  dynamic build() {
    return 0;
  }

  void increment() {
    state++;
  }

  void reset() {
    state = 0;
  }
}
