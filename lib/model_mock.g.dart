// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'model_mock.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ModelMock<T> _$ModelMock1FromJson<T>(
  Map<String, dynamic> json,
  T Function(Object? json) fromJsonT,
) =>
    ModelMock<T>(
      message: json['message'] as String?,
      messageCode: json['messageCode'] as int?,
      numberOfResult: json['numberOfResult'] as int?,
      result: _$nullableGenericFromJson(json['result'], fromJsonT),
    );

Map<String, dynamic> _$ModelMock1ToJson<T>(
  ModelMock<T> instance,
  Object? Function(T value) toJsonT,
) =>
    <String, dynamic>{
      'message': instance.message,
      'messageCode': instance.messageCode,
      'numberOfResult': instance.numberOfResult,
      'result': _$nullableGenericToJson(instance.result, toJsonT),
    };

T? _$nullableGenericFromJson<T>(
  Object? input,
  T Function(Object? json) fromJson,
) =>
    input == null ? null : fromJson(input);

Object? _$nullableGenericToJson<T>(
  T? input,
  Object? Function(T value) toJson,
) =>
    input == null ? null : toJson(input);
