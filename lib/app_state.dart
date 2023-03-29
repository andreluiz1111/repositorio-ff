import 'package:flutter/material.dart';
import 'backend/backend.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'flutter_flow/flutter_flow_util.dart';

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

  DateTime? _dataSelecionada =
      DateTime.fromMillisecondsSinceEpoch(1676422560000);
  DateTime? get dataSelecionada => _dataSelecionada;
  set dataSelecionada(DateTime? _value) {
    _dataSelecionada = _value;
  }

  String _diaFiltro = '';
  String get diaFiltro => _diaFiltro;
  set diaFiltro(String _value) {
    _diaFiltro = _value;
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
