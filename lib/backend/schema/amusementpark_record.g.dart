// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'amusementpark_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<AmusementparkRecord> _$amusementparkRecordSerializer =
    new _$AmusementparkRecordSerializer();

class _$AmusementparkRecordSerializer
    implements StructuredSerializer<AmusementparkRecord> {
  @override
  final Iterable<Type> types = const [
    AmusementparkRecord,
    _$AmusementparkRecord
  ];
  @override
  final String wireName = 'AmusementparkRecord';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, AmusementparkRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.rideName;
    if (value != null) {
      result
        ..add('ride_Name')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.rideIcon;
    if (value != null) {
      result
        ..add('ride_Icon')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.rideImage;
    if (value != null) {
      result
        ..add('ride_Image')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.time;
    if (value != null) {
      result
        ..add('Time')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(DateTime)));
    }
    value = object.rideCategory;
    if (value != null) {
      result
        ..add('ride_Category')
        ..add(serializers.serialize(value,
            specifiedType:
                const FullType(BuiltList, const [const FullType(String)])));
    }
    value = object.rideRating;
    if (value != null) {
      result
        ..add('ride_Rating')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.rideReviews;
    if (value != null) {
      result
        ..add('ride_Reviews')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.rideDistance;
    if (value != null) {
      result
        ..add('ride_Distance')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.rideType;
    if (value != null) {
      result
        ..add('ride_type')
        ..add(serializers.serialize(value,
            specifiedType:
                const FullType(BuiltList, const [const FullType(String)])));
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
  AmusementparkRecord deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new AmusementparkRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'ride_Name':
          result.rideName = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'ride_Icon':
          result.rideIcon = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'ride_Image':
          result.rideImage = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'Time':
          result.time = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime?;
          break;
        case 'ride_Category':
          result.rideCategory.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(String)]))!
              as BuiltList<Object?>);
          break;
        case 'ride_Rating':
          result.rideRating = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'ride_Reviews':
          result.rideReviews = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'ride_Distance':
          result.rideDistance = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'ride_type':
          result.rideType.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(String)]))!
              as BuiltList<Object?>);
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

class _$AmusementparkRecord extends AmusementparkRecord {
  @override
  final String? rideName;
  @override
  final String? rideIcon;
  @override
  final String? rideImage;
  @override
  final DateTime? time;
  @override
  final BuiltList<String>? rideCategory;
  @override
  final int? rideRating;
  @override
  final String? rideReviews;
  @override
  final String? rideDistance;
  @override
  final BuiltList<String>? rideType;
  @override
  final DocumentReference<Object?>? ffRef;

  factory _$AmusementparkRecord(
          [void Function(AmusementparkRecordBuilder)? updates]) =>
      (new AmusementparkRecordBuilder()..update(updates))._build();

  _$AmusementparkRecord._(
      {this.rideName,
      this.rideIcon,
      this.rideImage,
      this.time,
      this.rideCategory,
      this.rideRating,
      this.rideReviews,
      this.rideDistance,
      this.rideType,
      this.ffRef})
      : super._();

  @override
  AmusementparkRecord rebuild(
          void Function(AmusementparkRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  AmusementparkRecordBuilder toBuilder() =>
      new AmusementparkRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is AmusementparkRecord &&
        rideName == other.rideName &&
        rideIcon == other.rideIcon &&
        rideImage == other.rideImage &&
        time == other.time &&
        rideCategory == other.rideCategory &&
        rideRating == other.rideRating &&
        rideReviews == other.rideReviews &&
        rideDistance == other.rideDistance &&
        rideType == other.rideType &&
        ffRef == other.ffRef;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc(
                        $jc(
                            $jc(
                                $jc(
                                    $jc($jc(0, rideName.hashCode),
                                        rideIcon.hashCode),
                                    rideImage.hashCode),
                                time.hashCode),
                            rideCategory.hashCode),
                        rideRating.hashCode),
                    rideReviews.hashCode),
                rideDistance.hashCode),
            rideType.hashCode),
        ffRef.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'AmusementparkRecord')
          ..add('rideName', rideName)
          ..add('rideIcon', rideIcon)
          ..add('rideImage', rideImage)
          ..add('time', time)
          ..add('rideCategory', rideCategory)
          ..add('rideRating', rideRating)
          ..add('rideReviews', rideReviews)
          ..add('rideDistance', rideDistance)
          ..add('rideType', rideType)
          ..add('ffRef', ffRef))
        .toString();
  }
}

