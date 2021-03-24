import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:built_collection/built_collection.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

import 'schema_util.dart';
import 'serializers.dart';

part 'blood_record.g.dart';

abstract class BloodRecord implements Built<BloodRecord, BloodRecordBuilder> {
  static Serializer<BloodRecord> get serializer => _$bloodRecordSerializer;

  @nullable
  @BuiltValueField(wireName: 'previous_read')
  String get previousRead;

  @nullable
  @BuiltValueField(wireName: 'current_read')
  String get currentRead;

  @nullable
  @BuiltValueField(wireName: 'current_weight')
  String get currentWeight;

  @nullable
  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference get reference;

  static void _initializeBuilder(BloodRecordBuilder builder) => builder
    ..previousRead = ''
    ..currentRead = ''
    ..currentWeight = '';

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('blood_record');

  static Stream<BloodRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s)));

  BloodRecord._();
  factory BloodRecord([void Function(BloodRecordBuilder) updates]) =
      _$BloodRecord;
}

Map<String, dynamic> createBloodRecordRecordData({
  String previousRead,
  String currentRead,
  String currentWeight,
}) =>
    serializers.serializeWith(
        BloodRecord.serializer,
        BloodRecord((b) => b
          ..previousRead = previousRead
          ..currentRead = currentRead
          ..currentWeight = currentWeight));

BloodRecord get dummyBloodRecord {
  final builder = BloodRecordBuilder()
    ..previousRead = dummyString
    ..currentRead = dummyString
    ..currentWeight = dummyString;
  return builder.build();
}

List<BloodRecord> createDummyBloodRecord({int count}) =>
    List.generate(count, (_) => dummyBloodRecord);
