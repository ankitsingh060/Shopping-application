import 'package:flutter/material.dart';
import 'package:shopping_application/constants/error_handling.dart';
import 'package:shopping_application/constants/utils.dart';
import 'package:shopping_application/models/user.dart';
import 'package:http/http.dart' as http;

import '../../../constants/global_variable.dart';

class AuthService{
  void signUpUser({
    required BuildContext context,
    required String email,
    required String password,
    required String name,
}) async {
    try{
      User user = User(
          id: '',
          name: name,
          password: password,
          email: email,
          address: '',
          type: '',
          token: '',

      );

      http.Response res = await http.post(
        Uri.parse('$uri/api/signup') ,
        body: user.toJson(),
        headers: <String, String>{
          'Content-Type': 'application/json; charset=UTF-8',
        },
      );
      
      httpErrorHandle(
          response: res ,
          context: context,
          onSuccess: (){
            showSnackBar(
                context,
                "Account created! Login with same cardentals"
            );
          },
      );
    } catch(e){
      showSnackBar(context, e.toString());
    }
  }
}