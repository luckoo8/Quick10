import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class UsersRecord extends FirestoreRecord {
  UsersRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "email" field.
  String? _email;
  String get email => _email ?? '';
  bool hasEmail() => _email != null;

  // "display_name" field.
  String? _displayName;
  String get displayName => _displayName ?? '';
  bool hasDisplayName() => _displayName != null;

  // "photo_url" field.
  String? _photoUrl;
  String get photoUrl => _photoUrl ?? '';
  bool hasPhotoUrl() => _photoUrl != null;

  // "uid" field.
  String? _uid;
  String get uid => _uid ?? '';
  bool hasUid() => _uid != null;

  // "created_time" field.
  DateTime? _createdTime;
  DateTime? get createdTime => _createdTime;
  bool hasCreatedTime() => _createdTime != null;

  // "phone_number" field.
  String? _phoneNumber;
  String get phoneNumber => _phoneNumber ?? '';
  bool hasPhoneNumber() => _phoneNumber != null;

  // "last_active_time" field.
  DateTime? _lastActiveTime;
  DateTime? get lastActiveTime => _lastActiveTime;
  bool hasLastActiveTime() => _lastActiveTime != null;

  // "category" field.
  List<String>? _category;
  List<String> get category => _category ?? const [];
  bool hasCategory() => _category != null;

  // "helper" field.
  bool? _helper;
  bool get helper => _helper ?? false;
  bool hasHelper() => _helper != null;

  // "discription" field.
  String? _discription;
  String get discription => _discription ?? '';
  bool hasDiscription() => _discription != null;

  // "successNumber" field.
  int? _successNumber;
  int get successNumber => _successNumber ?? 0;
  bool hasSuccessNumber() => _successNumber != null;

  // "projectNumber" field.
  int? _projectNumber;
  int get projectNumber => _projectNumber ?? 0;
  bool hasProjectNumber() => _projectNumber != null;

  // "format" field.
  String? _format;
  String get format => _format ?? '';
  bool hasFormat() => _format != null;

  // "profit" field.
  int? _profit;
  int get profit => _profit ?? 0;
  bool hasProfit() => _profit != null;

  // "ratings" field.
  List<double>? _ratings;
  List<double> get ratings => _ratings ?? const [];
  bool hasRatings() => _ratings != null;

  // "week_best" field.
  bool? _weekBest;
  bool get weekBest => _weekBest ?? false;
  bool hasWeekBest() => _weekBest != null;

  // "liked_by" field.
  List<DocumentReference>? _likedBy;
  List<DocumentReference> get likedBy => _likedBy ?? const [];
  bool hasLikedBy() => _likedBy != null;

  // "like" field.
  List<DocumentReference>? _like;
  List<DocumentReference> get like => _like ?? const [];
  bool hasLike() => _like != null;

  void _initializeFields() {
    _email = snapshotData['email'] as String?;
    _displayName = snapshotData['display_name'] as String?;
    _photoUrl = snapshotData['photo_url'] as String?;
    _uid = snapshotData['uid'] as String?;
    _createdTime = snapshotData['created_time'] as DateTime?;
    _phoneNumber = snapshotData['phone_number'] as String?;
    _lastActiveTime = snapshotData['last_active_time'] as DateTime?;
    _category = getDataList(snapshotData['category']);
    _helper = snapshotData['helper'] as bool?;
    _discription = snapshotData['discription'] as String?;
    _successNumber = castToType<int>(snapshotData['successNumber']);
    _projectNumber = castToType<int>(snapshotData['projectNumber']);
    _format = snapshotData['format'] as String?;
    _profit = castToType<int>(snapshotData['profit']);
    _ratings = getDataList(snapshotData['ratings']);
    _weekBest = snapshotData['week_best'] as bool?;
    _likedBy = getDataList(snapshotData['liked_by']);
    _like = getDataList(snapshotData['like']);
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('users');

  static Stream<UsersRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => UsersRecord.fromSnapshot(s));

  static Future<UsersRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => UsersRecord.fromSnapshot(s));

  static UsersRecord fromSnapshot(DocumentSnapshot snapshot) => UsersRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static UsersRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      UsersRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'UsersRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is UsersRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createUsersRecordData({
  String? email,
  String? displayName,
  String? photoUrl,
  String? uid,
  DateTime? createdTime,
  String? phoneNumber,
  DateTime? lastActiveTime,
  bool? helper,
  String? discription,
  int? successNumber,
  int? projectNumber,
  String? format,
  int? profit,
  bool? weekBest,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'email': email,
      'display_name': displayName,
      'photo_url': photoUrl,
      'uid': uid,
      'created_time': createdTime,
      'phone_number': phoneNumber,
      'last_active_time': lastActiveTime,
      'helper': helper,
      'discription': discription,
      'successNumber': successNumber,
      'projectNumber': projectNumber,
      'format': format,
      'profit': profit,
      'week_best': weekBest,
    }.withoutNulls,
  );

  return firestoreData;
}

class UsersRecordDocumentEquality implements Equality<UsersRecord> {
  const UsersRecordDocumentEquality();

  @override
  bool equals(UsersRecord? e1, UsersRecord? e2) {
    const listEquality = ListEquality();
    return e1?.email == e2?.email &&
        e1?.displayName == e2?.displayName &&
        e1?.photoUrl == e2?.photoUrl &&
        e1?.uid == e2?.uid &&
        e1?.createdTime == e2?.createdTime &&
        e1?.phoneNumber == e2?.phoneNumber &&
        e1?.lastActiveTime == e2?.lastActiveTime &&
        listEquality.equals(e1?.category, e2?.category) &&
        e1?.helper == e2?.helper &&
        e1?.discription == e2?.discription &&
        e1?.successNumber == e2?.successNumber &&
        e1?.projectNumber == e2?.projectNumber &&
        e1?.format == e2?.format &&
        e1?.profit == e2?.profit &&
        listEquality.equals(e1?.ratings, e2?.ratings) &&
        e1?.weekBest == e2?.weekBest &&
        listEquality.equals(e1?.likedBy, e2?.likedBy) &&
        listEquality.equals(e1?.like, e2?.like);
  }

  @override
  int hash(UsersRecord? e) => const ListEquality().hash([
        e?.email,
        e?.displayName,
        e?.photoUrl,
        e?.uid,
        e?.createdTime,
        e?.phoneNumber,
        e?.lastActiveTime,
        e?.category,
        e?.helper,
        e?.discription,
        e?.successNumber,
        e?.projectNumber,
        e?.format,
        e?.profit,
        e?.ratings,
        e?.weekBest,
        e?.likedBy,
        e?.like
      ]);

  @override
  bool isValidKey(Object? o) => o is UsersRecord;
}
