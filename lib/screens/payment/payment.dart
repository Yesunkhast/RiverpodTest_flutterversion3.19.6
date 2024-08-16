import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_files/providers/payment_provider.dart';

import '../../providers/cart_provider.dart';

class Payment extends ConsumerStatefulWidget {
  const Payment({super.key});

  @override
  ConsumerState<Payment> createState() => _PaymentConsumerState();
}

class _PaymentConsumerState extends ConsumerState<Payment> {
  // final int _total = 0;
  @override
  Widget build(BuildContext context) {
    final cartProduct = ref.watch(cartCountProvider);
    final payment = ref.watch(paymentNotifierProvider);
    return Text("Total price - €${payment + cartProduct}");
  }
}
