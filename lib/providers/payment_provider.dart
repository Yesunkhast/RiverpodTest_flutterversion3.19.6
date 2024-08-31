// import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:riverpod_files/providers/cart_provider.dart';

import '../models/product.dart';

part 'payment_provider.g.dart';

@riverpod
class PaymentNotifier extends _$PaymentNotifier {
  @override
  dynamic build() {
    return 0;
  }

  void increment(Product product) {
    state += product.price;
  }

  void less(Product product) {
    final uldegdel = ref.watch(cartCountProvider);
    if ((uldegdel - product.price) > 0) state -= product.price;
  }
}
