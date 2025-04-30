import 'dart:convert';
import 'package:flutter/services.dart';

class FFDevEnvironmentValues {
  static const String currentEnvironment = 'Development';
  static const String environmentValuesPath =
      'assets/environment_values/environment.json';

  static final FFDevEnvironmentValues _instance =
      FFDevEnvironmentValues._internal();

  factory FFDevEnvironmentValues() {
    return _instance;
  }

  FFDevEnvironmentValues._internal();

  Future<void> initialize() async {
    try {
      final String response =
          await rootBundle.loadString(environmentValuesPath);
      final data = await json.decode(response);
      _SupabaseAPIURL = data['SupabaseAPIURL'];
      _SupabaseAnonKey = data['SupabaseAnonKey'];
    } catch (e) {
      print('Error loading environment values: $e');
    }
  }

  String _SupabaseAPIURL = '';
  String get SupabaseAPIURL => _SupabaseAPIURL;

  String _SupabaseAnonKey = '';
  String get SupabaseAnonKey => _SupabaseAnonKey;
}
