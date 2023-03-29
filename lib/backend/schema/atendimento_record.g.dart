// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'atendimento_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<AtendimentoRecord> _$atendimentoRecordSerializer =
    new _$AtendimentoRecordSerializer();

class _$AtendimentoRecordSerializer
    implements StructuredSerializer<AtendimentoRecord> {
  @override
  final Iterable<Type> types = const [AtendimentoRecord, _$AtendimentoRecord];
  @override
  final String wireName = 'AtendimentoRecord';

  @override
  Iterable<Object?> serialize(Serializers serializers, AtendimentoRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
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
    value = object.diaAno;
    if (value != null) {
      result
        ..add('dia_ano')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(double)));
    }
    value = object.mesAno;
    if (value != null) {
      result
        ..add('mes_ano')
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
    value = object.agendados;
    if (value != null) {
      result
        ..add('agendados')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(double)));
    }
    value = object.cancelados;
    if (value != null) {
      result
        ..add('cancelados')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(double)));
    }
    value = object.vagos;
    if (value != null) {
      result
        ..add('vagos')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(double)));
    }
    value = object.reagendados;
    if (value != null) {
      result
        ..add('reagendados')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(double)));
    }
    value = object.atrIni;
    if (value != null) {
      result
        ..add('atr_ini')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(double)));
    }
    value = object.tmc;
    if (value != null) {
      result
        ..add('tmc')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(double)));
    }
    value = object.hrAtend;
    if (value != null) {
      result
        ..add('hr_atend')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(double)));
    }
    value = object.hrCanc;
    if (value != null) {
      result
        ..add('hr_canc')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(double)));
    }
    value = object.hrReag;
    if (value != null) {
      result
        ..add('hr_reag')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(double)));
    }
    value = object.hrVago;
    if (value != null) {
      result
        ..add('hr_vago')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(double)));
    }
    value = object.hrIni;
    if (value != null) {
      result
        ..add('hr_ini')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(double)));
    }
    value = object.hrFim;
    if (value != null) {
      result
        ..add('hr_fim')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(double)));
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
  AtendimentoRecord deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new AtendimentoRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
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
        case 'dia_ano':
          result.diaAno = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double?;
          break;
        case 'mes_ano':
          result.mesAno = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'dia_mes':
          result.diaMes = serializers.deserialize(value,
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
        case 'agendados':
          result.agendados = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double?;
          break;
        case 'cancelados':
          result.cancelados = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double?;
          break;
        case 'vagos':
          result.vagos = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double?;
          break;
        case 'reagendados':
          result.reagendados = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double?;
          break;
        case 'atr_ini':
          result.atrIni = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double?;
          break;
        case 'tmc':
          result.tmc = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double?;
          break;
        case 'hr_atend':
          result.hrAtend = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double?;
          break;
        case 'hr_canc':
          result.hrCanc = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double?;
          break;
        case 'hr_reag':
          result.hrReag = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double?;
          break;
        case 'hr_vago':
          result.hrVago = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double?;
          break;
        case 'hr_ini':
          result.hrIni = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double?;
          break;
        case 'hr_fim':
          result.hrFim = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double?;
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

class _$AtendimentoRecord extends AtendimentoRecord {
  @override
  final DocumentReference<Object?>? profissional;
  @override
  final DocumentReference<Object?>? servico;
  @override
  final double? diaAno;
  @override
  final String? mesAno;
  @override
  final String? diaMes;
  @override
  final String? diaEMes;
  @override
  final String? diaSem;
  @override
  final double? agendados;
  @override
  final double? cancelados;
  @override
  final double? vagos;
  @override
  final double? reagendados;
  @override
  final double? atrIni;
  @override
  final double? tmc;
  @override
  final double? hrAtend;
  @override
  final double? hrCanc;
  @override
  final double? hrReag;
  @override
  final double? hrVago;
  @override
  final double? hrIni;
  @override
  final double? hrFim;
  @override
  final DocumentReference<Object?>? ffRef;

  factory _$AtendimentoRecord(
          [void Function(AtendimentoRecordBuilder)? updates]) =>
      (new AtendimentoRecordBuilder()..update(updates))._build();

  _$AtendimentoRecord._(
      {this.profissional,
      this.servico,
      this.diaAno,
      this.mesAno,
      this.diaMes,
      this.diaEMes,
      this.diaSem,
      this.agendados,
      this.cancelados,
      this.vagos,
      this.reagendados,
      this.atrIni,
      this.tmc,
      this.hrAtend,
      this.hrCanc,
      this.hrReag,
      this.hrVago,
      this.hrIni,
      this.hrFim,
      this.ffRef})
      : super._();

  @override
  AtendimentoRecord rebuild(void Function(AtendimentoRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  AtendimentoRecordBuilder toBuilder() =>
      new AtendimentoRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is AtendimentoRecord &&
        profissional == other.profissional &&
        servico == other.servico &&
        diaAno == other.diaAno &&
        mesAno == other.mesAno &&
        diaMes == other.diaMes &&
        diaEMes == other.diaEMes &&
        diaSem == other.diaSem &&
        agendados == other.agendados &&
        cancelados == other.cancelados &&
        vagos == other.vagos &&
        reagendados == other.reagendados &&
        atrIni == other.atrIni &&
        tmc == other.tmc &&
        hrAtend == other.hrAtend &&
        hrCanc == other.hrCanc &&
        hrReag == other.hrReag &&
        hrVago == other.hrVago &&
        hrIni == other.hrIni &&
        hrFim == other.hrFim &&
        ffRef == other.ffRef;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, profissional.hashCode);
    _$hash = $jc(_$hash, servico.hashCode);
    _$hash = $jc(_$hash, diaAno.hashCode);
    _$hash = $jc(_$hash, mesAno.hashCode);
    _$hash = $jc(_$hash, diaMes.hashCode);
    _$hash = $jc(_$hash, diaEMes.hashCode);
    _$hash = $jc(_$hash, diaSem.hashCode);
    _$hash = $jc(_$hash, agendados.hashCode);
    _$hash = $jc(_$hash, cancelados.hashCode);
    _$hash = $jc(_$hash, vagos.hashCode);
    _$hash = $jc(_$hash, reagendados.hashCode);
    _$hash = $jc(_$hash, atrIni.hashCode);
    _$hash = $jc(_$hash, tmc.hashCode);
    _$hash = $jc(_$hash, hrAtend.hashCode);
    _$hash = $jc(_$hash, hrCanc.hashCode);
    _$hash = $jc(_$hash, hrReag.hashCode);
    _$hash = $jc(_$hash, hrVago.hashCode);
    _$hash = $jc(_$hash, hrIni.hashCode);
    _$hash = $jc(_$hash, hrFim.hashCode);
    _$hash = $jc(_$hash, ffRef.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'AtendimentoRecord')
          ..add('profissional', profissional)
          ..add('servico', servico)
          ..add('diaAno', diaAno)
          ..add('mesAno', mesAno)
          ..add('diaMes', diaMes)
          ..add('diaEMes', diaEMes)
          ..add('diaSem', diaSem)
          ..add('agendados', agendados)
          ..add('cancelados', cancelados)
          ..add('vagos', vagos)
          ..add('reagendados', reagendados)
          ..add('atrIni', atrIni)
          ..add('tmc', tmc)
          ..add('hrAtend', hrAtend)
          ..add('hrCanc', hrCanc)
          ..add('hrReag', hrReag)
          ..add('hrVago', hrVago)
          ..add('hrIni', hrIni)
          ..add('hrFim', hrFim)
          ..add('ffRef', ffRef))
        .toString();
  }
}

