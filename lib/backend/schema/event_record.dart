import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class EventRecord extends FirestoreRecord {
  EventRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "week_best" field.
  List<DocumentReference>? _weekBest;
  List<DocumentReference> get weekBest => _weekBest ?? const [];
  bool hasWeekBest() => _weekBest != null;

  // "banner" field.
  List<String>? _banner;
  List<String> get banner => _banner ?? const [];
  bool hasBanner() => _banner != null;

  void _initializeFields() {
    _weekBest = getDataList(snapshotData['week_best']);
    _banner = getDataList(snapshotData['banner']);
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('event');

  static Stream<EventRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => EventRecord.fromSnapshot(s));

  static Future<EventRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => EventRecord.fromSnapshot(s));

  static EventRecord fromSnapshot(DocumentSnapshot snapshot) => EventRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static EventRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      EventRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'EventRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is EventRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createEventRecordData() {
  final firestoreData = mapToFirestore(
    <String, dynamic>{}.withoutNulls,
  );

  return firestoreData;
}

class EventRecordDocumentEquality implements Equality<EventRecord> {
  const EventRecordDocumentEquality();

  @override
  bool equals(EventRecord? e1, EventRecord? e2) {
    const listEquality = ListEquality();
    return listEquality.equals(e1?.weekBest, e2?.weekBest) &&
        listEquality.equals(e1?.banner, e2?.banner);
  }

  @override
  int hash(EventRecord? e) =>
      const ListEquality().hash([e?.weekBest, e?.banner]);

  @override
  bool isValidKey(Object? o) => o is EventRecord;
}
