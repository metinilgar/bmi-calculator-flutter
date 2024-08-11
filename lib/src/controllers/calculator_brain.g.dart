// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'calculator_brain.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$calculatorBrainHash() => r'024350582750d33fbeee1af9b699e49ef3011752';

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

abstract class _$CalculatorBrain extends BuildlessAutoDisposeNotifier<void> {
  late final int height;
  late final int weight;

  void build(
    int height,
    int weight,
  );
}

/// See also [CalculatorBrain].
@ProviderFor(CalculatorBrain)
const calculatorBrainProvider = CalculatorBrainFamily();

/// See also [CalculatorBrain].
class CalculatorBrainFamily extends Family<void> {
  /// See also [CalculatorBrain].
  const CalculatorBrainFamily();

  /// See also [CalculatorBrain].
  CalculatorBrainProvider call(
    int height,
    int weight,
  ) {
    return CalculatorBrainProvider(
      height,
      weight,
    );
  }

  @override
  CalculatorBrainProvider getProviderOverride(
    covariant CalculatorBrainProvider provider,
  ) {
    return call(
      provider.height,
      provider.weight,
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
  String? get name => r'calculatorBrainProvider';
}

/// See also [CalculatorBrain].
class CalculatorBrainProvider
    extends AutoDisposeNotifierProviderImpl<CalculatorBrain, void> {
  /// See also [CalculatorBrain].
  CalculatorBrainProvider(
    int height,
    int weight,
  ) : this._internal(
          () => CalculatorBrain()
            ..height = height
            ..weight = weight,
          from: calculatorBrainProvider,
          name: r'calculatorBrainProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$calculatorBrainHash,
          dependencies: CalculatorBrainFamily._dependencies,
          allTransitiveDependencies:
              CalculatorBrainFamily._allTransitiveDependencies,
          height: height,
          weight: weight,
        );

  CalculatorBrainProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.height,
    required this.weight,
  }) : super.internal();

  final int height;
  final int weight;

  @override
  void runNotifierBuild(
    covariant CalculatorBrain notifier,
  ) {
    return notifier.build(
      height,
      weight,
    );
  }

  @override
  Override overrideWith(CalculatorBrain Function() create) {
    return ProviderOverride(
      origin: this,
      override: CalculatorBrainProvider._internal(
        () => create()
          ..height = height
          ..weight = weight,
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        height: height,
        weight: weight,
      ),
    );
  }

  @override
  AutoDisposeNotifierProviderElement<CalculatorBrain, void> createElement() {
    return _CalculatorBrainProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is CalculatorBrainProvider &&
        other.height == height &&
        other.weight == weight;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, height.hashCode);
    hash = _SystemHash.combine(hash, weight.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin CalculatorBrainRef on AutoDisposeNotifierProviderRef<void> {
  /// The parameter `height` of this provider.
  int get height;

  /// The parameter `weight` of this provider.
  int get weight;
}

class _CalculatorBrainProviderElement
    extends AutoDisposeNotifierProviderElement<CalculatorBrain, void>
    with CalculatorBrainRef {
  _CalculatorBrainProviderElement(super.provider);

  @override
  int get height => (origin as CalculatorBrainProvider).height;
  @override
  int get weight => (origin as CalculatorBrainProvider).weight;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
