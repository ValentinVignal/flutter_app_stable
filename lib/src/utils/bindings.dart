T checkInstance<T>(T? instance) {
  if (instance == null) {
    throw Exception('$T is not initialized');
  }
  return instance;
}
