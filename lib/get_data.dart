import 'dart:convert';
import 'package:flutter/services.dart';
import 'mock1/result1.dart';
import 'mock2/result2.dart';
import 'model_mock.dart';

class GetJsonObject {
  final String fileName;

  GetJsonObject({required this.fileName});

  Future<ModelMock<Result2>> fromJsonFile() async  {
    String jsonString = await rootBundle.loadString(fileName);
    var data = await jsonDecode(jsonString);
    ModelMock<Result2> welcomeGeneric =  ModelMock.fromJson(data, (json) => Result2.fromJson(data["result"]));
    return welcomeGeneric;
    // Welcome welcome = Welcome.fromJson(data);
    // return welcome;
  }
}