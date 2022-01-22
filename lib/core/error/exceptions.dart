class ServerException implements Exception {
  String message = 'Something went wrong';
  ServerException(this.message);
}
