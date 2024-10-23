import 'package:hive/hive.dart';
import 'package:hive_flutter/hive_flutter.dart';

import '../../feature/auth/core/data/models/transaction.dart';
import '../../feature/auth/core/data/models/user.dart';

class HiveService {
  HiveService();

  static const String userBoxName = 'userBox';
  static const String transactionBoxName = 'transactionBox';

  // Initialize Hive
  static Future<void> init() async {
    await Hive.initFlutter();
    _registerAdapters();
  }

  // Register adapters for the models (Add more adapters if needed)
  static void _registerAdapters() {
    Hive.registerAdapter(UserAdapter());
    Hive.registerAdapter(TransactionAdapter());
  }

  // Helper method to ensure the box is open before any operation
  static Future<Box<T>> _getBox<T>(String boxName) async {
    await closeBox(boxName);
    if (!Hive.isBoxOpen(boxName)) {
      return await Hive.openBox<T>(boxName);
    }
    return Hive.box<T>(boxName);
  }

  // Generic method to put data into the box
  static Future<void> putData<T>(String boxName, String key, T data) async {
    var box = await _getBox<T>(boxName);
    await box.put(key, data);
    await closeBox(boxName);
  }

  // Generic method to retrieve all data from a box
  static Future<List<T>> getAllData<T>(String boxName) async {
    var box = await _getBox<T>(boxName);
    final list = box.values.toList();
    await closeBox(boxName);
    return list;
  }

  // Generic method to get a single data entry by key
  static Future<T?> getData<T>(String boxName, String key) async {
    var box = await _getBox<T>(boxName);
    final result = box.get(key);
    await closeBox(boxName);
    return result;
  }

  // Generic method to delete data from the box by key
  static Future<void> deleteData<T>(String boxName, int key) async {
    var box = await _getBox<T>(boxName);
    await box.delete(key);
    await closeBox(boxName);
  }

  // Close Hive box (optional but recommended)
  static Future<void> closeBox<T>(String boxName) async {
    if (Hive.isBoxOpen(boxName)) {
      var box = Hive.box<T>(boxName);
      await box.close();
    }
  }
}
