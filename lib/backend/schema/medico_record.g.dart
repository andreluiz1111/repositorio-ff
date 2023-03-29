// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'medico_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<MedicoRecord> _$medicoRecordSerializer =
    new _$MedicoRecordSerializer();

class _$MedicoRecordSerializer implements StructuredSerializer<MedicoRecord> {
  @override
  final Iterable<Type> types = const [MedicoRecord, _$MedicoRecord];
  @override
  final String wireName = 'MedicoRecord';

  @override
  Iterable<Object?> serialize(Serializers serializers, MedicoRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.crm;
    if (value != null) {
      result
        ..add('crm')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.sit;
    if (value != null) {
      result
        ..add('sit')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
    }
    value = object.servico;
    if (value != null) {
      result
        ..add('servico')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                DocumentReference, const [const FullType.nullable(Object)])));
    }
    value = object.escala;
    if (value != null) {
      result
        ..add('escala')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.donoUser;
    if (value != null) {
      result
        ..add('dono_user')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                DocumentReference, const [const FullType.nullable(Object)])));
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
  MedicoRecord deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new MedicoRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'crm':
          result.crm = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'sit':
          result.sit = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool?;
          break;
        case 'servico':
          result.servico = serializers.deserialize(value,
              specifiedType: const FullType(DocumentReference, const [
                const FullType.nullable(Object)
              ])) as DocumentReference<Object?>?;
          break;
        case 'escala':
          result.escala = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'dono_user':
          result.donoUser = serializers.deserialize(value,
              specifiedType: const FullType(DocumentReference, const [
                const FullType.nullable(Object)
              ])) as DocumentReference<Object?>?;
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

class _$MedicoRecord extends MedicoRecord {
  @override
  final String? crm;
  @override
  final bool? sit;
  @override
  final DocumentReference<Object?>? servico;
  @override
  final String? escala;
  @override
  final DocumentReference<Object?>? donoUser;
  @override
  final DocumentReference<Object?>? ffRef;

  factory _$MedicoRecord([void Function(MedicoRecordBuilder)? updates]) =>
      (new MedicoRecordBuilder()..update(updates))._build();

  _$MedicoRecord._(
      {this.crm,
      this.sit,
      this.servico,
      this.escala,
      this.donoUser,
      this.ffRef})
      : super._();

  @override
  MedicoRecord rebuild(void Function(MedicoRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  MedicoRecordBuilder toBuilder() => new MedicoRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is MedicoRecord &&
        crm == other.crm &&
        sit == other.sit &&
        servico == other.servico &&
        escala == other.escala &&
        donoUser == other.donoUser &&
        ffRef == other.ffRef;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, crm.hashCode);
    _$hash = $jc(_$hash, sit.hashCode);
    _$hash = $jc(_$hash, servico.hashCode);
    _$hash = $jc(_$hash, escala.hashCode);
    _$hash = $jc(_$hash, donoUser.hashCode);
    _$hash = $jc(_$hash, ffRef.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'MedicoRecord')
          ..add('crm', crm)
          ..add('sit', sit)
          ..add('servico', servico)
          ..add('escala', escala)
          ..add('donoUser', donoUser)
          ..add('ffRef', ffRef))
        .toString();
  }
}

class MedicoRecordBuilder
    implements Builder<MedicoRecord, MedicoRecordBuilder> {
  _$MedicoRecord? _$v;

  String? _crm;
  String? get crm => _$this._crm;
  set crm(String? crm) => _$this._crm = crm;

  bool? _sit;
  bool? get sit => _$this._sit;
  set sit(bool? sit) => _$this._sit = sit;

  DocumentReference<Object?>? _servico;
  DocumentReference<Object?>? get servico => _$this._servico;
  set servico(DocumentReference<Object?>? servico) => _$this._servico = servico;

  String? _escala;
  String? get escala => _$this._escala;
  set escala(String? escala) => _$this._escala = escala;

  DocumentReference<Object?>? _donoUser;
  DocumentReference<Object?>? get donoUser => _$this._donoUser;
  set donoUser(DocumentReference<Object?>? donoUser) =>
      _$this._donoUser = donoUser;

  DocumentReference<Object?>? _ffRef;
  DocumentReference<Object?>? get ffRef => _$this._ffRef;
  set ffRef(DocumentReference<Object?>? ffRef) => _$this._ffRef = ffRef;

  MedicoRecordBuilder() {
    MedicoRecord._initializeBuilder(this);
  }

  MedicoRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _crm = $v.crm;
      _sit = $v.sit;
      _servico = $v.servico;
      _escala = $v.escala;
      _donoUser = $v.donoUser;
      _ffRef = $v.ffRef;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(MedicoRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$MedicoRecord;
  }

  @override
  void update(void Function(MedicoRecordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  MedicoRecord build() => _build();

  _$MedicoRecord _build() {
    final _$result = _$v ??
        new _$MedicoRecord._(
            crm: crm,
            sit: sit,
            servico: servico,
            escala: escala,
            donoUser: donoUser,
            ffRef: ffRef);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
