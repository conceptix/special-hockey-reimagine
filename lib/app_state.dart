import 'package:flutter/material.dart';
import '/backend/backend.dart';
import '/backend/schema/structs/index.dart';
import '/backend/schema/enums/enums.dart';
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

  Future initializePersistedState() async {}

  void update(VoidCallback callback) {
    callback();
    notifyListeners();
  }

  int _selectedNavIndex = 2;
  int get selectedNavIndex => _selectedNavIndex;
  set selectedNavIndex(int _value) {
    _selectedNavIndex = _value;
  }

  bool _equipmentChecklistCompleted = false;
  bool get equipmentChecklistCompleted => _equipmentChecklistCompleted;
  set equipmentChecklistCompleted(bool _value) {
    _equipmentChecklistCompleted = _value;
  }

  int _equipmentChecklistCurrentIndex = 0;
  int get equipmentChecklistCurrentIndex => _equipmentChecklistCurrentIndex;
  set equipmentChecklistCurrentIndex(int _value) {
    _equipmentChecklistCurrentIndex = _value;
  }

  List<DocumentReference> _equipmentChecklist = [];
  List<DocumentReference> get equipmentChecklist => _equipmentChecklist;
  set equipmentChecklist(List<DocumentReference> _value) {
    _equipmentChecklist = _value;
  }

  void addToEquipmentChecklist(DocumentReference _value) {
    _equipmentChecklist.add(_value);
  }

  void removeFromEquipmentChecklist(DocumentReference _value) {
    _equipmentChecklist.remove(_value);
  }

  void removeAtIndexFromEquipmentChecklist(int _index) {
    _equipmentChecklist.removeAt(_index);
  }

  void updateEquipmentChecklistAtIndex(
    int _index,
    DocumentReference Function(DocumentReference) updateFn,
  ) {
    _equipmentChecklist[_index] = updateFn(_equipmentChecklist[_index]);
  }

  void insertAtIndexInEquipmentChecklist(int _index, DocumentReference _value) {
    _equipmentChecklist.insert(_index, _value);
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
