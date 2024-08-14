import 'dart:ui';

import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:riverpod_files/models/product.dart';

part 'cart_provider.g.dart';

@riverpod
class CartNotifier extends _$CartNotifier {
  @override
  Set<Product> build() {
    return {};
  }

  void addProduct(product) {
    state = {...state, product};
  }

  void removeProduct(product) {
    state = state.where((p) => p.id != product.id).toSet();
  }

  void deleteCaardproduct() {
    state = {};
  }
}

@riverpod
int cartCount(ref) {
  int total = 0;
  final cartProduct = ref.watch(cartNotifierProvider);
  for (Product product in cartProduct) {
    total += product.price;
  }
  return total;
}
