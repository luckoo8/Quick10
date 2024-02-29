import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class UserProjectRecord extends FirestoreRecord {
  UserProjectRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "projectInfo" field.
  DocumentReference? _projectInfo;
  DocumentReference? get projectInfo => _projectInfo;
  bool hasProjectInfo() => _projectInfo != null;

  // "applyHelperID" field.
  DocumentReference? _applyHelperID;
  DocumentReference? get applyHelperID => _applyHelperID;
  bool hasApplyHelperID() => _applyHelperID != null;

  // "applyHelpertime" field.
  DateTime? _applyHelpertime;
  DateTime? get applyHelpertime => _applyHelpertime;
  bool hasApplyHelpertime() => _applyHelpertime != null;

  // "applyhelperDisplyname" field.
  String? _applyhelperDisplyname;
  String get applyhelperDisplyname => _applyhelperDisplyname ?? '';
  bool hasApplyhelperDisplyname() => _applyhelperDisplyname != null;

  // "applyhelperRatings" field.
  int? _applyhelperRatings;
  int get applyhelperRatings => _applyhelperRatings ?? 0;
  bool hasApplyhelperRatings() => _applyhelperRatings != null;

  // "applyhelperPhotourl" field.
  String? _applyhelperPhotourl;
  String get applyhelperPhotourl => _applyhelperPhotourl ?? '';
  bool hasApplyhelperPhotourl() => _applyhelperPhotourl != null;

  // "project_liked_by" field.
  List<DocumentReference>? _projectLikedBy;
  List<DocumentReference> get projectLikedBy => _projectLikedBy ?? const [];
  bool hasProjectLikedBy() => _projectLikedBy != null;

  DocumentReference get parentReference => reference.parent.parent!;

  void _initializeFields() {
    _projectInfo = snapshotData['projectInfo'] as DocumentReference?;
    _applyHelperID = snapshotData['applyHelperID'] as DocumentReference?;
    _applyHelpertime = snapshotData['applyHelpertime'] as DateTime?;
    _applyhelperDisplyname = snapshotData['applyhelperDisplyname'] as String?;
    _applyhelperRatings = castToType<int>(snapshotData['applyhelperRatings']);
    _applyhelperPhotourl = snapshotData['applyhelperPhotourl'] as String?;
    _projectLikedBy = getDataList(snapshotData['project_liked_by']);
  }

  static Query<Map<String, dynamic>> collection([DocumentReference? parent]) =>
      parent != null
          ? parent.collection('userProject')
          : FirebaseFirestore.instance.collectionGroup('userProject');

  static DocumentReference createDoc(DocumentReference parent, {String? id}) =>
      parent.collection('userProject').doc(id);

  static Stream<UserProjectRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => UserProjectRecord.fromSnapshot(s));

  static Future<UserProjectRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => UserProjectRecord.fromSnapshot(s));

  static UserProjectRecord fromSnapshot(DocumentSnapshot snapshot) =>
      UserProjectRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static UserProjectRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      UserProjectRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'UserProjectRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is UserProjectRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createUserProjectRecordData({
  DocumentReference? projectInfo,
  DocumentReference? applyHelperID,
  DateTime? applyHelpertime,
  String? applyhelperDisplyname,
  int? applyhelperRatings,
  String? applyhelperPhotourl,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'projectInfo': projectInfo,
      'applyHelperID': applyHelperID,
      'applyHelpertime': applyHelpertime,
      'applyhelperDisplyname': applyhelperDisplyname,
      'applyhelperRatings': applyhelperRatings,
      'applyhelperPhotourl': applyhelperPhotourl,
    }.withoutNulls,
  );

  return firestoreData;
}

class UserProjectRecordDocumentEquality implements Equality<UserProjectRecord> {
  const UserProjectRecordDocumentEquality();

  @override
  bool equals(UserProjectRecord? e1, UserProjectRecord? e2) {
    const listEquality = ListEquality();
    return e1?.projectInfo == e2?.projectInfo &&
        e1?.applyHelperID == e2?.applyHelperID &&
        e1?.applyHelpertime == e2?.applyHelpertime &&
        e1?.applyhelperDisplyname == e2?.applyhelperDisplyname &&
        e1?.applyhelperRatings == e2?.applyhelperRatings &&
        e1?.applyhelperPhotourl == e2?.applyhelperPhotourl &&
        listEquality.equals(e1?.projectLikedBy, e2?.projectLikedBy);
  }

  @override
  int hash(UserProjectRecord? e) => const ListEquality().hash([
        e?.projectInfo,
        e?.applyHelperID,
        e?.applyHelpertime,
        e?.applyhelperDisplyname,
        e?.applyhelperRatings,
        e?.applyhelperPhotourl,
        e?.projectLikedBy
      ]);

  @override
  bool isValidKey(Object? o) => o is UserProjectRecord;
}
