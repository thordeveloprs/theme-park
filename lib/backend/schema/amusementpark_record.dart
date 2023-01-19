import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'amusementpark_record.g.dart';

abstract class AmusementparkRecord
    implements Built<AmusementparkRecord, AmusementparkRecordBuilder> {
  static Serializer<AmusementparkRecord> get serializer =>
      _$amusementparkRecordSerializer;

  @BuiltValueField(wireName: 'ride_Name')
  String? get rideName;

  @BuiltValueField(wireName: 'ride_Icon')
  String? get rideIcon;

  @BuiltValueField(wireName: 'ride_Image')
  String? get rideImage;

  @BuiltValueField(wireName: 'Time')
  DateTime? get time;

  @BuiltValueField(wireName: 'ride_Category')
  BuiltList<String>? get rideCategory;

  @BuiltValueField(wireName: 'ride_Rating')
  int? get rideRating;

  @BuiltValueField(wireName: 'ride_Reviews')
  String? get rideReviews;

  @BuiltValueField(wireName: 'ride_Distance')
  String? get rideDistance;

  @BuiltValueField(wireName: 'ride_type')
  BuiltList<String>? get rideType;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  static void _initializeBuilder(AmusementparkRecordBuilder builder) => builder
    ..rideName = ''
    ..rideIcon = ''
    ..rideImage = ''
    ..rideCategory = ListBuilder()
    ..rideRating = 0
    ..rideReviews = ''
    ..rideDistance = ''
    ..rideType = ListBuilder();

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
  String? rideName,
  String? rideIcon,
  String? rideImage,
  DateTime? time,
  int? rideRating,
  String? rideReviews,
  String? rideDistance,
}) {
  final firestoreData = serializers.toFirestore(
    AmusementparkRecord.serializer,
    AmusementparkRecord(
      (a) => a
        ..rideName = rideName
        ..rideIcon = rideIcon
        ..rideImage = rideImage
        ..time = time
        ..rideCategory = null
        ..rideRating = rideRating
        ..rideReviews = rideReviews
        ..rideDistance = rideDistance
        ..rideType = null,
    ),
  );

  return firestoreData;
}
