import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'amusementpark_record.g.dart';

abstract class AmusementparkRecord
    implements Built<AmusementparkRecord, AmusementparkRecordBuilder> {
  static Serializer<AmusementparkRecord> get serializer =>
      _$amusementparkRecordSerializer;

  @BuiltValueField(wireName: 'short_title')
  String? get shortTitle;

  String? get title;

  String? get img;

  @BuiltValueField(wireName: 'wait_time')
  String? get waitTime;

  String? get time;

  @BuiltValueField(wireName: 'map_link')
  String? get mapLink;

  @BuiltValueField(wireName: 'short_details')
  String? get shortDetails;

  String? get details;

  BuiltList<String>? get type;

  double? get rating;

  bool? get isFavourite;

  String? get appbarname;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  static void _initializeBuilder(AmusementparkRecordBuilder builder) => builder
    ..shortTitle = ''
    ..title = ''
    ..img = ''
    ..waitTime = ''
    ..time = ''
    ..mapLink = ''
    ..shortDetails = ''
    ..details = ''
    ..type = ListBuilder()
    ..rating = 0.0
    ..isFavourite = false
    ..appbarname = '';

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('amusementpark');

  static Stream<AmusementparkRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<AmusementparkRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then(
          (s) => serializers.deserializeWith(serializer, serializedData(s))!);

  AmusementparkRecord._();
  factory AmusementparkRecord(
          [void Function(AmusementparkRecordBuilder) updates]) =
      _$AmusementparkRecord;

  static AmusementparkRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createAmusementparkRecordData({
  String? shortTitle,
  String? title,
  String? img,
  String? waitTime,
  String? time,
  String? mapLink,
  String? shortDetails,
  String? details,
  double? rating,
  bool? isFavourite,
  String? appbarname,
}) {
  final firestoreData = serializers.toFirestore(
    AmusementparkRecord.serializer,
    AmusementparkRecord(
      (a) => a
        ..shortTitle = shortTitle
        ..title = title
        ..img = img
        ..waitTime = waitTime
        ..time = time
        ..mapLink = mapLink
        ..shortDetails = shortDetails
        ..details = details
        ..type = null
        ..rating = rating
        ..isFavourite = isFavourite
        ..appbarname = appbarname,
    ),
  );

  return firestoreData;
}
