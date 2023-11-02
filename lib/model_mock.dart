
import 'package:json_annotation/json_annotation.dart';

part 'model_mock.g.dart';


@JsonSerializable(explicitToJson: true,genericArgumentFactories: true)
class ModelMock <T> {
  @JsonKey(name: "message")
  String? message;
  @JsonKey(name: "messageCode")
  int? messageCode;
  @JsonKey(name: "numberOfResult")
  int? numberOfResult;
  @JsonKey(name: "result")
  T? result;

  ModelMock({
    this.message,
    this.messageCode,
    this.numberOfResult,
    this.result,
  });

  factory ModelMock.fromJson(Map<String, dynamic> json, T Function(Object? json) fromJsonT) => _$ModelMock1FromJson(json,fromJsonT);

  Map<String, dynamic> toJson(Object Function(T value) toJsonT) => _$ModelMock1ToJson(this, toJsonT);
}

