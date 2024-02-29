import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class UserApplyRecord extends FirestoreRecord {
  UserApplyRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "applytime" field.
  DateTime? _applytime;
  DateTime? get applytime => _applytime;
  bool hasApplytime() => _applytime != null;

  // "projectID" field.
  String? _projectID;
  String get projectID => _projectID ?? '';
  bool hasProjectID() => _projectID != null;

  // "title" field.
  String? _title;
  String get title => _title ?? '';
  bool hasTitle() => _title != null;

  // "description" field.
  String? _description;
  String get description => _description ?? '';
  bool hasDescription() => _description != null;

  // "uid" field.
  String? _uid;
  String get uid => _uid ?? '';
  bool hasUid() => _uid != null;

  // "category" field.
  List<String>? _category;
  List<String> get category => _category ?? const [];
  bool hasCategory() => _category != null;

  // "tag" field.
  List<String>? _tag;
  List<String> get tag => _tag ?? const [];
  bool hasTag() => _tag != null;

  // "time" field.
  String? _time;
  String get time => _time ?? '';
  bool hasTime() => _time != null;

  // "format" field.
  String? _format;
  String get format => _format ?? '';
  bool hasFormat() => _format != null;

  // "cost" field.
  int? _cost;
  int get cost => _cost ?? 0;
  bool hasCost() => _cost != null;

  // "timePosted" field.
  DateTime? _timePosted;
  DateTime? get timePosted => _timePosted;
  bool hasTimePosted() => _timePosted != null;

  DocumentReference get parentReference => reference.parent.parent!;

  void _initializeFields() {
    _applytime = snapshotData['applytime'] as DateTime?;
    _projectID = snapshotData['projectID'] as String?;
    _title = snapshotData['title'] as String?;
    _description = snapshotData['description'] as String?;
    _uid = snapshotData['uid'] as String?;
    _category = getDataList(snapshotData['category']);
    _tag = getDataList(snapshotData['tag']);
    _time = snapshotData['time'] as String?;
    _format = snapshotData['format'] as String?;
    _cost = castToType<int>(snapshotData['cost']);
    _timePosted = snapshotData['timePosted'] as DateTime?;
  }

  static Query<Map<String, dynamic>> collection([DocumentReference? parent]) =>
      parent != null
          ? parent.collection('userApply')
          : FirebaseFirestore.instance.collectionGroup('userApply');

  static DocumentReference createDoc(DocumentReference parent, {String? id}) =>
      parent.collection('userApply').doc(id);

  static Stream<UserApplyRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => UserApplyRecord.fromSnapshot(s));

  static Future<UserApplyRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => UserApplyRecord.fromSnapshot(s));

  static UserApplyRecord fromSnapshot(DocumentSnapshot snapshot) =>
      UserApplyRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static UserApplyRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      UserApplyRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'UserApplyRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is UserApplyRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createUserApplyRecordData({
  DateTime? applytime,
  String? projectID,
  String? title,
  String? description,
  String? uid,
  String? time,
  String? format,
  int? cost,
  DateTime? timePosted,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'applytime': applytime,
      'projectID': projectID,
      'title': title,
      'description': description,
      'uid': uid,
      'time': time,
      'format': format,
      'cost': cost,
      'timePosted': timePosted,
    }.withoutNulls,
  );

  return firestoreData;
}

class UserApplyRecordDocumentEquality implements Equality<UserApplyRecord> {
  const UserApplyRecordDocumentEquality();

  @override
  bool equals(UserApplyRecord? e1, UserApplyRecord? e2) {
    const listEquality = ListEquality();
    return e1?.applytime == e2?.applytime &&
        e1?.projectID == e2?.projectID &&
        e1?.title == e2?.title &&
        e1?.description == e2?.description &&
        e1?.uid == e2?.uid &&
        listEquality.equals(e1?.category, e2?.category) &&
        listEquality.equals(e1?.tag, e2?.tag) &&
        e1?.time == e2?.time &&
        e1?.format == e2?.format &&
        e1?.cost == e2?.cost &&
        e1?.timePosted == e2?.timePosted;
  }

  @override
  int hash(UserApplyRecord? e) => const ListEquality().hash([
        e?.applytime,
        e?.projectID,
        e?.title,
        e?.description,
        e?.uid,
        e?.category,
        e?.tag,
        e?.time,
        e?.format,
        e?.cost,
        e?.timePosted
      ]);

  @override
  bool isValidKey(Object? o) => o is UserApplyRecord;
}
