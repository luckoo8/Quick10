import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class FavoriteProjectRecord extends FirestoreRecord {
  FavoriteProjectRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "projectID" field.
  String? _projectID;
  String get projectID => _projectID ?? '';
  bool hasProjectID() => _projectID != null;

  // "date" field.
  DateTime? _date;
  DateTime? get date => _date;
  bool hasDate() => _date != null;

  // "title" field.
  String? _title;
  String get title => _title ?? '';
  bool hasTitle() => _title != null;

  // "category" field.
  String? _category;
  String get category => _category ?? '';
  bool hasCategory() => _category != null;

  // "format" field.
  String? _format;
  String get format => _format ?? '';
  bool hasFormat() => _format != null;

  // "cost" field.
  int? _cost;
  int get cost => _cost ?? 0;
  bool hasCost() => _cost != null;

  // "time" field.
  String? _time;
  String get time => _time ?? '';
  bool hasTime() => _time != null;

  // "tag" field.
  List<String>? _tag;
  List<String> get tag => _tag ?? const [];
  bool hasTag() => _tag != null;

  DocumentReference get parentReference => reference.parent.parent!;

  void _initializeFields() {
    _projectID = snapshotData['projectID'] as String?;
    _date = snapshotData['date'] as DateTime?;
    _title = snapshotData['title'] as String?;
    _category = snapshotData['category'] as String?;
    _format = snapshotData['format'] as String?;
    _cost = castToType<int>(snapshotData['cost']);
    _time = snapshotData['time'] as String?;
    _tag = getDataList(snapshotData['tag']);
  }

  static Query<Map<String, dynamic>> collection([DocumentReference? parent]) =>
      parent != null
          ? parent.collection('favoriteProject')
          : FirebaseFirestore.instance.collectionGroup('favoriteProject');

  static DocumentReference createDoc(DocumentReference parent, {String? id}) =>
      parent.collection('favoriteProject').doc(id);

  static Stream<FavoriteProjectRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => FavoriteProjectRecord.fromSnapshot(s));

  static Future<FavoriteProjectRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => FavoriteProjectRecord.fromSnapshot(s));

  static FavoriteProjectRecord fromSnapshot(DocumentSnapshot snapshot) =>
      FavoriteProjectRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static FavoriteProjectRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      FavoriteProjectRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'FavoriteProjectRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is FavoriteProjectRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createFavoriteProjectRecordData({
  String? projectID,
  DateTime? date,
  String? title,
  String? category,
  String? format,
  int? cost,
  String? time,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'projectID': projectID,
      'date': date,
      'title': title,
      'category': category,
      'format': format,
      'cost': cost,
      'time': time,
    }.withoutNulls,
  );

  return firestoreData;
}

class FavoriteProjectRecordDocumentEquality
    implements Equality<FavoriteProjectRecord> {
  const FavoriteProjectRecordDocumentEquality();

  @override
  bool equals(FavoriteProjectRecord? e1, FavoriteProjectRecord? e2) {
    const listEquality = ListEquality();
    return e1?.projectID == e2?.projectID &&
        e1?.date == e2?.date &&
        e1?.title == e2?.title &&
        e1?.category == e2?.category &&
        e1?.format == e2?.format &&
        e1?.cost == e2?.cost &&
        e1?.time == e2?.time &&
        listEquality.equals(e1?.tag, e2?.tag);
  }

  @override
  int hash(FavoriteProjectRecord? e) => const ListEquality().hash([
        e?.projectID,
        e?.date,
        e?.title,
        e?.category,
        e?.format,
        e?.cost,
        e?.time,
        e?.tag
      ]);

  @override
  bool isValidKey(Object? o) => o is FavoriteProjectRecord;
}
