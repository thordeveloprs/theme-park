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
    value = object.shortTitle;
    if (value != null) {
      result
        ..add('short_title')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.title;
    if (value != null) {
      result
        ..add('title')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.img;
    if (value != null) {
      result
        ..add('img')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.waitTime;
    if (value != null) {
      result
        ..add('wait_time')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.time;
    if (value != null) {
      result
        ..add('time')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.mapLink;
    if (value != null) {
      result
        ..add('map_link')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.shortDetails;
    if (value != null) {
      result
        ..add('short_details')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.details;
    if (value != null) {
      result
        ..add('details')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.type;
    if (value != null) {
      result
        ..add('type')
        ..add(serializers.serialize(value,
            specifiedType:
                const FullType(BuiltList, const [const FullType(String)])));
    }
    value = object.rating;
    if (value != null) {
      result
        ..add('rating')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(double)));
    }
    value = object.isFavourite;
    if (value != null) {
      result
        ..add('isFavourite')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
    }
    value = object.appbarname;
    if (value != null) {
      result
        ..add('appbarname')
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
        case 'short_title':
          result.shortTitle = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'title':
          result.title = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'img':
          result.img = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'wait_time':
          result.waitTime = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'time':
          result.time = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'map_link':
          result.mapLink = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'short_details':
          result.shortDetails = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'details':
          result.details = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'type':
          result.type.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(String)]))!
              as BuiltList<Object?>);
          break;
        case 'rating':
          result.rating = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double?;
          break;
        case 'isFavourite':
          result.isFavourite = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool?;
          break;
        case 'appbarname':
          result.appbarname = serializers.deserialize(value,
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

class _$AmusementparkRecord extends AmusementparkRecord {
  @override
  final String? shortTitle;
  @override
  final String? title;
  @override
  final String? img;
  @override
  final String? waitTime;
  @override
  final String? time;
  @override
  final String? mapLink;
  @override
  final String? shortDetails;
  @override
  final String? details;
  @override
  final BuiltList<String>? type;
  @override
  final double? rating;
  @override
  final bool? isFavourite;
  @override
  final String? appbarname;
  @override
  final DocumentReference<Object?>? ffRef;

  factory _$AmusementparkRecord(
          [void Function(AmusementparkRecordBuilder)? updates]) =>
      (new AmusementparkRecordBuilder()..update(updates))._build();

  _$AmusementparkRecord._(
      {this.shortTitle,
      this.title,
      this.img,
      this.waitTime,
      this.time,
      this.mapLink,
      this.shortDetails,
      this.details,
      this.type,
      this.rating,
      this.isFavourite,
      this.appbarname,
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
        shortTitle == other.shortTitle &&
        title == other.title &&
        img == other.img &&
        waitTime == other.waitTime &&
        time == other.time &&
        mapLink == other.mapLink &&
        shortDetails == other.shortDetails &&
        details == other.details &&
        type == other.type &&
        rating == other.rating &&
        isFavourite == other.isFavourite &&
        appbarname == other.appbarname &&
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
                                    $jc(
                                        $jc(
                                            $jc(
                                                $jc($jc(0, shortTitle.hashCode),
                                                    title.hashCode),
                                                img.hashCode),
                                            waitTime.hashCode),
                                        time.hashCode),
                                    mapLink.hashCode),
                                shortDetails.hashCode),
                            details.hashCode),
                        type.hashCode),
                    rating.hashCode),
                isFavourite.hashCode),
            appbarname.hashCode),
        ffRef.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'AmusementparkRecord')
          ..add('shortTitle', shortTitle)
          ..add('title', title)
          ..add('img', img)
          ..add('waitTime', waitTime)
          ..add('time', time)
          ..add('mapLink', mapLink)
          ..add('shortDetails', shortDetails)
          ..add('details', details)
          ..add('type', type)
          ..add('rating', rating)
          ..add('isFavourite', isFavourite)
          ..add('appbarname', appbarname)
          ..add('ffRef', ffRef))
        .toString();
  }
}

class AmusementparkRecordBuilder
    implements Builder<AmusementparkRecord, AmusementparkRecordBuilder> {
  _$AmusementparkRecord? _$v;

  String? _shortTitle;
  String? get shortTitle => _$this._shortTitle;
  set shortTitle(String? shortTitle) => _$this._shortTitle = shortTitle;

  String? _title;
  String? get title => _$this._title;
  set title(String? title) => _$this._title = title;

  String? _img;
  String? get img => _$this._img;
  set img(String? img) => _$this._img = img;

  String? _waitTime;
  String? get waitTime => _$this._waitTime;
  set waitTime(String? waitTime) => _$this._waitTime = waitTime;

  String? _time;
  String? get time => _$this._time;
  set time(String? time) => _$this._time = time;

  String? _mapLink;
  String? get mapLink => _$this._mapLink;
  set mapLink(String? mapLink) => _$this._mapLink = mapLink;

  String? _shortDetails;
  String? get shortDetails => _$this._shortDetails;
  set shortDetails(String? shortDetails) => _$this._shortDetails = shortDetails;

  String? _details;
  String? get details => _$this._details;
  set details(String? details) => _$this._details = details;

  ListBuilder<String>? _type;
  ListBuilder<String> get type => _$this._type ??= new ListBuilder<String>();
  set type(ListBuilder<String>? type) => _$this._type = type;

  double? _rating;
  double? get rating => _$this._rating;
  set rating(double? rating) => _$this._rating = rating;

  bool? _isFavourite;
  bool? get isFavourite => _$this._isFavourite;
  set isFavourite(bool? isFavourite) => _$this._isFavourite = isFavourite;

  String? _appbarname;
  String? get appbarname => _$this._appbarname;
  set appbarname(String? appbarname) => _$this._appbarname = appbarname;

  DocumentReference<Object?>? _ffRef;
  DocumentReference<Object?>? get ffRef => _$this._ffRef;
  set ffRef(DocumentReference<Object?>? ffRef) => _$this._ffRef = ffRef;

  AmusementparkRecordBuilder() {
    AmusementparkRecord._initializeBuilder(this);
  }

  AmusementparkRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _shortTitle = $v.shortTitle;
      _title = $v.title;
      _img = $v.img;
      _waitTime = $v.waitTime;
      _time = $v.time;
      _mapLink = $v.mapLink;
      _shortDetails = $v.shortDetails;
      _details = $v.details;
      _type = $v.type?.toBuilder();
      _rating = $v.rating;
      _isFavourite = $v.isFavourite;
      _appbarname = $v.appbarname;
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
              shortTitle: shortTitle,
              title: title,
              img: img,
              waitTime: waitTime,
              time: time,
              mapLink: mapLink,
              shortDetails: shortDetails,
              details: details,
              type: _type?.build(),
              rating: rating,
              isFavourite: isFavourite,
              appbarname: appbarname,
              ffRef: ffRef);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'type';
        _type?.build();
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
