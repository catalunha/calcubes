class PartsOfOperationException implements Exception {
  final int code;
  final String message;
  PartsOfOperationException({
    required this.code,
    required this.message,
  });
}
