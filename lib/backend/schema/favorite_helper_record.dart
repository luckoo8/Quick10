import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class FavoriteHelperRecord extends FirestoreRecord {
  FavoriteHelperRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "userID" field.
  String? _userID;
  String get userID => _userID ?? '';
  bool hasUserID() => _userID != null;

  // "date" field.
  DateTime? _date;
  DateTime? get date => _date;
  bool hasDate() => _date != null;

  // "rating" field.
  int? _rating;
  int get rating => _rating ?? 0;
  bool hasRating() => _rating != null;

  // "successNumber" field.
  int? _successNumber;
  int get successNumber => _successNumber ?? 0;
  bool hasSuccessNumber() => _successNumber != null;

  // "category" field.
  String? _category;
  String get category => _category ?? '';
  bool hasCategory() => _category != null;

  DocumentReference get parentReference => reference.parent.parent!;

  void _initializeFields() {
    _userID = snapshotData['userID'] as String?;
    _date = snapshotData['date'] as DateTime?;
    _rating = castToType<int>(snapshotData['rating']);
    _successNumber = castToType<int>(snapshotData['successNumber']);
    _category = snapshotData['category'] as String?;
  }

  static Query<Map<String, dynamic>> collection([DocumentReference? parent]) =>
      parent != null
          ? parent.collection('favoriteHelper')
          : FirebaseFirestore.instance.collectionGroup('favoriteHelper');

  static DocumentReference createDoc(DocumentReference parent, {String? id}) =>
      parent.collection('favoriteHelper').doc(id);

  static Stream<FavoriteHelperRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => FavoriteHelperRecord.fromSnapshot(s));

  static Future<FavoriteHelperRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => FavoriteHelperRecord.fromSnapshot(s));

  static FavoriteHelperRecord fromSnapshot(DocumentSnapshot snapshot) =>
      FavoriteHelperRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static FavoriteHelperRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      FavoriteHelperRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'FavoriteHelperRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is FavoriteHelperRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createFavoriteHelperRecordData({
  String? userID,
  DateTime? date,
  int? rating,
  int? successNumber,
  String? category,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'userID': userID,
      'date': date,
      'rating': rating,
      'successNumber': successNumber,
      'category': category,
    }.withoutNulls,
  );

  return firestoreData;
}

class FavoriteHelperRecordDocumentEquality
    implements Equality<FavoriteHelperRecord> {
  const FavoriteHelperRecordDocumentEquality();

  @override
  bool equals(FavoriteHelperRecord? e1, FavoriteHelperRecord? e2) {
    return e1?.userID == e2?.userID &&
        e1?.date == e2?.date &&
        e1?.rating == e2?.rating &&
        e1?.successNumber == e2?.successNumber &&
        e1?.category == e2?.category;
  }

  @override
  int hash(FavoriteHelperRecord? e) => const ListEquality()
      .hash([e?.userID, e?.date, e?.rating, e?.successNumber, e?.category]);

  @override
  bool isValidKey(Object? o) => o is FavoriteHelperRecord;
}
