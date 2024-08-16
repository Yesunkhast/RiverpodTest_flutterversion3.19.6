import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'product_counter.g.dart';

@riverpod
class ProductCounterNotifier extends _$ProductCounterNotifier {
  @override
  dynamic build() {
    return 0;
  }

  void getCount(int number) {
    state = number;
  }

  void reset() {
    state = 0;
  }
}

@riverpod
// ignore: non_constant_identifier_names
int TotalPayment(ref) {
  return 0;
}
