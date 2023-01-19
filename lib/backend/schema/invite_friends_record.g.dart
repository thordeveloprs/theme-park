// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'invite_friends_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<InviteFriendsRecord> _$inviteFriendsRecordSerializer =
    new _$InviteFriendsRecordSerializer();

class _$InviteFriendsRecordSerializer
    implements StructuredSerializer<InviteFriendsRecord> {
  @override
  final Iterable<Type> types = const [
    InviteFriendsRecord,
    _$InviteFriendsRecord
  ];
  @override
  final String wireName = 'InviteFriendsRecord';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, InviteFriendsRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.friendNames;
    if (value != null) {
      result
        ..add('friend_Names')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.friendImage;
    if (value != null) {
      result
        ..add('friend_Image')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.ffRef;
    if (value != null) {
      result
        ..add('Document__Reference__Field')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                DocumentReference, const [const FullType.nullable(Object)])));
    }
    return result;
  }

  @override
  InviteFriendsRecord deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new InviteFriendsRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'friend_Names':
          result.friendNames = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'friend_Image':
          result.friendImage = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'Document__Reference__Field':
          result.ffRef = serializers.deserialize(value,
              specifiedType: const FullType(DocumentReference, const [
                const FullType.nullable(Object)
              ])) as DocumentReference<Object?>?;
          break;
      }
    }

    return result.build();
  }
}

class _$InviteFriendsRecord extends InviteFriendsRecord {
  @override
  final String? friendNames;
  @override
  final String? friendImage;
  @override
  final DocumentReference<Object?>? ffRef;

  factory _$InviteFriendsRecord(
          [void Function(InviteFriendsRecordBuilder)? updates]) =>
      (new InviteFriendsRecordBuilder()..update(updates))._build();

  _$InviteFriendsRecord._({this.friendNames, this.friendImage, this.ffRef})
      : super._();

  @override
  InviteFriendsRecord rebuild(
          void Function(InviteFriendsRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  InviteFriendsRecordBuilder toBuilder() =>
      new InviteFriendsRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is InviteFriendsRecord &&
        friendNames == other.friendNames &&
        friendImage == other.friendImage &&
        ffRef == other.ffRef;
  }

  @override
  int get hashCode {
    return $jf($jc($jc($jc(0, friendNames.hashCode), friendImage.hashCode),
        ffRef.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'InviteFriendsRecord')
          ..add('friendNames', friendNames)
          ..add('friendImage', friendImage)
          ..add('ffRef', ffRef))
        .toString();
  }
}

class InviteFriendsRecordBuilder
    implements Builder<InviteFriendsRecord, InviteFriendsRecordBuilder> {
  _$InviteFriendsRecord? _$v;

  String? _friendNames;
  String? get friendNames => _$this._friendNames;
  set friendNames(String? friendNames) => _$this._friendNames = friendNames;

  String? _friendImage;
  String? get friendImage => _$this._friendImage;
  set friendImage(String? friendImage) => _$this._friendImage = friendImage;

  DocumentReference<Object?>? _ffRef;
  DocumentReference<Object?>? get ffRef => _$this._ffRef;
  set ffRef(DocumentReference<Object?>? ffRef) => _$this._ffRef = ffRef;

  InviteFriendsRecordBuilder() {
    InviteFriendsRecord._initializeBuilder(this);
  }

  InviteFriendsRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _friendNames = $v.friendNames;
      _friendImage = $v.friendImage;
      _ffRef = $v.ffRef;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(InviteFriendsRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$InviteFriendsRecord;
  }

  @override
  void update(void Function(InviteFriendsRecordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  InviteFriendsRecord build() => _build();

  _$InviteFriendsRecord _build() {
    final _$result = _$v ??
        new _$InviteFriendsRecord._(
            friendNames: friendNames, friendImage: friendImage, ffRef: ffRef);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
