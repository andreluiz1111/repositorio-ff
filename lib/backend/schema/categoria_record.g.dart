// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'categoria_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<CategoriaRecord> _$categoriaRecordSerializer =
    new _$CategoriaRecordSerializer();

class _$CategoriaRecordSerializer
    implements StructuredSerializer<CategoriaRecord> {
  @override
  final Iterable<Type> types = const [CategoriaRecord, _$CategoriaRecord];
  @override
  final String wireName = 'CategoriaRecord';

  @override
  Iterable<Object?> serialize(Serializers serializers, CategoriaRecord object,
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
  CategoriaRecord deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new CategoriaRecordBuilder();

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

class _$CategoriaRecord extends CategoriaRecord {
  @override
  final String? nome;
  @override
  final DocumentReference<Object?>? ffRef;

  factory _$CategoriaRecord([void Function(CategoriaRecordBuilder)? updates]) =>
      (new CategoriaRecordBuilder()..update(updates))._build();

  _$CategoriaRecord._({this.nome, this.ffRef}) : super._();

  @override
  CategoriaRecord rebuild(void Function(CategoriaRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CategoriaRecordBuilder toBuilder() =>
      new CategoriaRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CategoriaRecord &&
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
    return (newBuiltValueToStringHelper(r'CategoriaRecord')
          ..add('nome', nome)
          ..add('ffRef', ffRef))
        .toString();
  }
}

class CategoriaRecordBuilder
    implements Builder<CategoriaRecord, CategoriaRecordBuilder> {
  _$CategoriaRecord? _$v;

  String? _nome;
  String? get nome => _$this._nome;
  set nome(String? nome) => _$this._nome = nome;

  DocumentReference<Object?>? _ffRef;
  DocumentReference<Object?>? get ffRef => _$this._ffRef;
  set ffRef(DocumentReference<Object?>? ffRef) => _$this._ffRef = ffRef;

  CategoriaRecordBuilder() {
    CategoriaRecord._initializeBuilder(this);
  }

  CategoriaRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _nome = $v.nome;
      _ffRef = $v.ffRef;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CategoriaRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$CategoriaRecord;
  }

  @override
  void update(void Function(CategoriaRecordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  CategoriaRecord build() => _build();

  _$CategoriaRecord _build() {
    final _$result = _$v ?? new _$CategoriaRecord._(nome: nome, ffRef: ffRef);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
