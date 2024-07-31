import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:pixel6_machine_test/model/user_model/user.dart';

part 'filter_controller.g.dart';

@riverpod
class FilterController extends _$FilterController {
  List<User> _initialData = [];

  @override
  List<User> build({required List<User> data}) {
    _initialData = data;
    return data;
  }

  void filterData(String? gender, String? country) {
    List<User> filteredList = _initialData;

    if (gender != null && gender.isNotEmpty) {
      filteredList = filteredList
          .where((user) => user.gender!.toLowerCase() == gender.toLowerCase())
          .toList();
    }

    if (country != null && country.isNotEmpty) {
      filteredList = filteredList
          .where((user) =>
              user.address!.country!.toLowerCase() == country.toLowerCase())
          .toList();
    }

    state = filteredList;
  }
}
