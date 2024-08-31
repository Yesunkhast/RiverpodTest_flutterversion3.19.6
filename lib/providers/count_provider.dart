// import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

// import '../models/product.dart';

part 'count_provider.g.dart';

@riverpod
class CounterNotifier extends _$CounterNotifier {
  // late Product product;
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
