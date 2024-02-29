import 'package:flutter/material.dart';
import '/backend/backend.dart';
import 'backend/api_requests/api_manager.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'flutter_flow/flutter_flow_util.dart';

class FFAppState extends ChangeNotifier {
  static FFAppState _instance = FFAppState._internal();

  factory FFAppState() {
    return _instance;
  }

  FFAppState._internal();

  static void reset() {
    _instance = FFAppState._internal();
  }

  Future initializePersistedState() async {
    prefs = await SharedPreferences.getInstance();
    _safeInit(() {
      _favoritesProject =
          prefs.getStringList('ff_favoritesProject') ?? _favoritesProject;
    });
    _safeInit(() {
      _heroBanner = prefs.getStringList('ff_heroBanner') ?? _heroBanner;
    });
    _safeInit(() {
      _favoritesHelper =
          prefs.getStringList('ff_favoritesHelper') ?? _favoritesHelper;
    });
  }

  void update(VoidCallback callback) {
    callback();
    notifyListeners();
  }

  late SharedPreferences prefs;

  List<DocumentReference> _projectLists = [];
  List<DocumentReference> get projectLists => _projectLists;
  set projectLists(List<DocumentReference> _value) {
    _projectLists = _value;
  }

  void addToProjectLists(DocumentReference _value) {
    _projectLists.add(_value);
  }

  void removeFromProjectLists(DocumentReference _value) {
    _projectLists.remove(_value);
  }

  void removeAtIndexFromProjectLists(int _index) {
    _projectLists.removeAt(_index);
  }

  void updateProjectListsAtIndex(
    int _index,
    DocumentReference Function(DocumentReference) updateFn,
  ) {
    _projectLists[_index] = updateFn(_projectLists[_index]);
  }

  void insertAtIndexInProjectLists(int _index, DocumentReference _value) {
    _projectLists.insert(_index, _value);
  }

  String _F9 =
      'https://www.shutterstock.com/image-photo/cute-teddy-bear-isolated-on-600nw-2022108608.jpg';
  String get F9 => _F9;
  set F9(String _value) {
    _F9 = _value;
  }

  bool _searchActive = false;
  bool get searchActive => _searchActive;
  set searchActive(bool _value) {
    _searchActive = _value;
  }

  List<String> _favoritesProject = [];
  List<String> get favoritesProject => _favoritesProject;
  set favoritesProject(List<String> _value) {
    _favoritesProject = _value;
    prefs.setStringList('ff_favoritesProject', _value);
  }

  void addToFavoritesProject(String _value) {
    _favoritesProject.add(_value);
    prefs.setStringList('ff_favoritesProject', _favoritesProject);
  }

  void removeFromFavoritesProject(String _value) {
    _favoritesProject.remove(_value);
    prefs.setStringList('ff_favoritesProject', _favoritesProject);
  }

  void removeAtIndexFromFavoritesProject(int _index) {
    _favoritesProject.removeAt(_index);
    prefs.setStringList('ff_favoritesProject', _favoritesProject);
  }

  void updateFavoritesProjectAtIndex(
    int _index,
    String Function(String) updateFn,
  ) {
    _favoritesProject[_index] = updateFn(_favoritesProject[_index]);
    prefs.setStringList('ff_favoritesProject', _favoritesProject);
  }

  void insertAtIndexInFavoritesProject(int _index, String _value) {
    _favoritesProject.insert(_index, _value);
    prefs.setStringList('ff_favoritesProject', _favoritesProject);
  }

  List<String> _heroBanner = [
    'gs://auai-nsvuz7.appspot.com/admin/스크린샷 2024-02-20 194954.png'
  ];
  List<String> get heroBanner => _heroBanner;
  set heroBanner(List<String> _value) {
    _heroBanner = _value;
    prefs.setStringList('ff_heroBanner', _value);
  }

  void addToHeroBanner(String _value) {
    _heroBanner.add(_value);
    prefs.setStringList('ff_heroBanner', _heroBanner);
  }

  void removeFromHeroBanner(String _value) {
    _heroBanner.remove(_value);
    prefs.setStringList('ff_heroBanner', _heroBanner);
  }

  void removeAtIndexFromHeroBanner(int _index) {
    _heroBanner.removeAt(_index);
    prefs.setStringList('ff_heroBanner', _heroBanner);
  }

  void updateHeroBannerAtIndex(
    int _index,
    String Function(String) updateFn,
  ) {
    _heroBanner[_index] = updateFn(_heroBanner[_index]);
    prefs.setStringList('ff_heroBanner', _heroBanner);
  }

  void insertAtIndexInHeroBanner(int _index, String _value) {
    _heroBanner.insert(_index, _value);
    prefs.setStringList('ff_heroBanner', _heroBanner);
  }

  List<String> _favoritesHelper = [];
  List<String> get favoritesHelper => _favoritesHelper;
  set favoritesHelper(List<String> _value) {
    _favoritesHelper = _value;
    prefs.setStringList('ff_favoritesHelper', _value);
  }

  void addToFavoritesHelper(String _value) {
    _favoritesHelper.add(_value);
    prefs.setStringList('ff_favoritesHelper', _favoritesHelper);
  }

  void removeFromFavoritesHelper(String _value) {
    _favoritesHelper.remove(_value);
    prefs.setStringList('ff_favoritesHelper', _favoritesHelper);
  }

  void removeAtIndexFromFavoritesHelper(int _index) {
    _favoritesHelper.removeAt(_index);
    prefs.setStringList('ff_favoritesHelper', _favoritesHelper);
  }

  void updateFavoritesHelperAtIndex(
    int _index,
    String Function(String) updateFn,
  ) {
    _favoritesHelper[_index] = updateFn(_favoritesHelper[_index]);
    prefs.setStringList('ff_favoritesHelper', _favoritesHelper);
  }

  void insertAtIndexInFavoritesHelper(int _index, String _value) {
    _favoritesHelper.insert(_index, _value);
    prefs.setStringList('ff_favoritesHelper', _favoritesHelper);
  }

  bool _searchActiveHelper = false;
  bool get searchActiveHelper => _searchActiveHelper;
  set searchActiveHelper(bool _value) {
    _searchActiveHelper = _value;
  }
}

void _safeInit(Function() initializeField) {
  try {
    initializeField();
  } catch (_) {}
}

Future _safeInitAsync(Function() initializeField) async {
  try {
    await initializeField();
  } catch (_) {}
}
