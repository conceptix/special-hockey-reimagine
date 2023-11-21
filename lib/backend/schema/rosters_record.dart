import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';
import '/backend/schema/enums/enums.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class RostersRecord extends FirestoreRecord {
  RostersRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "team" field.
  DocumentReference? _team;
  DocumentReference? get team => _team;
  bool hasTeam() => _team != null;

  // "players" field.
  List<DocumentReference>? _players;
  List<DocumentReference> get players => _players ?? const [];
  bool hasPlayers() => _players != null;

  // "coaches" field.
  List<DocumentReference>? _coaches;
  List<DocumentReference> get coaches => _coaches ?? const [];
  bool hasCoaches() => _coaches != null;

  void _initializeFields() {
    _team = snapshotData['team'] as DocumentReference?;
    _players = getDataList(snapshotData['players']);
    _coaches = getDataList(snapshotData['coaches']);
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('rosters');

  static Stream<RostersRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => RostersRecord.fromSnapshot(s));

  static Future<RostersRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => RostersRecord.fromSnapshot(s));

  static RostersRecord fromSnapshot(DocumentSnapshot snapshot) =>
      RostersRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static RostersRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      RostersRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'RostersRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is RostersRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createRostersRecordData({
  DocumentReference? team,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'team': team,
    }.withoutNulls,
  );

  return firestoreData;
}

class RostersRecordDocumentEquality implements Equality<RostersRecord> {
  const RostersRecordDocumentEquality();

  @override
  bool equals(RostersRecord? e1, RostersRecord? e2) {
    const listEquality = ListEquality();
    return e1?.team == e2?.team &&
        listEquality.equals(e1?.players, e2?.players) &&
        listEquality.equals(e1?.coaches, e2?.coaches);
  }

  @override
  int hash(RostersRecord? e) =>
      const ListEquality().hash([e?.team, e?.players, e?.coaches]);

  @override
  bool isValidKey(Object? o) => o is RostersRecord;
}
