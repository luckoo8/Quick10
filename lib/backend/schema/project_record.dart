import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ProjectRecord extends FirestoreRecord {
  ProjectRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "title" field.
  String? _title;
  String get title => _title ?? '';
  bool hasTitle() => _title != null;

  // "description" field.
  String? _description;
  String get description => _description ?? '';
  bool hasDescription() => _description != null;

  // "cost" field.
  int? _cost;
  int get cost => _cost ?? 0;
  bool hasCost() => _cost != null;

  // "format" field.
  String? _format;
  String get format => _format ?? '';
  bool hasFormat() => _format != null;

  // "timePosted" field.
  DateTime? _timePosted;
  DateTime? get timePosted => _timePosted;
  bool hasTimePosted() => _timePosted != null;

  // "tag" field.
  List<String>? _tag;
  List<String> get tag => _tag ?? const [];
  bool hasTag() => _tag != null;

  // "time" field.
  String? _time;
  String get time => _time ?? '';
  bool hasTime() => _time != null;

  // "selectedHelper" field.
  DocumentReference? _selectedHelper;
  DocumentReference? get selectedHelper => _selectedHelper;
  bool hasSelectedHelper() => _selectedHelper != null;

  // "category" field.
  String? _category;
  String get category => _category ?? '';
  bool hasCategory() => _category != null;

  // "applyCount" field.
  int? _applyCount;
  int get applyCount => _applyCount ?? 0;
  bool hasApplyCount() => _applyCount != null;

  // "liked_by" field.
  List<DocumentReference>? _likedBy;
  List<DocumentReference> get likedBy => _likedBy ?? const [];
  bool hasLikedBy() => _likedBy != null;

  // "created_by" field.
  DocumentReference? _createdBy;
  DocumentReference? get createdBy => _createdBy;
  bool hasCreatedBy() => _createdBy != null;

  void _initializeFields() {
    _title = snapshotData['title'] as String?;
    _description = snapshotData['description'] as String?;
    _cost = castToType<int>(snapshotData['cost']);
    _format = snapshotData['format'] as String?;
    _timePosted = snapshotData['timePosted'] as DateTime?;
    _tag = getDataList(snapshotData['tag']);
    _time = snapshotData['time'] as String?;
    _selectedHelper = snapshotData['selectedHelper'] as DocumentReference?;
    _category = snapshotData['category'] as String?;
    _applyCount = castToType<int>(snapshotData['applyCount']);
    _likedBy = getDataList(snapshotData['liked_by']);
    _createdBy = snapshotData['created_by'] as DocumentReference?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('project');

  static Stream<ProjectRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => ProjectRecord.fromSnapshot(s));

  static Future<ProjectRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => ProjectRecord.fromSnapshot(s));

  static ProjectRecord fromSnapshot(DocumentSnapshot snapshot) =>
      ProjectRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static ProjectRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      ProjectRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'ProjectRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is ProjectRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createProjectRecordData({
  String? title,
  String? description,
  int? cost,
  String? format,
  DateTime? timePosted,
  String? time,
  DocumentReference? selectedHelper,
  String? category,
  int? applyCount,
  DocumentReference? createdBy,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'title': title,
      'description': description,
      'cost': cost,
      'format': format,
      'timePosted': timePosted,
      'time': time,
      'selectedHelper': selectedHelper,
      'category': category,
      'applyCount': applyCount,
      'created_by': createdBy,
    }.withoutNulls,
  );

  return firestoreData;
}

class ProjectRecordDocumentEquality implements Equality<ProjectRecord> {
  const ProjectRecordDocumentEquality();

  @override
  bool equals(ProjectRecord? e1, ProjectRecord? e2) {
    const listEquality = ListEquality();
    return e1?.title == e2?.title &&
        e1?.description == e2?.description &&
        e1?.cost == e2?.cost &&
        e1?.format == e2?.format &&
        e1?.timePosted == e2?.timePosted &&
        listEquality.equals(e1?.tag, e2?.tag) &&
        e1?.time == e2?.time &&
        e1?.selectedHelper == e2?.selectedHelper &&
        e1?.category == e2?.category &&
        e1?.applyCount == e2?.applyCount &&
        listEquality.equals(e1?.likedBy, e2?.likedBy) &&
        e1?.createdBy == e2?.createdBy;
  }

  @override
  int hash(ProjectRecord? e) => const ListEquality().hash([
        e?.title,
        e?.description,
        e?.cost,
        e?.format,
        e?.timePosted,
        e?.tag,
        e?.time,
        e?.selectedHelper,
        e?.category,
        e?.applyCount,
        e?.likedBy,
        e?.createdBy
      ]);

  @override
  bool isValidKey(Object? o) => o is ProjectRecord;
}