class AmusementparkRecordBuilder
    implements Builder<AmusementparkRecord, AmusementparkRecordBuilder> {
  _$AmusementparkRecord? _$v;

  String? _rideName;
  String? get rideName => _$this._rideName;
  set rideName(String? rideName) => _$this._rideName = rideName;

  String? _rideIcon;
  String? get rideIcon => _$this._rideIcon;
  set rideIcon(String? rideIcon) => _$this._rideIcon = rideIcon;

  String? _rideImage;
  String? get rideImage => _$this._rideImage;
  set rideImage(String? rideImage) => _$this._rideImage = rideImage;

  DateTime? _time;
  DateTime? get time => _$this._time;
  set time(DateTime? time) => _$this._time = time;

  ListBuilder<String>? _rideCategory;
  ListBuilder<String> get rideCategory =>
      _$this._rideCategory ??= new ListBuilder<String>();
  set rideCategory(ListBuilder<String>? rideCategory) =>
      _$this._rideCategory = rideCategory;

  int? _rideRating;
  int? get rideRating => _$this._rideRating;
  set rideRating(int? rideRating) => _$this._rideRating = rideRating;

  String? _rideReviews;
  String? get rideReviews => _$this._rideReviews;
  set rideReviews(String? rideReviews) => _$this._rideReviews = rideReviews;

  String? _rideDistance;
  String? get rideDistance => _$this._rideDistance;
  set rideDistance(String? rideDistance) => _$this._rideDistance = rideDistance;

  ListBuilder<String>? _rideType;
  ListBuilder<String> get rideType =>
      _$this._rideType ??= new ListBuilder<String>();
  set rideType(ListBuilder<String>? rideType) => _$this._rideType = rideType;

  DocumentReference<Object?>? _ffRef;
  DocumentReference<Object?>? get ffRef => _$this._ffRef;
  set ffRef(DocumentReference<Object?>? ffRef) => _$this._ffRef = ffRef;

  AmusementparkRecordBuilder() {
    AmusementparkRecord._initializeBuilder(this);
  }

  AmusementparkRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _rideName = $v.rideName;
      _rideIcon = $v.rideIcon;
      _rideImage = $v.rideImage;
      _time = $v.time;
      _rideCategory = $v.rideCategory?.toBuilder();
      _rideRating = $v.rideRating;
      _rideReviews = $v.rideReviews;
      _rideDistance = $v.rideDistance;
      _rideType = $v.rideType?.toBuilder();
      _ffRef = $v.ffRef;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(AmusementparkRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$AmusementparkRecord;
  }

  @override
  void update(void Function(AmusementparkRecordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  AmusementparkRecord build() => _build();

  _$AmusementparkRecord _build() {
    _$AmusementparkRecord _$result;
    try {
      _$result = _$v ??
          new _$AmusementparkRecord._(
              rideName: rideName,
              rideIcon: rideIcon,
              rideImage: rideImage,
              time: time,
              rideCategory: _rideCategory?.build(),
              rideRating: rideRating,
              rideReviews: rideReviews,
              rideDistance: rideDistance,
              rideType: _rideType?.build(),
              ffRef: ffRef);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'rideCategory';
        _rideCategory?.build();

        _$failedField = 'rideType';
        _rideType?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'AmusementparkRecord', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
