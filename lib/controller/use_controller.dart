import 'package:pixel6_machine_test/model/user_model/user_model.dart';
import 'package:pixel6_machine_test/service/user_service.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
part 'use_controller.g.dart';

@riverpod

// fech all data
Future<UserModel> userData(UserDataRef ref) async {
  return await UserService().getUser();
}