class AtendimentoRecordBuilder
    implements Builder<AtendimentoRecord, AtendimentoRecordBuilder> {
  _$AtendimentoRecord? _$v;

  DocumentReference<Object?>? _profissional;
  DocumentReference<Object?>? get profissional => _$this._profissional;
  set profissional(DocumentReference<Object?>? profissional) =>
      _$this._profissional = profissional;

  DocumentReference<Object?>? _servico;
  DocumentReference<Object?>? get servico => _$this._servico;
  set servico(DocumentReference<Object?>? servico) => _$this._servico = servico;

  double? _diaAno;
  double? get diaAno => _$this._diaAno;
  set diaAno(double? diaAno) => _$this._diaAno = diaAno;

  String? _mesAno;
  String? get mesAno => _$this._mesAno;
  set mesAno(String? mesAno) => _$this._mesAno = mesAno;

  String? _diaMes;
  String? get diaMes => _$this._diaMes;
  set diaMes(String? diaMes) => _$this._diaMes = diaMes;

  String? _diaEMes;
  String? get diaEMes => _$this._diaEMes;
  set diaEMes(String? diaEMes) => _$this._diaEMes = diaEMes;

  String? _diaSem;
  String? get diaSem => _$this._diaSem;
  set diaSem(String? diaSem) => _$this._diaSem = diaSem;

  double? _agendados;
  double? get agendados => _$this._agendados;
  set agendados(double? agendados) => _$this._agendados = agendados;

  double? _cancelados;
  double? get cancelados => _$this._cancelados;
  set cancelados(double? cancelados) => _$this._cancelados = cancelados;

  double? _vagos;
  double? get vagos => _$this._vagos;
  set vagos(double? vagos) => _$this._vagos = vagos;

  double? _reagendados;
  double? get reagendados => _$this._reagendados;
  set reagendados(double? reagendados) => _$this._reagendados = reagendados;

  double? _atrIni;
  double? get atrIni => _$this._atrIni;
  set atrIni(double? atrIni) => _$this._atrIni = atrIni;

  double? _tmc;
  double? get tmc => _$this._tmc;
  set tmc(double? tmc) => _$this._tmc = tmc;

  double? _hrAtend;
  double? get hrAtend => _$this._hrAtend;
  set hrAtend(double? hrAtend) => _$this._hrAtend = hrAtend;

  double? _hrCanc;
  double? get hrCanc => _$this._hrCanc;
  set hrCanc(double? hrCanc) => _$this._hrCanc = hrCanc;

  double? _hrReag;
  double? get hrReag => _$this._hrReag;
  set hrReag(double? hrReag) => _$this._hrReag = hrReag;

  double? _hrVago;
  double? get hrVago => _$this._hrVago;
  set hrVago(double? hrVago) => _$this._hrVago = hrVago;

  double? _hrIni;
  double? get hrIni => _$this._hrIni;
  set hrIni(double? hrIni) => _$this._hrIni = hrIni;

  double? _hrFim;
  double? get hrFim => _$this._hrFim;
  set hrFim(double? hrFim) => _$this._hrFim = hrFim;

  DocumentReference<Object?>? _ffRef;
  DocumentReference<Object?>? get ffRef => _$this._ffRef;
  set ffRef(DocumentReference<Object?>? ffRef) => _$this._ffRef = ffRef;

  AtendimentoRecordBuilder() {
    AtendimentoRecord._initializeBuilder(this);
  }

  AtendimentoRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _profissional = $v.profissional;
      _servico = $v.servico;
      _diaAno = $v.diaAno;
      _mesAno = $v.mesAno;
      _diaMes = $v.diaMes;
      _diaEMes = $v.diaEMes;
      _diaSem = $v.diaSem;
      _agendados = $v.agendados;
      _cancelados = $v.cancelados;
      _vagos = $v.vagos;
      _reagendados = $v.reagendados;
      _atrIni = $v.atrIni;
      _tmc = $v.tmc;
      _hrAtend = $v.hrAtend;
      _hrCanc = $v.hrCanc;
      _hrReag = $v.hrReag;
      _hrVago = $v.hrVago;
      _hrIni = $v.hrIni;
      _hrFim = $v.hrFim;
      _ffRef = $v.ffRef;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(AtendimentoRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$AtendimentoRecord;
  }

  @override
  void update(void Function(AtendimentoRecordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  AtendimentoRecord build() => _build();

  _$AtendimentoRecord _build() {
    final _$result = _$v ??
        new _$AtendimentoRecord._(
            profissional: profissional,
            servico: servico,
            diaAno: diaAno,
            mesAno: mesAno,
            diaMes: diaMes,
            diaEMes: diaEMes,
            diaSem: diaSem,
            agendados: agendados,
            cancelados: cancelados,
            vagos: vagos,
            reagendados: reagendados,
            atrIni: atrIni,
            tmc: tmc,
            hrAtend: hrAtend,
            hrCanc: hrCanc,
            hrReag: hrReag,
            hrVago: hrVago,
            hrIni: hrIni,
            hrFim: hrFim,
            ffRef: ffRef);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
