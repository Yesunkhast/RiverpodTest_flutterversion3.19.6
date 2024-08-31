import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_files/providers/cart_provider.dart';
import 'package:riverpod_files/screens/cart_product/cart_product.dart';
import 'package:riverpod_files/screens/payment/payment.dart';

// ignore: must_be_immutable
class CartScreen extends ConsumerWidget {
  CartScreen({super.key});
  bool showCoupon = true;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final cartTotal = ref.watch(cartCountProvider);
    // final test = ref.watch(counterNotifierProvider);
    // final payment = ref.watch(paymentProvider);
    return Scaffold(
      appBar: AppBar(
        title: const Text('Your Cart'),
        centerTitle: true,
        actions: [
          IconButton(
              onPressed: () {
                ref.read(cartNotifierProvider.notifier).deleteCardproduct();
              },
              icon: const Icon(Icons.delete))
        ],
      ),
      body: Container(
        padding: const EdgeInsets.all(30),
        child: Column(
          children: [
            const Content(),
            if (cartTotal > 0) const Payment(),
            Expanded(child: Container()),
            // ListTile(
            //     leading: TextButton(
            //       style: TextButton.styleFrom(
            //         foregroundColor: Colors.black, // This sets the text color
            //       ),
            //       child: const Text('Add'),
            //       onPressed: () =>
            //           ref.read(counterNotifierProvider.notifier).increment(),
            //     ),
            //     title: Center(
            //       child: Text('Count - $test'),
            //     ),
            //     trailing: IconButton(
            //       icon: const Icon(
            //         Icons.restart_alt,
            //       ),
            //       onPressed: () {
            //         ref.read(counterNotifierProvider.notifier).reset();
            //       },
            //     ))
            // // output totals here
          ],
        ),
      ),
    );
  }
}
