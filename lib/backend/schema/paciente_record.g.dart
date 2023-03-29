// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'paciente_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<PacienteRecord> _$pacienteRecordSerializer =
    new _$PacienteRecordSerializer();

class _$PacienteRecordSerializer
    implements StructuredSerializer<PacienteRecord> {
  @override
  final Iterable<Type> types = const [PacienteRecord, _$PacienteRecord];
  @override
  final String wireName = 'PacienteRecord';

  @override
  Iterable<Object?> serialize(Serializers serializers, PacienteRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.cod;
    if (value != null) {
      result
        ..add('cod')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.prontuario;
    if (value != null) {
      result
        ..add('prontuario')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.convenio;
    if (value != null) {
      result
        ..add('convenio')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.matricula;
    if (value != null) {
      result
        ..add('matricula')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.validade;
    if (value != null) {
      result
        ..add('validade')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(DateTime)));
    }
    value = object.sexo;
    if (value != null) {
      result
        ..add('sexo')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.telefone1;
    if (value != null) {
      result
        ..add('telefone1')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.telefone2;
    if (value != null) {
      result
        ..add('telefone2')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.telefone3;
    if (value != null) {
      result
        ..add('telefone3')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.telefone4;
    if (value != null) {
      result
        ..add('telefone4')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.cep;
    if (value != null) {
      result
        ..add('cep')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.logradouro;
    if (value != null) {
      result
        ..add('logradouro')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.complemento;
    if (value != null) {
      result
        ..add('complemento')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.bairro;
    if (value != null) {
      result
        ..add('bairro')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.localidade;
    if (value != null) {
      result
        ..add('localidade')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.uf;
    if (value != null) {
      result
        ..add('uf')
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
    value = object.numero;
    if (value != null) {
      result
        ..add('numero')
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
  PacienteRecord deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new PacienteRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'cod':
          result.cod = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'prontuario':
          result.prontuario = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'convenio':
          result.convenio = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'matricula':
          result.matricula = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'validade':
          result.validade = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime?;
          break;
        case 'sexo':
          result.sexo = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'telefone1':
          result.telefone1 = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'telefone2':
          result.telefone2 = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'telefone3':
          result.telefone3 = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'telefone4':
          result.telefone4 = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'cep':
          result.cep = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'logradouro':
          result.logradouro = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'complemento':
          result.complemento = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'bairro':
          result.bairro = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'localidade':
          result.localidade = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'uf':
          result.uf = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'dono_user':
          result.donoUser = serializers.deserialize(value,
              specifiedType: const FullType(DocumentReference, const [
                const FullType.nullable(Object)
              ])) as DocumentReference<Object?>?;
          break;
        case 'numero':
          result.numero = serializers.deserialize(value,
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

class _$PacienteRecord extends PacienteRecord {
  @override
  final String? cod;
  @override
  final String? prontuario;
  @override
  final String? convenio;
  @override
  final String? matricula;
  @override
  final DateTime? validade;
  @override
  final String? sexo;
  @override
  final String? telefone1;
  @override
  final String? telefone2;
  @override
  final String? telefone3;
  @override
  final String? telefone4;
  @override
  final String? cep;
  @override
  final String? logradouro;
  @override
  final String? complemento;
  @override
  final String? bairro;
  @override
  final String? localidade;
  @override
  final String? uf;
  @override
  final DocumentReference<Object?>? donoUser;
  @override
  final String? numero;
  @override
  final DocumentReference<Object?>? ffRef;

  factory _$PacienteRecord([void Function(PacienteRecordBuilder)? updates]) =>
      (new PacienteRecordBuilder()..update(updates))._build();

  _$PacienteRecord._(
      {this.cod,
      this.prontuario,
      this.convenio,
      this.matricula,
      this.validade,
      this.sexo,
      this.telefone1,
      this.telefone2,
      this.telefone3,
      this.telefone4,
      this.cep,
      this.logradouro,
      this.complemento,
      this.bairro,
      this.localidade,
      this.uf,
      this.donoUser,
      this.numero,
      this.ffRef})
      : super._();

  @override
  PacienteRecord rebuild(void Function(PacienteRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  PacienteRecordBuilder toBuilder() =>
      new PacienteRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is PacienteRecord &&
        cod == other.cod &&
        prontuario == other.prontuario &&
        convenio == other.convenio &&
        matricula == other.matricula &&
        validade == other.validade &&
        sexo == other.sexo &&
        telefone1 == other.telefone1 &&
        telefone2 == other.telefone2 &&
        telefone3 == other.telefone3 &&
        telefone4 == other.telefone4 &&
        cep == other.cep &&
        logradouro == other.logradouro &&
        complemento == other.complemento &&
        bairro == other.bairro &&
        localidade == other.localidade &&
        uf == other.uf &&
        donoUser == other.donoUser &&
        numero == other.numero &&
        ffRef == other.ffRef;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, cod.hashCode);
    _$hash = $jc(_$hash, prontuario.hashCode);
    _$hash = $jc(_$hash, convenio.hashCode);
    _$hash = $jc(_$hash, matricula.hashCode);
    _$hash = $jc(_$hash, validade.hashCode);
    _$hash = $jc(_$hash, sexo.hashCode);
    _$hash = $jc(_$hash, telefone1.hashCode);
    _$hash = $jc(_$hash, telefone2.hashCode);
    _$hash = $jc(_$hash, telefone3.hashCode);
    _$hash = $jc(_$hash, telefone4.hashCode);
    _$hash = $jc(_$hash, cep.hashCode);
    _$hash = $jc(_$hash, logradouro.hashCode);
    _$hash = $jc(_$hash, complemento.hashCode);
    _$hash = $jc(_$hash, bairro.hashCode);
    _$hash = $jc(_$hash, localidade.hashCode);
    _$hash = $jc(_$hash, uf.hashCode);
    _$hash = $jc(_$hash, donoUser.hashCode);
    _$hash = $jc(_$hash, numero.hashCode);
    _$hash = $jc(_$hash, ffRef.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'PacienteRecord')
          ..add('cod', cod)
          ..add('prontuario', prontuario)
          ..add('convenio', convenio)
          ..add('matricula', matricula)
          ..add('validade', validade)
          ..add('sexo', sexo)
          ..add('telefone1', telefone1)
          ..add('telefone2', telefone2)
          ..add('telefone3', telefone3)
          ..add('telefone4', telefone4)
          ..add('cep', cep)
          ..add('logradouro', logradouro)
          ..add('complemento', complemento)
          ..add('bairro', bairro)
          ..add('localidade', localidade)
          ..add('uf', uf)
          ..add('donoUser', donoUser)
          ..add('numero', numero)
          ..add('ffRef', ffRef))
        .toString();
  }
}

class PacienteRecordBuilder
    implements Builder<PacienteRecord, PacienteRecordBuilder> {
  _$PacienteRecord? _$v;

  String? _cod;
  String? get cod => _$this._cod;
  set cod(String? cod) => _$this._cod = cod;

  String? _prontuario;
  String? get prontuario => _$this._prontuario;
  set prontuario(String? prontuario) => _$this._prontuario = prontuario;

  String? _convenio;
  String? get convenio => _$this._convenio;
  set convenio(String? convenio) => _$this._convenio = convenio;

  String? _matricula;
  String? get matricula => _$this._matricula;
  set matricula(String? matricula) => _$this._matricula = matricula;

  DateTime? _validade;
  DateTime? get validade => _$this._validade;
  set validade(DateTime? validade) => _$this._validade = validade;

  String? _sexo;
  String? get sexo => _$this._sexo;
  set sexo(String? sexo) => _$this._sexo = sexo;

  String? _telefone1;
  String? get telefone1 => _$this._telefone1;
  set telefone1(String? telefone1) => _$this._telefone1 = telefone1;

  String? _telefone2;
  String? get telefone2 => _$this._telefone2;
  set telefone2(String? telefone2) => _$this._telefone2 = telefone2;

  String? _telefone3;
  String? get telefone3 => _$this._telefone3;
  set telefone3(String? telefone3) => _$this._telefone3 = telefone3;

  String? _telefone4;
  String? get telefone4 => _$this._telefone4;
  set telefone4(String? telefone4) => _$this._telefone4 = telefone4;

  String? _cep;
  String? get cep => _$this._cep;
  set cep(String? cep) => _$this._cep = cep;

  String? _logradouro;
  String? get logradouro => _$this._logradouro;
  set logradouro(String? logradouro) => _$this._logradouro = logradouro;

  String? _complemento;
  String? get complemento => _$this._complemento;
  set complemento(String? complemento) => _$this._complemento = complemento;

  String? _bairro;
  String? get bairro => _$this._bairro;
  set bairro(String? bairro) => _$this._bairro = bairro;

  String? _localidade;
  String? get localidade => _$this._localidade;
  set localidade(String? localidade) => _$this._localidade = localidade;

  String? _uf;
  String? get uf => _$this._uf;
  set uf(String? uf) => _$this._uf = uf;

  DocumentReference<Object?>? _donoUser;
  DocumentReference<Object?>? get donoUser => _$this._donoUser;
  set donoUser(DocumentReference<Object?>? donoUser) =>
      _$this._donoUser = donoUser;

  String? _numero;
  String? get numero => _$this._numero;
  set numero(String? numero) => _$this._numero = numero;

  DocumentReference<Object?>? _ffRef;
  DocumentReference<Object?>? get ffRef => _$this._ffRef;
  set ffRef(DocumentReference<Object?>? ffRef) => _$this._ffRef = ffRef;

  PacienteRecordBuilder() {
    PacienteRecord._initializeBuilder(this);
  }

  PacienteRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _cod = $v.cod;
      _prontuario = $v.prontuario;
      _convenio = $v.convenio;
      _matricula = $v.matricula;
      _validade = $v.validade;
      _sexo = $v.sexo;
      _telefone1 = $v.telefone1;
      _telefone2 = $v.telefone2;
      _telefone3 = $v.telefone3;
      _telefone4 = $v.telefone4;
      _cep = $v.cep;
      _logradouro = $v.logradouro;
      _complemento = $v.complemento;
      _bairro = $v.bairro;
      _localidade = $v.localidade;
      _uf = $v.uf;
      _donoUser = $v.donoUser;
      _numero = $v.numero;
      _ffRef = $v.ffRef;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(PacienteRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$PacienteRecord;
  }

  @override
  void update(void Function(PacienteRecordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  PacienteRecord build() => _build();

  _$PacienteRecord _build() {
    final _$result = _$v ??
        new _$PacienteRecord._(
            cod: cod,
            prontuario: prontuario,
            convenio: convenio,
            matricula: matricula,
            validade: validade,
            sexo: sexo,
            telefone1: telefone1,
            telefone2: telefone2,
            telefone3: telefone3,
            telefone4: telefone4,
            cep: cep,
            logradouro: logradouro,
            complemento: complemento,
            bairro: bairro,
            localidade: localidade,
            uf: uf,
            donoUser: donoUser,
            numero: numero,
            ffRef: ffRef);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
