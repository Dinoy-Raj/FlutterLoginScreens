import 'package:flutter/material.dart';
import 'dart:convert';
import 'package:http/http.dart' as http;

import 'package:logintwo/model/login_model.dart';


class APIServices{
  Future<LoginResponseModel> login(LoginRequestModel requestModel) async{
    String url = "https://anonymousgbuapi.herokuapp.com/";

    final response = await http.post(url,body:requestModel.toJason());

    if(response.statusCode == 200 || response.statusCode == 400) {
      return LoginResponseModel.fromJason(json.decode(response.body));
    }
    else{
      throw Exception("failed to load data");
    }
    }
  }
