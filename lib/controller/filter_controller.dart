import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:pixel6_machine_test/model/user_model/user.dart';

part 'filter_controller.g.dart';

@riverpod
class FilterController extends _$FilterController {
  List<User> _initialData = []; // Store initial unfiltered data

  @override
  List<User> build({required List<User> data}) {
    _initialData = data; // Initialize _initialData with provided data
    return data; // Return the initial data
  }

  // Method to filter data based on gender and country
  void filterData(String? gender, String? country) {
    List<User> filteredList = _initialData; // Start with the initial data

    // Filter by gender if a gender is provided
    if (gender != null && gender.isNotEmpty) {
      filteredList = filteredList
          .where((user) => user.gender!.toLowerCase() == gender.toLowerCase())
          .toList();
    }

    // Filter by country if a country is provided
    if (country != null && country.isNotEmpty) {
      filteredList = filteredList
          .where((user) =>
              user.address!.country!.toLowerCase() == country.toLowerCase())
          .toList();
    }

    state = filteredList; // Update the state with the filtered list
  }
}
