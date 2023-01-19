import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'invite_friends_record.g.dart';

abstract class InviteFriendsRecord
    implements Built<InviteFriendsRecord, InviteFriendsRecordBuilder> {
  static Serializer<InviteFriendsRecord> get serializer =>
      _$inviteFriendsRecordSerializer;

  @BuiltValueField(wireName: 'friend_Names')
  String? get friendNames;

  @BuiltValueField(wireName: 'friend_Image')
  String? get friendImage;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  static void _initializeBuilder(InviteFriendsRecordBuilder builder) => builder
    ..friendNames = ''
    ..friendImage = '';

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('inviteFriends');

  static Stream<InviteFriendsRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<InviteFriendsRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then(
          (s) => serializers.deserializeWith(serializer, serializedData(s))!);

  InviteFriendsRecord._();
  factory InviteFriendsRecord(
          [void Function(InviteFriendsRecordBuilder) updates]) =
      _$InviteFriendsRecord;

  static InviteFriendsRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createInviteFriendsRecordData({
  String? friendNames,
  String? friendImage,
}) {
  final firestoreData = serializers.toFirestore(
    InviteFriendsRecord.serializer,
    InviteFriendsRecord(
      (i) => i
        ..friendNames = friendNames
        ..friendImage = friendImage,
    ),
  );

  return firestoreData;
}
