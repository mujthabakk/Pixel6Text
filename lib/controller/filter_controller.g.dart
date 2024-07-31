// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'filter_controller.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$filterControllerHash() => r'ab5cb2f80808f34b29bab9aa44e8dbe539943077';

/// Copied from Dart SDK
class _SystemHash {
  _SystemHash._();

  static int combine(int hash, int value) {
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + value);
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + ((0x0007ffff & hash) << 10));
    return hash ^ (hash >> 6);
  }

  static int finish(int hash) {
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + ((0x03ffffff & hash) << 3));
    // ignore: parameter_assignments
    hash = hash ^ (hash >> 11);
    return 0x1fffffff & (hash + ((0x00003fff & hash) << 15));
  }
}

abstract class _$FilterController
    extends BuildlessAutoDisposeNotifier<List<User>> {
  late final List<User> data;

  List<User> build({
    required List<User> data,
  });
}

/// See also [FilterController].
@ProviderFor(FilterController)
const filterControllerProvider = FilterControllerFamily();

/// See also [FilterController].
class FilterControllerFamily extends Family<List<User>> {
  /// See also [FilterController].
  const FilterControllerFamily();

  /// See also [FilterController].
  FilterControllerProvider call({
    required List<User> data,
  }) {
    return FilterControllerProvider(
      data: data,
    );
  }

  @override
  FilterControllerProvider getProviderOverride(
    covariant FilterControllerProvider provider,
  ) {
    return call(
      data: provider.data,
    );
  }

  static const Iterable<ProviderOrFamily>? _dependencies = null;

  @override
  Iterable<ProviderOrFamily>? get dependencies => _dependencies;

  static const Iterable<ProviderOrFamily>? _allTransitiveDependencies = null;

  @override
  Iterable<ProviderOrFamily>? get allTransitiveDependencies =>
      _allTransitiveDependencies;

  @override
  String? get name => r'filterControllerProvider';
}

/// See also [FilterController].
class FilterControllerProvider
    extends AutoDisposeNotifierProviderImpl<FilterController, List<User>> {
  /// See also [FilterController].
  FilterControllerProvider({
    required List<User> data,
  }) : this._internal(
          () => FilterController()..data = data,
          from: filterControllerProvider,
          name: r'filterControllerProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$filterControllerHash,
          dependencies: FilterControllerFamily._dependencies,
          allTransitiveDependencies:
              FilterControllerFamily._allTransitiveDependencies,
          data: data,
        );

  FilterControllerProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.data,
  }) : super.internal();

  final List<User> data;

  @override
  List<User> runNotifierBuild(
    covariant FilterController notifier,
  ) {
    return notifier.build(
      data: data,
    );
  }

  @override
  Override overrideWith(FilterController Function() create) {
    return ProviderOverride(
      origin: this,
      override: FilterControllerProvider._internal(
        () => create()..data = data,
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        data: data,
      ),
    );
  }

  @override
  AutoDisposeNotifierProviderElement<FilterController, List<User>>
      createElement() {
    return _FilterControllerProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is FilterControllerProvider && other.data == data;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, data.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin FilterControllerRef on AutoDisposeNotifierProviderRef<List<User>> {
  /// The parameter `data` of this provider.
  List<User> get data;
}

class _FilterControllerProviderElement
    extends AutoDisposeNotifierProviderElement<FilterController, List<User>>
    with FilterControllerRef {
  _FilterControllerProviderElement(super.provider);

  @override
  List<User> get data => (origin as FilterControllerProvider).data;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
