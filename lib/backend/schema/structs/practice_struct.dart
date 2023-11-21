// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';
import '/backend/schema/enums/enums.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class PracticeStruct extends FFFirebaseStruct {
  PracticeStruct({
    DateTime? startTime,
    DateTime? endTime,
    String? location,
    TeamDivisions? teamDivision,
    DateTime? date,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _startTime = startTime,
        _endTime = endTime,
        _location = location,
        _teamDivision = teamDivision,
        _date = date,
        super(firestoreUtilData);

  // "startTime" field.
  DateTime? _startTime;
  DateTime? get startTime => _startTime;
  set startTime(DateTime? val) => _startTime = val;
  bool hasStartTime() => _startTime != null;

  // "endTime" field.
  DateTime? _endTime;
  DateTime? get endTime => _endTime;
  set endTime(DateTime? val) => _endTime = val;
  bool hasEndTime() => _endTime != null;

  // "location" field.
  String? _location;
  String get location => _location ?? '';
  set location(String? val) => _location = val;
  bool hasLocation() => _location != null;

  // "teamDivision" field.
  TeamDivisions? _teamDivision;
  TeamDivisions? get teamDivision => _teamDivision;
  set teamDivision(TeamDivisions? val) => _teamDivision = val;
  bool hasTeamDivision() => _teamDivision != null;

  // "date" field.
  DateTime? _date;
  DateTime? get date => _date;
  set date(DateTime? val) => _date = val;
  bool hasDate() => _date != null;

  static PracticeStruct fromMap(Map<String, dynamic> data) => PracticeStruct(
        startTime: data['startTime'] as DateTime?,
        endTime: data['endTime'] as DateTime?,
        location: data['location'] as String?,
        teamDivision: deserializeEnum<TeamDivisions>(data['teamDivision']),
        date: data['date'] as DateTime?,
      );

  static PracticeStruct? maybeFromMap(dynamic data) =>
      data is Map<String, dynamic> ? PracticeStruct.fromMap(data) : null;

  Map<String, dynamic> toMap() => {
        'startTime': _startTime,
        'endTime': _endTime,
        'location': _location,
        'teamDivision': _teamDivision?.toString(),
        'date': _date,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'startTime': serializeParam(
          _startTime,
          ParamType.DateTime,
        ),
        'endTime': serializeParam(
          _endTime,
          ParamType.DateTime,
        ),
        'location': serializeParam(
          _location,
          ParamType.String,
        ),
        'teamDivision': serializeParam(
          _teamDivision,
          ParamType.Enum,
        ),
        'date': serializeParam(
          _date,
          ParamType.DateTime,
        ),
      }.withoutNulls;

  static PracticeStruct fromSerializableMap(Map<String, dynamic> data) =>
      PracticeStruct(
        startTime: deserializeParam(
          data['startTime'],
          ParamType.DateTime,
          false,
        ),
        endTime: deserializeParam(
          data['endTime'],
          ParamType.DateTime,
          false,
        ),
        location: deserializeParam(
          data['location'],
          ParamType.String,
          false,
        ),
        teamDivision: deserializeParam<TeamDivisions>(
          data['teamDivision'],
          ParamType.Enum,
          false,
        ),
        date: deserializeParam(
          data['date'],
          ParamType.DateTime,
          false,
        ),
      );

  @override
  String toString() => 'PracticeStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is PracticeStruct &&
        startTime == other.startTime &&
        endTime == other.endTime &&
        location == other.location &&
        teamDivision == other.teamDivision &&
        date == other.date;
  }

  @override
  int get hashCode => const ListEquality()
      .hash([startTime, endTime, location, teamDivision, date]);
}

PracticeStruct createPracticeStruct({
  DateTime? startTime,
  DateTime? endTime,
  String? location,
  TeamDivisions? teamDivision,
  DateTime? date,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    PracticeStruct(
      startTime: startTime,
      endTime: endTime,
      location: location,
      teamDivision: teamDivision,
      date: date,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

PracticeStruct? updatePracticeStruct(
  PracticeStruct? practice, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    practice
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addPracticeStructData(
  Map<String, dynamic> firestoreData,
  PracticeStruct? practice,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (practice == null) {
    return;
  }
  if (practice.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && practice.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final practiceData = getPracticeFirestoreData(practice, forFieldValue);
  final nestedData = practiceData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = practice.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getPracticeFirestoreData(
  PracticeStruct? practice, [
  bool forFieldValue = false,
]) {
  if (practice == null) {
    return {};
  }
  final firestoreData = mapToFirestore(practice.toMap());

  // Add any Firestore field values
  practice.firestoreUtilData.fieldValues
      .forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getPracticeListFirestoreData(
  List<PracticeStruct>? practices,
) =>
    practices?.map((e) => getPracticeFirestoreData(e, true)).toList() ?? [];
