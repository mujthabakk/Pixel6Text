import 'package:dio/dio.dart';
import 'package:pixel6_machine_test/model/user_model/user_model.dart';

// UserService for fetching data
class UserService {
  final dio = Dio(BaseOptions(baseUrl: 'https://dummyjson.com'));

  Future<UserModel> getUser({String? gender}) async {
    try {
      // Construct query parameters

      Response response = await dio.get(
        '/users',
      );
      if (response.statusCode == 200) {
        return UserModel.fromJson(response.data);
      } else {
        throw Exception('Failed to load user data');
      }
    } on DioException catch (e) {
      throw Exception('Failed to load user data: ${e.message}');
    } catch (e) {
      throw Exception('An unexpected error occurred: $e');
    }
  }
}
