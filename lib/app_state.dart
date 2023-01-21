import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'flutter_flow/lat_lng.dart';

class FFAppState extends ChangeNotifier {
  static final FFAppState _instance = FFAppState._internal();

  factory FFAppState() {
    return _instance;
  }

  FFAppState._internal() {
    initializePersistedState();
  }

  Future initializePersistedState() async {
    prefs = await SharedPreferences.getInstance();
  }

  void update(VoidCallback callback) {
    callback();
    notifyListeners();
  }

  late SharedPreferences prefs;

  bool _isfavourite = false;
  bool get isfavourite => _isfavourite;
  set isfavourite(bool _value) {
    _isfavourite = _value;
  }

  bool _isMap = false;
  bool get isMap => _isMap;
  set isMap(bool _value) {
    _isMap = _value;
  }

  String _selectedFilter = 'Rides';
  String get selectedFilter => _selectedFilter;
  set selectedFilter(String _value) {
    _selectedFilter = _value;
  }
}

LatLng? _latLngFromString(String? val) {
  if (val == null) {
    return null;
  }
  final split = val.split(',');
  final lat = double.parse(split.first);
  final lng = double.parse(split.last);
  return LatLng(lat, lng);
}
