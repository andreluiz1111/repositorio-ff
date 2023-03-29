// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'servicos_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<ServicosRecord> _$servicosRecordSerializer =
    new _$ServicosRecordSerializer();

class _$ServicosRecordSerializer
    implements StructuredSerializer<ServicosRecord> {
  @override
  final Iterable<Type> types = const [ServicosRecord, _$ServicosRecord];
  @override
  final String wireName = 'ServicosRecord';

  @override
  Iterable<Object?> serialize(Serializers serializers, ServicosRecord object,
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
  ServicosRecord deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new ServicosRecordBuilder();

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

class _$ServicosRecord extends ServicosRecord {
  @override
  final String? nome;
  @override
  final DocumentReference<Object?>? ffRef;

  factory _$ServicosRecord([void Function(ServicosRecordBuilder)? updates]) =>
      (new ServicosRecordBuilder()..update(updates))._build();

  _$ServicosRecord._({this.nome, this.ffRef}) : super._();

  @override
  ServicosRecord rebuild(void Function(ServicosRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ServicosRecordBuilder toBuilder() =>
      new ServicosRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ServicosRecord &&
        nome == other.nome &&
        ffRef == other.ffRef;
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
    return (newBuiltValueToStringHelper(r'ServicosRecord')
          ..add('nome', nome)
          ..add('ffRef', ffRef))
        .toString();
  }
}

class ServicosRecordBuilder
    implements Builder<ServicosRecord, ServicosRecordBuilder> {
  _$ServicosRecord? _$v;

  String? _nome;
  String? get nome => _$this._nome;
  set nome(String? nome) => _$this._nome = nome;

  DocumentReference<Object?>? _ffRef;
  DocumentReference<Object?>? get ffRef => _$this._ffRef;
  set ffRef(DocumentReference<Object?>? ffRef) => _$this._ffRef = ffRef;

  ServicosRecordBuilder() {
    ServicosRecord._initializeBuilder(this);
  }

  ServicosRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _nome = $v.nome;
      _ffRef = $v.ffRef;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ServicosRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ServicosRecord;
  }

  @override
  void update(void Function(ServicosRecordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ServicosRecord build() => _build();

  _$ServicosRecord _build() {
    final _$result = _$v ?? new _$ServicosRecord._(nome: nome, ffRef: ffRef);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
