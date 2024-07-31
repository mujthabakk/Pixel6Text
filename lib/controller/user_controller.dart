import 'package:pixel6_machine_test/view/pages/home_page.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:pixel6_machine_test/model/user_model/user_model.dart';
import 'package:pixel6_machine_test/service/user_service.dart';

part 'user_controller.g.dart';

@riverpod
Future<UserModel> userData(UserDataRef ref) async {
  final gender = ref.watch(genderProvider);
  final country = ref.watch(countryProvider);
  return await UserService().getUser(gender: gender, country: country);
}

final initialUserDataProvider = FutureProvider<UserModel>((ref) async {
  return await UserService().getUser();
});
