import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_files/models/product.dart';
import 'package:riverpod_files/providers/cart_provider.dart';
import 'package:riverpod_files/providers/payment_provider.dart';

class Content extends ConsumerStatefulWidget {
  const Content({super.key});

  @override
  ConsumerState<Content> createState() => _ContentConsumerState();
}

class _ContentConsumerState extends ConsumerState<Content> {
  void _incrementCounter(Product product) {
    setState(() {
      product.count++;
    });
  }

  void _minusCounter(Product product) {
    setState(() {
      if (product.count > 0) {
        product.count--;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    final cartProducts = ref.watch(cartNotifierProvider);
    // final product = ref.watch(cartNotifierProvider);
    // final count = ref.watch(paymentProvider);
    return Column(
      children: <Widget>[
        ...cartProducts.map((product) {
          return Container(
            padding: const EdgeInsets.only(top: 10, bottom: 10),
            child: Row(
              children: [
                Image.asset(
                  product.image,
                  width: 60,
                  height: 60,
                ),
                const SizedBox(
                  width: 10,
                ),
                Text(product.title),
                Expanded(child: Container()),
                Text('${product.count}'),
                // const Expanded(child: SizedBox()),
                IconButton(
                    onPressed: () {
                      _incrementCounter(product);
                      ref
                          .read(paymentNotifierProvider.notifier)
                          .increment(product);
                    },
                    icon: const Icon(Icons.add)),
                IconButton(
                    onPressed: () {
                      _minusCounter(product);
                      ref.read(paymentNotifierProvider.notifier).less(product);
                    },
                    icon: const Icon(Icons.remove)),
                Text("€${product.price}"),
              ],
            ),
          );
        }).toList(),
      ], // output cart products here
    );
  }
}
