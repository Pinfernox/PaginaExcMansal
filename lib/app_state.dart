import 'package:flutter/material.dart';

class FFAppState extends ChangeNotifier {
  static FFAppState _instance = FFAppState._internal();

  factory FFAppState() {
    return _instance;
  }

  FFAppState._internal();

  static void reset() {
    _instance = FFAppState._internal();
  }

  Future initializePersistedState() async {}

  void update(VoidCallback callback) {
    callback();
    notifyListeners();
  }

  String _img1Gallery = '';
  String get img1Gallery => _img1Gallery;
  set img1Gallery(String value) {
    _img1Gallery = value;
  }

  String _img2Gallery = '';
  String get img2Gallery => _img2Gallery;
  set img2Gallery(String value) {
    _img2Gallery = value;
  }

  String _img3Gallery = '';
  String get img3Gallery => _img3Gallery;
  set img3Gallery(String value) {
    _img3Gallery = value;
  }

  String _img4Gallery = '';
  String get img4Gallery => _img4Gallery;
  set img4Gallery(String value) {
    _img4Gallery = value;
  }

  bool _showDataGallery = false;
  bool get showDataGallery => _showDataGallery;
  set showDataGallery(bool value) {
    _showDataGallery = value;
  }

  String _info = '';
  String get info => _info;
  set info(String value) {
    _info = value;
  }

  bool _showButtonSheet = false;
  bool get showButtonSheet => _showButtonSheet;
  set showButtonSheet(bool value) {
    _showButtonSheet = value;
  }
}
