import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';
import '/backend/schema/enums/enums.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ClubsRecord extends FirestoreRecord {
  ClubsRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "city" field.
  String? _city;
  String get city => _city ?? '';
  bool hasCity() => _city != null;

  // "name" field.
  String? _name;
  String get name => _name ?? '';
  bool hasName() => _name != null;

  // "managers" field.
  List<DocumentReference>? _managers;
  List<DocumentReference> get managers => _managers ?? const [];
  bool hasManagers() => _managers != null;

  // "teams" field.
  List<DocumentReference>? _teams;
  List<DocumentReference> get teams => _teams ?? const [];
  bool hasTeams() => _teams != null;

  // "events" field.
  List<DocumentReference>? _events;
  List<DocumentReference> get events => _events ?? const [];
  bool hasEvents() => _events != null;

  // "logo_url" field.
  String? _logoUrl;
  String get logoUrl => _logoUrl ?? '';
  bool hasLogoUrl() => _logoUrl != null;

  // "color" field.
  Color? _color;
  Color? get color => _color;
  bool hasColor() => _color != null;

  // "volunteers" field.
  List<DocumentReference>? _volunteers;
  List<DocumentReference> get volunteers => _volunteers ?? const [];
  bool hasVolunteers() => _volunteers != null;

  // "url" field.
  String? _url;
  String get url => _url ?? '';
  bool hasUrl() => _url != null;

  void _initializeFields() {
    _city = snapshotData['city'] as String?;
    _name = snapshotData['name'] as String?;
    _managers = getDataList(snapshotData['managers']);
    _teams = getDataList(snapshotData['teams']);
    _events = getDataList(snapshotData['events']);
    _logoUrl = snapshotData['logo_url'] as String?;
    _color = getSchemaColor(snapshotData['color']);
    _volunteers = getDataList(snapshotData['volunteers']);
    _url = snapshotData['url'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('clubs');

  static Stream<ClubsRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => ClubsRecord.fromSnapshot(s));

  static Future<ClubsRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => ClubsRecord.fromSnapshot(s));

  static ClubsRecord fromSnapshot(DocumentSnapshot snapshot) => ClubsRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static ClubsRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      ClubsRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'ClubsRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is ClubsRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createClubsRecordData({
  String? city,
  String? name,
  String? logoUrl,
  Color? color,
  String? url,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'city': city,
      'name': name,
      'logo_url': logoUrl,
      'color': color,
      'url': url,
    }.withoutNulls,
  );

  return firestoreData;
}

class ClubsRecordDocumentEquality implements Equality<ClubsRecord> {
  const ClubsRecordDocumentEquality();

  @override
  bool equals(ClubsRecord? e1, ClubsRecord? e2) {
    const listEquality = ListEquality();
    return e1?.city == e2?.city &&
        e1?.name == e2?.name &&
        listEquality.equals(e1?.managers, e2?.managers) &&
        listEquality.equals(e1?.teams, e2?.teams) &&
        listEquality.equals(e1?.events, e2?.events) &&
        e1?.logoUrl == e2?.logoUrl &&
        e1?.color == e2?.color &&
        listEquality.equals(e1?.volunteers, e2?.volunteers) &&
        e1?.url == e2?.url;
  }

  @override
  int hash(ClubsRecord? e) => const ListEquality().hash([
        e?.city,
        e?.name,
        e?.managers,
        e?.teams,
        e?.events,
        e?.logoUrl,
        e?.color,
        e?.volunteers,
        e?.url
      ]);

  @override
  bool isValidKey(Object? o) => o is ClubsRecord;
}
