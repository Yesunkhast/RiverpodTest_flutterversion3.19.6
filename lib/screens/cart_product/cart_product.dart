import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_files/providers/cart_provider.dart';

class Content extends ConsumerWidget {
  const Content({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final cartProducts = ref.watch(cartNotifierProvider);
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
                Text('${product.title}...'),
                Expanded(child: Container()),
                // const Expanded(child: SizedBox()),
                Text("€${product.price}"),
              ],
            ),
          );
        }).toList(),
      ], // output cart products here
    );
  }
}
