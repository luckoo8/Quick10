import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ApplyRecord extends FirestoreRecord {
  ApplyRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "applyTime" field.
  DateTime? _applyTime;
  DateTime? get applyTime => _applyTime;
  bool hasApplyTime() => _applyTime != null;

  // "helperID" field.
  DocumentReference? _helperID;
  DocumentReference? get helperID => _helperID;
  bool hasHelperID() => _helperID != null;

  // "helper_display_name" field.
  String? _helperDisplayName;
  String get helperDisplayName => _helperDisplayName ?? '';
  bool hasHelperDisplayName() => _helperDisplayName != null;

  // "helper_photo_url" field.
  String? _helperPhotoUrl;
  String get helperPhotoUrl => _helperPhotoUrl ?? '';
  bool hasHelperPhotoUrl() => _helperPhotoUrl != null;

  // "timePosted" field.
  DateTime? _timePosted;
  DateTime? get timePosted => _timePosted;
  bool hasTimePosted() => _timePosted != null;

  // "userID" field.
  String? _userID;
  String get userID => _userID ?? '';
  bool hasUserID() => _userID != null;

  // "cost" field.
  int? _cost;
  int get cost => _cost ?? 0;
  bool hasCost() => _cost != null;

  // "time" field.
  String? _time;
  String get time => _time ?? '';
  bool hasTime() => _time != null;

  // "project_title" field.
  String? _projectTitle;
  String get projectTitle => _projectTitle ?? '';
  bool hasProjectTitle() => _projectTitle != null;

  // "category" field.
  String? _category;
  String get category => _category ?? '';
  bool hasCategory() => _category != null;

  // "helper_ratings" field.
  double? _helperRatings;
  double get helperRatings => _helperRatings ?? 0.0;
  bool hasHelperRatings() => _helperRatings != null;

  // "sucessNumber" field.
  int? _sucessNumber;
  int get sucessNumber => _sucessNumber ?? 0;
  bool hasSucessNumber() => _sucessNumber != null;

  DocumentReference get parentReference => reference.parent.parent!;

  void _initializeFields() {
    _applyTime = snapshotData['applyTime'] as DateTime?;
    _helperID = snapshotData['helperID'] as DocumentReference?;
    _helperDisplayName = snapshotData['helper_display_name'] as String?;
    _helperPhotoUrl = snapshotData['helper_photo_url'] as String?;
    _timePosted = snapshotData['timePosted'] as DateTime?;
    _userID = snapshotData['userID'] as String?;
    _cost = castToType<int>(snapshotData['cost']);
    _time = snapshotData['time'] as String?;
    _projectTitle = snapshotData['project_title'] as String?;
    _category = snapshotData['category'] as String?;
    _helperRatings = castToType<double>(snapshotData['helper_ratings']);
    _sucessNumber = castToType<int>(snapshotData['sucessNumber']);
  }

  static Query<Map<String, dynamic>> collection([DocumentReference? parent]) =>
      parent != null
          ? parent.collection('apply')
          : FirebaseFirestore.instance.collectionGroup('apply');

  static DocumentReference createDoc(DocumentReference parent, {String? id}) =>
      parent.collection('apply').doc(id);

  static Stream<ApplyRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => ApplyRecord.fromSnapshot(s));

  static Future<ApplyRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => ApplyRecord.fromSnapshot(s));

  static ApplyRecord fromSnapshot(DocumentSnapshot snapshot) => ApplyRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static ApplyRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      ApplyRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'ApplyRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is ApplyRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createApplyRecordData({
  DateTime? applyTime,
  DocumentReference? helperID,
  String? helperDisplayName,
  String? helperPhotoUrl,
  DateTime? timePosted,
  String? userID,
  int? cost,
  String? time,
  String? projectTitle,
  String? category,
  double? helperRatings,
  int? sucessNumber,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'applyTime': applyTime,
      'helperID': helperID,
      'helper_display_name': helperDisplayName,
      'helper_photo_url': helperPhotoUrl,
      'timePosted': timePosted,
      'userID': userID,
      'cost': cost,
      'time': time,
      'project_title': projectTitle,
      'category': category,
      'helper_ratings': helperRatings,
      'sucessNumber': sucessNumber,
    }.withoutNulls,
  );

  return firestoreData;
}

class ApplyRecordDocumentEquality implements Equality<ApplyRecord> {
  const ApplyRecordDocumentEquality();

  @override
  bool equals(ApplyRecord? e1, ApplyRecord? e2) {
    return e1?.applyTime == e2?.applyTime &&
        e1?.helperID == e2?.helperID &&
        e1?.helperDisplayName == e2?.helperDisplayName &&
        e1?.helperPhotoUrl == e2?.helperPhotoUrl &&
        e1?.timePosted == e2?.timePosted &&
        e1?.userID == e2?.userID &&
        e1?.cost == e2?.cost &&
        e1?.time == e2?.time &&
        e1?.projectTitle == e2?.projectTitle &&
        e1?.category == e2?.category &&
        e1?.helperRatings == e2?.helperRatings &&
        e1?.sucessNumber == e2?.sucessNumber;
  }

  @override
  int hash(ApplyRecord? e) => const ListEquality().hash([
        e?.applyTime,
        e?.helperID,
        e?.helperDisplayName,
        e?.helperPhotoUrl,
        e?.timePosted,
        e?.userID,
        e?.cost,
        e?.time,
        e?.projectTitle,
        e?.category,
        e?.helperRatings,
        e?.sucessNumber
      ]);

  @override
  bool isValidKey(Object? o) => o is ApplyRecord;
}
