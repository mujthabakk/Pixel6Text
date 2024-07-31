import 'package:dio/dio.dart';
import 'package:pixel6_machine_test/core/exception/api_exception.dart';
import 'package:pixel6_machine_test/model/user_model/user_model.dart';

class UserService {
  final dio = Dio(BaseOptions(baseUrl: 'https://dummyjson.com'));

  Future<UserModel> getUser({String? gender, String? country}) async {
    try {
      // Construct query parameters
      Map<String, dynamic> queryParams = {};
      if (gender != null && gender.isNotEmpty) queryParams['gender'] = gender;
      if (country != null && country.isNotEmpty) {
        queryParams['country'] = country;
      }

      Response response = await dio.get('/users', queryParameters: queryParams);
      if (response.statusCode == 200) {
        return UserModel.fromJson(response.data);
      } else {
        throw Exception('Failed to load user data');
      }
    } on DioException catch (e) {
      throw Exception('Failed to load user data: ${e.message}');
    } catch (e) {
      throw ApiException('An unexpected error occurred: $e');
    }
  }
}
