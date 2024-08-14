import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_files/providers/cart_provider.dart';
import 'package:riverpod_files/screens/cart_product/cart_product.dart';

// ignore: must_be_immutable
class CartScreen extends ConsumerWidget {
  CartScreen({super.key});
  bool showCoupon = true;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final cartTotal = ref.watch(cartCountProvider);
    return Scaffold(
      appBar: AppBar(
        title: const Text('Your Cart'),
        centerTitle: true,
        // actions: [],
      ),
      body: Container(
        padding: const EdgeInsets.all(30),
        child: Column(
          children: [
            const Content(),
            cartTotal > 0
                ? Text("Total price - €$cartTotal")
                : Expanded(child: Container())
            // // output totals here
          ],
        ),
      ),
    );
  }
}
