// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'products_providers.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$productsHash() => r'48c888b003496256deeeaee20811324bf5f8ab85';

/// See also [products].
@ProviderFor(products)
final productsProvider = AutoDisposeProvider<List<Product>>.internal(
  products,
  name: r'productsProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : _$productsHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef ProductsRef = AutoDisposeProviderRef<List<Product>>;
String _$reducedProductsHash() => r'93bdb7650bf5a8d2295a15f8ce07d42f69e114e5';

/// See also [reducedProducts].
@ProviderFor(reducedProducts)
final reducedProductsProvider = AutoDisposeProvider<List<Product>>.internal(
  reducedProducts,
  name: r'reducedProductsProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$reducedProductsHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef ReducedProductsRef = AutoDisposeProviderRef<List<Product>>;
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
