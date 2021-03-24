import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:built_collection/built_collection.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

import 'schema_util.dart';
import 'serializers.dart';

part 'users.g.dart';

abstract class Users implements Built<Users, UsersBuilder> {
  static Serializer<Users> get serializer => _$usersSerializer;

  @nullable
  @BuiltValueField(wireName: 'first_name')
  String get firstName;

  @nullable
  @BuiltValueField(wireName: 'other_name')
  String get otherName;

  @nullable
  @BuiltValueField(wireName: 'phone_number')
  int get phoneNumber;

  @nullable
  int get dob;

  @nullable
  @BuiltValueField(wireName: 'blood_type')
  String get bloodType;

  @nullable
  @BuiltValueField(wireName: 'diabetic_type')
  String get diabeticType;

  @nullable
  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference get reference;

  static void _initializeBuilder(UsersBuilder builder) => builder
    ..firstName = ''
    ..otherName = ''
    ..phoneNumber = 0
    ..dob = 0
    ..bloodType = ''
    ..diabeticType = '';

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('users');

  static Stream<Users> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s)));

  Users._();
  factory Users([void Function(UsersBuilder) updates]) = _$Users;
}

Map<String, dynamic> createUsersRecordData({
  String firstName,
  String otherName,
  int phoneNumber,
  int dob,
  String bloodType,
  String diabeticType,
}) =>
    serializers.serializeWith(
        Users.serializer,
        Users((u) => u
          ..firstName = firstName
          ..otherName = otherName
          ..phoneNumber = phoneNumber
          ..dob = dob
          ..bloodType = bloodType
          ..diabeticType = diabeticType));

Users get dummyUsers {
  final builder = UsersBuilder()
    ..firstName = dummyString
    ..otherName = dummyString
    ..phoneNumber = dummyInteger
    ..dob = dummyInteger
    ..bloodType = dummyString
    ..diabeticType = dummyString;
  return builder.build();
}

List<Users> createDummyUsers({int count}) =>
    List.generate(count, (_) => dummyUsers);
