// Providers for gender and country filters
import 'package:hooks_riverpod/hooks_riverpod.dart';

final genderProvider = StateProvider<String?>((ref) {
  return null; // Initial value
});

final countryProvider = StateProvider<String?>((ref) {
  return null; // Initial value
});