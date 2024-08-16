// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cart_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$cartCountHash() => r'776ef3d8d7f5a49df1a9936b4b904913e19d34ff';

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
String _$cartNotifierHash() => r'd10cf3d1a1802b2d76dd76eb74ebae84e80ad42c';

/// See also [CartNotifier].
@ProviderFor(CartNotifier)
final cartNotifierProvider =
    AutoDisposeNotifierProvider<CartNotifier, List<Product>>.internal(
  CartNotifier.new,
  name: r'cartNotifierProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : _$cartNotifierHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef _$CartNotifier = AutoDisposeNotifier<List<Product>>;
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
