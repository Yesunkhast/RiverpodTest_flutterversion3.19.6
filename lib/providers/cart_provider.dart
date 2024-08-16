import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:riverpod_files/models/product.dart';

part 'cart_provider.g.dart';

@riverpod
class CartNotifier extends _$CartNotifier {
  int count = 0;
  @override
  List<Product> build() {
    return [];
  }

  void addProduct(product) {
    product.count++;
    state = [...state, product];
  }

  void removeProduct(product) {
    product.count = 0;
    state = state.where((p) => p.id != product.id).toList();
  }

  void deleteCardproduct() {
    for (Product product in state) {
      product.count = 0;
    }
    state = [];
  }
}

@riverpod
int cartCount(ref) {
  int total = 0;
  final cartProduct = ref.watch(cartNotifierProvider);
  for (Product product in cartProduct) {
    total += product.price * product.count;
  }
  return total;
}
