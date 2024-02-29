import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class RatingRecord extends FirestoreRecord {
  RatingRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "userID" field.
  DocumentReference? _userID;
  DocumentReference? get userID => _userID;
  bool hasUserID() => _userID != null;

  // "review" field.
  String? _review;
  String get review => _review ?? '';
  bool hasReview() => _review != null;

  // "date" field.
  DateTime? _date;
  DateTime? get date => _date;
  bool hasDate() => _date != null;

  // "rating" field.
  int? _rating;
  int get rating => _rating ?? 0;
  bool hasRating() => _rating != null;

  DocumentReference get parentReference => reference.parent.parent!;

  void _initializeFields() {
    _userID = snapshotData['userID'] as DocumentReference?;
    _review = snapshotData['review'] as String?;
    _date = snapshotData['date'] as DateTime?;
    _rating = castToType<int>(snapshotData['rating']);
  }

  static Query<Map<String, dynamic>> collection([DocumentReference? parent]) =>
      parent != null
          ? parent.collection('rating')
          : FirebaseFirestore.instance.collectionGroup('rating');

  static DocumentReference createDoc(DocumentReference parent, {String? id}) =>
      parent.collection('rating').doc(id);

  static Stream<RatingRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => RatingRecord.fromSnapshot(s));

  static Future<RatingRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => RatingRecord.fromSnapshot(s));

  static RatingRecord fromSnapshot(DocumentSnapshot snapshot) => RatingRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static RatingRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      RatingRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'RatingRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is RatingRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createRatingRecordData({
  DocumentReference? userID,
  String? review,
  DateTime? date,
  int? rating,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'userID': userID,
      'review': review,
      'date': date,
      'rating': rating,
    }.withoutNulls,
  );

  return firestoreData;
}

class RatingRecordDocumentEquality implements Equality<RatingRecord> {
  const RatingRecordDocumentEquality();

  @override
  bool equals(RatingRecord? e1, RatingRecord? e2) {
    return e1?.userID == e2?.userID &&
        e1?.review == e2?.review &&
        e1?.date == e2?.date &&
        e1?.rating == e2?.rating;
  }

  @override
  int hash(RatingRecord? e) =>
      const ListEquality().hash([e?.userID, e?.review, e?.date, e?.rating]);

  @override
  bool isValidKey(Object? o) => o is RatingRecord;
}
