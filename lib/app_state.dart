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

  bool _containerVisibility = true;
  bool get containerVisibility => _containerVisibility;
  set containerVisibility(bool _value) {
    _containerVisibility = _value;
  }

  List<String> _profileImgs = [
    'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/anujesh-testing-12h3vf/assets/zg5ir547s7om/erza.jpg',
    'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/anujesh-testing-12h3vf/assets/ij79uzbzisw2/gray.jpg',
    'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/anujesh-testing-12h3vf/assets/j3kxgvmw7two/lucy.jpg',
    'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/anujesh-testing-12h3vf/assets/7myh3k3oztk4/luffy.jpg',
    'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/anujesh-testing-12h3vf/assets/4js6uozmew61/naruto.jpg',
    'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/anujesh-testing-12h3vf/assets/epvwcakeugr7/nami.jpg',
    'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/anujesh-testing-12h3vf/assets/km0opwtbkcf3/miraJ.jpg',
    'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/anujesh-testing-12h3vf/assets/rfhnq8tu2ykt/mira.jpg',
    'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/anujesh-testing-12h3vf/assets/fgkwif017w2f/natsu.jpg',
    'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/anujesh-testing-12h3vf/assets/ljnztffgb6cr/robin.jpg',
    'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/anujesh-testing-12h3vf/assets/8vzma30djc6z/sanji.jpg',
    'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/anujesh-testing-12h3vf/assets/5a4ufr34lofk/zoro.jpg'
  ];
  List<String> get profileImgs => _profileImgs;
  set profileImgs(List<String> _value) {
    _profileImgs = _value;
  }

  void addToProfileImgs(String _value) {
    _profileImgs.add(_value);
  }

  void removeFromProfileImgs(String _value) {
    _profileImgs.remove(_value);
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
