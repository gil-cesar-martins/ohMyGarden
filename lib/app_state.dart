import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

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
      _NumCarrinho = prefs.getDouble('ff_NumCarrinho') ?? _NumCarrinho;
    });
    _safeInit(() {
      _SomaCarrinho = prefs.getDouble('ff_SomaCarrinho') ?? _SomaCarrinho;
    });
  }

  void update(VoidCallback callback) {
    callback();
    notifyListeners();
  }

  late SharedPreferences prefs;

  double _NumCarrinho = 0.0;
  double get NumCarrinho => _NumCarrinho;
  set NumCarrinho(double value) {
    _NumCarrinho = value;
    prefs.setDouble('ff_NumCarrinho', value);
  }

  double _SomaCarrinho = 0.0;
  double get SomaCarrinho => _SomaCarrinho;
  set SomaCarrinho(double value) {
    _SomaCarrinho = value;
    prefs.setDouble('ff_SomaCarrinho', value);
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
