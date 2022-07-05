import 'package:my_portfolio/app/core/shared/helpers/errors_stack_trace.dart';

abstract class IError implements Exception {
  IError(
    this.message,
    this.stackTrace,
  );
  final String message;
  final StackTrace stackTrace;
}

class DataSourceError implements IError {
  DataSourceError(
    this.message,
    this.stackTrace,
  ) {
    ErrorsStacktrace.printError(
      stackTrace: stackTrace,
      message: message,
      tag: 'DataSourceError',
    );
  }
  @override
  final String message;
  @override
  final StackTrace stackTrace;
}

class MapperModelError implements DataSourceError {
  MapperModelError(
    this.message,
    this.stackTrace,
  ) {
    ErrorsStacktrace.printError(
      stackTrace: stackTrace,
      message: message,
      tag: 'MapperModelError',
    );
  }
  @override
  final String message;
  @override
  final StackTrace stackTrace;
}

class InvalidSearchText implements IError {
  InvalidSearchText(
    this.message,
    this.stackTrace,
  ) {
    ErrorsStacktrace.printError(
      stackTrace: stackTrace,
      message: message,
      tag: 'InvalidSearchText',
    );
  }
  @override
  final String message;
  @override
  final StackTrace stackTrace;
}

class InvalidCredentials implements IError {
  InvalidCredentials(
    this.message,
    this.stackTrace,
  ) {
    ErrorsStacktrace.printError(
      stackTrace: stackTrace,
      message: message,
      tag: 'InvalidCredentials',
    );
  }
  @override
  final String message;
  @override
  final StackTrace stackTrace;
}
