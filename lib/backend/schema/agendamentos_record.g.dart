// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'agendamentos_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<AgendamentosRecord> _$agendamentosRecordSerializer =
    new _$AgendamentosRecordSerializer();

class _$AgendamentosRecordSerializer
    implements StructuredSerializer<AgendamentosRecord> {
  @override
  final Iterable<Type> types = const [AgendamentosRecord, _$AgendamentosRecord];
  @override
  final String wireName = 'AgendamentosRecord';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, AgendamentosRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.cliente;
    if (value != null) {
      result
        ..add('cliente')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                DocumentReference, const [const FullType.nullable(Object)])));
    }
    value = object.profissional;
    if (value != null) {
      result
        ..add('profissional')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                DocumentReference, const [const FullType.nullable(Object)])));
    }
    value = object.servico;
    if (value != null) {
      result
        ..add('servico')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                DocumentReference, const [const FullType.nullable(Object)])));
    }
    value = object.horario;
    if (value != null) {
      result
        ..add('horario')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(DateTime)));
    }
    value = object.diaAno;
    if (value != null) {
      result
        ..add('dia_ano')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.diaMes;
    if (value != null) {
      result
        ..add('dia_mes')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.mesAno;
    if (value != null) {
      result
        ..add('mes_ano')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.diaEMes;
    if (value != null) {
      result
        ..add('dia_e_mes')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.diaSem;
    if (value != null) {
      result
        ..add('dia_sem')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.hrAge;
    if (value != null) {
      result
        ..add('hr_age')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(double)));
    }
    value = object.tmpCons;
    if (value != null) {
      result
        ..add('tmp_cons')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(double)));
    }
    value = object.iniEst;
    if (value != null) {
      result
        ..add('ini_est')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(double)));
    }
    value = object.fimEst;
    if (value != null) {
      result
        ..add('fim_est')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(double)));
    }
    value = object.iniCon;
    if (value != null) {
      result
        ..add('ini_con')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(double)));
    }
    value = object.terCon;
    if (value != null) {
      result
        ..add('ter_con')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(double)));
    }
    value = object.sit;
    if (value != null) {
      result
        ..add('sit')
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
  AgendamentosRecord deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new AgendamentosRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'cliente':
          result.cliente = serializers.deserialize(value,
              specifiedType: const FullType(DocumentReference, const [
                const FullType.nullable(Object)
              ])) as DocumentReference<Object?>?;
          break;
        case 'profissional':
          result.profissional = serializers.deserialize(value,
              specifiedType: const FullType(DocumentReference, const [
                const FullType.nullable(Object)
              ])) as DocumentReference<Object?>?;
          break;
        case 'servico':
          result.servico = serializers.deserialize(value,
              specifiedType: const FullType(DocumentReference, const [
                const FullType.nullable(Object)
              ])) as DocumentReference<Object?>?;
          break;
        case 'horario':
          result.horario = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime?;
          break;
        case 'dia_ano':
          result.diaAno = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'dia_mes':
          result.diaMes = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'mes_ano':
          result.mesAno = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'dia_e_mes':
          result.diaEMes = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'dia_sem':
          result.diaSem = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'hr_age':
          result.hrAge = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double?;
          break;
        case 'tmp_cons':
          result.tmpCons = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double?;
          break;
        case 'ini_est':
          result.iniEst = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double?;
          break;
        case 'fim_est':
          result.fimEst = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double?;
          break;
        case 'ini_con':
          result.iniCon = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double?;
          break;
        case 'ter_con':
          result.terCon = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double?;
          break;
        case 'sit':
          result.sit = serializers.deserialize(value,
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

class _$AgendamentosRecord extends AgendamentosRecord {
  @override
  final DocumentReference<Object?>? cliente;
  @override
  final DocumentReference<Object?>? profissional;
  @override
  final DocumentReference<Object?>? servico;
  @override
  final DateTime? horario;
  @override
  final String? diaAno;
  @override
  final String? diaMes;
  @override
  final String? mesAno;
  @override
  final String? diaEMes;
  @override
  final String? diaSem;
  @override
  final double? hrAge;
  @override
  final double? tmpCons;
  @override
  final double? iniEst;
  @override
  final double? fimEst;
  @override
  final double? iniCon;
  @override
  final double? terCon;
  @override
  final String? sit;
  @override
  final DocumentReference<Object?>? ffRef;

  factory _$AgendamentosRecord(
          [void Function(AgendamentosRecordBuilder)? updates]) =>
      (new AgendamentosRecordBuilder()..update(updates))._build();

  _$AgendamentosRecord._(
      {this.cliente,
      this.profissional,
      this.servico,
      this.horario,
      this.diaAno,
      this.diaMes,
      this.mesAno,
      this.diaEMes,
      this.diaSem,
      this.hrAge,
      this.tmpCons,
      this.iniEst,
      this.fimEst,
      this.iniCon,
      this.terCon,
      this.sit,
      this.ffRef})
      : super._();

  @override
  AgendamentosRecord rebuild(
          void Function(AgendamentosRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  AgendamentosRecordBuilder toBuilder() =>
      new AgendamentosRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is AgendamentosRecord &&
        cliente == other.cliente &&
        profissional == other.profissional &&
        servico == other.servico &&
        horario == other.horario &&
        diaAno == other.diaAno &&
        diaMes == other.diaMes &&
        mesAno == other.mesAno &&
        diaEMes == other.diaEMes &&
        diaSem == other.diaSem &&
        hrAge == other.hrAge &&
        tmpCons == other.tmpCons &&
        iniEst == other.iniEst &&
        fimEst == other.fimEst &&
        iniCon == other.iniCon &&
        terCon == other.terCon &&
        sit == other.sit &&
        ffRef == other.ffRef;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, cliente.hashCode);
    _$hash = $jc(_$hash, profissional.hashCode);
    _$hash = $jc(_$hash, servico.hashCode);
    _$hash = $jc(_$hash, horario.hashCode);
    _$hash = $jc(_$hash, diaAno.hashCode);
    _$hash = $jc(_$hash, diaMes.hashCode);
    _$hash = $jc(_$hash, mesAno.hashCode);
    _$hash = $jc(_$hash, diaEMes.hashCode);
    _$hash = $jc(_$hash, diaSem.hashCode);
    _$hash = $jc(_$hash, hrAge.hashCode);
    _$hash = $jc(_$hash, tmpCons.hashCode);
    _$hash = $jc(_$hash, iniEst.hashCode);
    _$hash = $jc(_$hash, fimEst.hashCode);
    _$hash = $jc(_$hash, iniCon.hashCode);
    _$hash = $jc(_$hash, terCon.hashCode);
    _$hash = $jc(_$hash, sit.hashCode);
    _$hash = $jc(_$hash, ffRef.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'AgendamentosRecord')
          ..add('cliente', cliente)
          ..add('profissional', profissional)
          ..add('servico', servico)
          ..add('horario', horario)
          ..add('diaAno', diaAno)
          ..add('diaMes', diaMes)
          ..add('mesAno', mesAno)
          ..add('diaEMes', diaEMes)
          ..add('diaSem', diaSem)
          ..add('hrAge', hrAge)
          ..add('tmpCons', tmpCons)
          ..add('iniEst', iniEst)
          ..add('fimEst', fimEst)
          ..add('iniCon', iniCon)
          ..add('terCon', terCon)
          ..add('sit', sit)
          ..add('ffRef', ffRef))
        .toString();
  }
}

class AgendamentosRecordBuilder
    implements Builder<AgendamentosRecord, AgendamentosRecordBuilder> {
  _$AgendamentosRecord? _$v;

  DocumentReference<Object?>? _cliente;
  DocumentReference<Object?>? get cliente => _$this._cliente;
  set cliente(DocumentReference<Object?>? cliente) => _$this._cliente = cliente;

  DocumentReference<Object?>? _profissional;
  DocumentReference<Object?>? get profissional => _$this._profissional;
  set profissional(DocumentReference<Object?>? profissional) =>
      _$this._profissional = profissional;

  DocumentReference<Object?>? _servico;
  DocumentReference<Object?>? get servico => _$this._servico;
  set servico(DocumentReference<Object?>? servico) => _$this._servico = servico;

  DateTime? _horario;
  DateTime? get horario => _$this._horario;
  set horario(DateTime? horario) => _$this._horario = horario;

  String? _diaAno;
  String? get diaAno => _$this._diaAno;
  set diaAno(String? diaAno) => _$this._diaAno = diaAno;

  String? _diaMes;
  String? get diaMes => _$this._diaMes;
  set diaMes(String? diaMes) => _$this._diaMes = diaMes;

  String? _mesAno;
  String? get mesAno => _$this._mesAno;
  set mesAno(String? mesAno) => _$this._mesAno = mesAno;

  String? _diaEMes;
  String? get diaEMes => _$this._diaEMes;
  set diaEMes(String? diaEMes) => _$this._diaEMes = diaEMes;

  String? _diaSem;
  String? get diaSem => _$this._diaSem;
  set diaSem(String? diaSem) => _$this._diaSem = diaSem;

  double? _hrAge;
  double? get hrAge => _$this._hrAge;
  set hrAge(double? hrAge) => _$this._hrAge = hrAge;

  double? _tmpCons;
  double? get tmpCons => _$this._tmpCons;
  set tmpCons(double? tmpCons) => _$this._tmpCons = tmpCons;

  double? _iniEst;
  double? get iniEst => _$this._iniEst;
  set iniEst(double? iniEst) => _$this._iniEst = iniEst;

  double? _fimEst;
  double? get fimEst => _$this._fimEst;
  set fimEst(double? fimEst) => _$this._fimEst = fimEst;

  double? _iniCon;
  double? get iniCon => _$this._iniCon;
  set iniCon(double? iniCon) => _$this._iniCon = iniCon;

  double? _terCon;
  double? get terCon => _$this._terCon;
  set terCon(double? terCon) => _$this._terCon = terCon;

  String? _sit;
  String? get sit => _$this._sit;
  set sit(String? sit) => _$this._sit = sit;

  DocumentReference<Object?>? _ffRef;
  DocumentReference<Object?>? get ffRef => _$this._ffRef;
  set ffRef(DocumentReference<Object?>? ffRef) => _$this._ffRef = ffRef;

  AgendamentosRecordBuilder() {
    AgendamentosRecord._initializeBuilder(this);
  }

  AgendamentosRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _cliente = $v.cliente;
      _profissional = $v.profissional;
      _servico = $v.servico;
      _horario = $v.horario;
      _diaAno = $v.diaAno;
      _diaMes = $v.diaMes;
      _mesAno = $v.mesAno;
      _diaEMes = $v.diaEMes;
      _diaSem = $v.diaSem;
      _hrAge = $v.hrAge;
      _tmpCons = $v.tmpCons;
      _iniEst = $v.iniEst;
      _fimEst = $v.fimEst;
      _iniCon = $v.iniCon;
      _terCon = $v.terCon;
      _sit = $v.sit;
      _ffRef = $v.ffRef;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(AgendamentosRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$AgendamentosRecord;
  }

  @override
  void update(void Function(AgendamentosRecordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  AgendamentosRecord build() => _build();

  _$AgendamentosRecord _build() {
    final _$result = _$v ??
        new _$AgendamentosRecord._(
            cliente: cliente,
            profissional: profissional,
            servico: servico,
            horario: horario,
            diaAno: diaAno,
            diaMes: diaMes,
            mesAno: mesAno,
            diaEMes: diaEMes,
            diaSem: diaSem,
            hrAge: hrAge,
            tmpCons: tmpCons,
            iniEst: iniEst,
            fimEst: fimEst,
            iniCon: iniCon,
            terCon: terCon,
            sit: sit,
            ffRef: ffRef);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
