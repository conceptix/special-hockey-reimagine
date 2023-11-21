import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';
import '/backend/schema/enums/enums.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class EquipmentItemsRecord extends FirestoreRecord {
  EquipmentItemsRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "name" field.
  String? _name;
  String get name => _name ?? '';
  bool hasName() => _name != null;

  // "draggableImage" field.
  String? _draggableImage;
  String get draggableImage => _draggableImage ?? '';
  bool hasDraggableImage() => _draggableImage != null;

  // "dropzoneImage" field.
  String? _dropzoneImage;
  String get dropzoneImage => _dropzoneImage ?? '';
  bool hasDropzoneImage() => _dropzoneImage != null;

  // "audioFile" field.
  String? _audioFile;
  String get audioFile => _audioFile ?? '';
  bool hasAudioFile() => _audioFile != null;

  // "sort" field.
  int? _sort;
  int get sort => _sort ?? 0;
  bool hasSort() => _sort != null;

  void _initializeFields() {
    _name = snapshotData['name'] as String?;
    _draggableImage = snapshotData['draggableImage'] as String?;
    _dropzoneImage = snapshotData['dropzoneImage'] as String?;
    _audioFile = snapshotData['audioFile'] as String?;
    _sort = castToType<int>(snapshotData['sort']);
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('equipmentItems');

  static Stream<EquipmentItemsRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => EquipmentItemsRecord.fromSnapshot(s));

  static Future<EquipmentItemsRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => EquipmentItemsRecord.fromSnapshot(s));

  static EquipmentItemsRecord fromSnapshot(DocumentSnapshot snapshot) =>
      EquipmentItemsRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static EquipmentItemsRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      EquipmentItemsRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'EquipmentItemsRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is EquipmentItemsRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createEquipmentItemsRecordData({
  String? name,
  String? draggableImage,
  String? dropzoneImage,
  String? audioFile,
  int? sort,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'name': name,
      'draggableImage': draggableImage,
      'dropzoneImage': dropzoneImage,
      'audioFile': audioFile,
      'sort': sort,
    }.withoutNulls,
  );

  return firestoreData;
}

class EquipmentItemsRecordDocumentEquality
    implements Equality<EquipmentItemsRecord> {
  const EquipmentItemsRecordDocumentEquality();

  @override
  bool equals(EquipmentItemsRecord? e1, EquipmentItemsRecord? e2) {
    return e1?.name == e2?.name &&
        e1?.draggableImage == e2?.draggableImage &&
        e1?.dropzoneImage == e2?.dropzoneImage &&
        e1?.audioFile == e2?.audioFile &&
        e1?.sort == e2?.sort;
  }

  @override
  int hash(EquipmentItemsRecord? e) => const ListEquality().hash(
      [e?.name, e?.draggableImage, e?.dropzoneImage, e?.audioFile, e?.sort]);

  @override
  bool isValidKey(Object? o) => o is EquipmentItemsRecord;
}
