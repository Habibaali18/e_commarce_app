import 'package:flutter/material.dart';

import '../model/login_response_model.dart';
import 'api_services.dart';
class AuthService {
  static Future <LoginResponse>login(
      String email ,
      String password,
      )async{
    final response = await ApiServices.dio.post(
      '/api/auth/login',
      data:{
        'email':email,
        'password': password
      }
    );
    return LoginResponse.fromJson(response.data);

  }
}
