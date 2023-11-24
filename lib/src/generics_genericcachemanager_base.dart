import 'dart:io';

class Cache<T> {
  final Map<String, T> _storage = {};

  void store(T item, String key) {
    _storage[key] = item;
  }

  T retrieve(String key) {
    bool keyIsInvalid = true;
    while (keyIsInvalid) {
      if (_storage.containsKey(key)) {
        keyIsInvalid = false;
      } else {
        print("The item does not exist! Try again.");
        print("Please enter the key again");
        key = stdin.readLineSync()!;
      }
    }

    return _storage[key]!;
  }
}
