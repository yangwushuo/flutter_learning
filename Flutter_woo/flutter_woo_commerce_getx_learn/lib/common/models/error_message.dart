import 'dart:convert';

import 'package:collection/collection.dart';

/// 错误体信息
class ErrorMessageModel {
  final int? statusCode;
  final String? error;
  final String? message;

  const ErrorMessageModel({
    this.statusCode,
    this.error,
    this.message,
  });

  factory ErrorMessageModel.fromJson(Map<String, dynamic> json) {
    return ErrorMessageModel(
      statusCode: json['statusCode'] as int?,
      error: json['error'] as String?,
      message: json['message'] as String?,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'statusCode': statusCode,
      'error': error,
      'message': message,
    };
  }
}
