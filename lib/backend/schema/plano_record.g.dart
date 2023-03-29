// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'plano_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<PlanoRecord> _$planoRecordSerializer = new _$PlanoRecordSerializer();

class _$PlanoRecordSerializer implements StructuredSerializer<PlanoRecord> {
  @override
  final Iterable<Type> types = const [PlanoRecord, _$PlanoRecord];
  @override
  final String wireName = 'PlanoRecord';

  @override
  Iterable<Object?> serialize(Serializers serializers, PlanoRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.nome;
    if (value != null) {
      result
        ..add('nome')
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
  PlanoRecord deserialize(Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new PlanoRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'nome':
          result.nome = serializers.deserialize(value,
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

class _$PlanoRecord extends PlanoRecord {
  @override
  final String? nome;
  @override
  final DocumentReference<Object?>? ffRef;

  factory _$PlanoRecord([void Function(PlanoRecordBuilder)? updates]) =>
      (new PlanoRecordBuilder()..update(updates))._build();

  _$PlanoRecord._({this.nome, this.ffRef}) : super._();

  @override
  PlanoRecord rebuild(void Function(PlanoRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  PlanoRecordBuilder toBuilder() => new PlanoRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is PlanoRecord && nome == other.nome && ffRef == other.ffRef;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, nome.hashCode);
    _$hash = $jc(_$hash, ffRef.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'PlanoRecord')
          ..add('nome', nome)
          ..add('ffRef', ffRef))
        .toString();
  }
}

class PlanoRecordBuilder implements Builder<PlanoRecord, PlanoRecordBuilder> {
  _$PlanoRecord? _$v;

  String? _nome;
  String? get nome => _$this._nome;
  set nome(String? nome) => _$this._nome = nome;

  DocumentReference<Object?>? _ffRef;
  DocumentReference<Object?>? get ffRef => _$this._ffRef;
  set ffRef(DocumentReference<Object?>? ffRef) => _$this._ffRef = ffRef;

  PlanoRecordBuilder() {
    PlanoRecord._initializeBuilder(this);
  }

  PlanoRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _nome = $v.nome;
      _ffRef = $v.ffRef;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(PlanoRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$PlanoRecord;
  }

  @override
  void update(void Function(PlanoRecordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  PlanoRecord build() => _build();

  _$PlanoRecord _build() {
    final _$result = _$v ?? new _$PlanoRecord._(nome: nome, ffRef: ffRef);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
