import 'dart:io';

import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:ya_todo_app/const/app_strings.dart';
import 'package:ya_todo_app/core/domain/models/exceptions/app_exception.dart';
part 'api_exception.freezed.dart';

/// api exeption model
@freezed
class ApiException with _$ApiException implements AppException {
  const factory ApiException.defult(
    String? message,
    String? response,
    int? code,
    StackTrace? stackTrace,
    DateTime? timeStamp,
  ) = _DefaultApiException;

  const factory ApiException.noInternet(
    String? message,
    StackTrace? stackTrace,
    DateTime? timeStamp,
  ) = _NoInternetApiException;

  const factory ApiException.format(
    String? message,
    StackTrace? stackTrace,
    DateTime? timeStamp,
  ) = _FormatApiException;

  const factory ApiException.timeOut(
    String? message,
    StackTrace? stackTrace,
    DateTime? timeStamp,
  ) = _TimeOutApiException;

  const factory ApiException.badRequest(
    String? message,
    String? response,
    StackTrace? stackTrace,
    DateTime? timeStamp,
  ) = _BarRequestApiException;

  const factory ApiException.notAuthorized(
    String? message,
    StackTrace? stackTrace,
    DateTime? timeStamp,
  ) = _AuthApiException;

  const factory ApiException.notFound(
    String? message,
    String? response,
    StackTrace? stackTrace,
    DateTime? timeStamp,
  ) = _NotFoundApiException;

  const factory ApiException.internalServerError(
    String? message,
    StackTrace? stackTrace,
    DateTime? timeStamp,
  ) = _InternalApiException;

  const factory ApiException.requestCancel(
    String? message,
    StackTrace? stackTrace,
  ) = _CancelRequestException;

  const ApiException._();

  factory ApiException.byError(
    Object? error,
    StackTrace stackTrace,
  ) {
    if (error == null) {
      return ApiException.defult(
        ErrorStrings.unknowError,
        null,
        null,
        stackTrace,
        DateTime.now(),
      );
    }
    if (error is SocketException) {
      return ApiException.noInternet(
        ErrorStrings.noInternet,
        stackTrace,
        DateTime.now(),
      );
    }
    if (error is FormatException) {
      return ApiException.format(
        ErrorStrings.formatExc,
        stackTrace,
        DateTime.now(),
      );
    }
    if (error is DioException) {
      if (error.type == DioExceptionType.cancel) {
        return const ApiException.requestCancel(null, null);
      }
      if ([
        DioExceptionType.sendTimeout,
        DioExceptionType.receiveTimeout,
        DioExceptionType.connectionTimeout,
      ].contains(error.type)) {
        return ApiException.timeOut(
          ErrorStrings.timeOut,
          stackTrace,
          DateTime.now(),
        );
      }
      if (error.type == DioExceptionType.connectionError ||
          error.error is SocketException) {
        return ApiException.noInternet(
          ErrorStrings.noInternet,
          stackTrace,
          DateTime.now(),
        );
      }
      if (error.type == DioExceptionType.badResponse) {
        switch (error.response?.statusCode) {
          case 400:
            return ApiException.badRequest(
              error.response?.statusMessage,
              error.response.toString(),
              stackTrace,
              DateTime.now(),
            );
          case 401:
            return ApiException.notAuthorized(
              error.response.toString(),
              stackTrace,
              DateTime.now(),
            );
          case 404:
            return ApiException.notFound(
              error.response?.statusMessage,
              error.response.toString(),
              stackTrace,
              DateTime.now(),
            );

          case 500:
            return ApiException.internalServerError(
              error.response.toString(),
              stackTrace,
              DateTime.now(),
            );

          default:
            return ApiException.defult(
              ErrorStrings.unknowError,
              error.response.toString(),
              error.response?.statusCode,
              stackTrace,
              DateTime.now(),
            );
        }
      }
    }
    return ApiException.defult(
      ErrorStrings.unknowError,
      null,
      null,
      stackTrace,
      DateTime.now(),
    );
  }

  @override
  String get errorMsg => message ?? ErrorStrings.unknowError;

  @override
  StackTrace? get errorStackTrace => StackTrace.current;
}
