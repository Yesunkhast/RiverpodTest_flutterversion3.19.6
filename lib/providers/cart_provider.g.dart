// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cart_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$cartCountHash() => r'1a7ff206583c2465a8d9bab0555720d93ca5737b';

/// See also [cartCount].
@ProviderFor(cartCount)
final cartCountProvider = AutoDisposeProvider<int>.internal(
  cartCount,
  name: r'cartCountProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : _$cartCountHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef CartCountRef = AutoDisposeProviderRef<int>;
String _$cartNotifierHash() => r'78e137cf2fc3ab7d1dfb2d3ef3413e694c0fbd62';

/// See also [CartNotifier].
@ProviderFor(CartNotifier)
final cartNotifierProvider =
    AutoDisposeNotifierProvider<CartNotifier, Set<Product>>.internal(
  CartNotifier.new,
  name: r'cartNotifierProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : _$cartNotifierHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef _$CartNotifier = AutoDisposeNotifier<Set<Product>>;
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
