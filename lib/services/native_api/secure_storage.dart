import 'package:flutter_secure_storage/flutter_secure_storage.dart';

class SecureStorage {
  SecureStorage._();

  // Create storage
  static const _storage = FlutterSecureStorage();

  // Write value
  static Future<void> write(
      {required String key, required String value}) async {
    await _storage.write(key: key, value: value);
  }

  // Read value
  static Future<String?> read({required String key}) async {
    String? value = await _storage.read(key: key);
    return value;
  }

  // Read All value
  static Future<Map<String, String>> readAll() async {
    Map<String, String> value = await _storage.readAll();
    return value;
  }

  // Delete value
  static Future<void> delete({required String key}) async {
    await _storage.delete(key: key);
  }

  // Delete all
  static Future<void> deleteAll() async {
    await _storage.deleteAll();
  }
}
