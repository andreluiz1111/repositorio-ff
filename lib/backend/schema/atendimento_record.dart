import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'atendimento_record.g.dart';

abstract class AtendimentoRecord
    implements Built<AtendimentoRecord, AtendimentoRecordBuilder> {
  static Serializer<AtendimentoRecord> get serializer =>
      _$atendimentoRecordSerializer;

  DocumentReference? get profissional;

  DocumentReference? get servico;

  @BuiltValueField(wireName: 'dia_ano')
  double? get diaAno;

  @BuiltValueField(wireName: 'mes_ano')
  String? get mesAno;

  @BuiltValueField(wireName: 'dia_mes')
  String? get diaMes;

  @BuiltValueField(wireName: 'dia_e_mes')
  String? get diaEMes;

  @BuiltValueField(wireName: 'dia_sem')
  String? get diaSem;

  double? get agendados;

  double? get cancelados;

  double? get vagos;

  double? get reagendados;

  @BuiltValueField(wireName: 'atr_ini')
  double? get atrIni;

  double? get tmc;

  @BuiltValueField(wireName: 'hr_atend')
  double? get hrAtend;

  @BuiltValueField(wireName: 'hr_canc')
  double? get hrCanc;

  @BuiltValueField(wireName: 'hr_reag')
  double? get hrReag;

  @BuiltValueField(wireName: 'hr_vago')
  double? get hrVago;

  @BuiltValueField(wireName: 'hr_ini')
  double? get hrIni;

  @BuiltValueField(wireName: 'hr_fim')
  double? get hrFim;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  static void _initializeBuilder(AtendimentoRecordBuilder builder) => builder
    ..diaAno = 0.0
    ..mesAno = ''
    ..diaMes = ''
    ..diaEMes = ''
    ..diaSem = ''
    ..agendados = 0.0
    ..cancelados = 0.0
    ..vagos = 0.0
    ..reagendados = 0.0
    ..atrIni = 0.0
    ..tmc = 0.0
    ..hrAtend = 0.0
    ..hrCanc = 0.0
    ..hrReag = 0.0
    ..hrVago = 0.0
    ..hrIni = 0.0
    ..hrFim = 0.0;

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('atendimento');

  static Stream<AtendimentoRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<AtendimentoRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  AtendimentoRecord._();
  factory AtendimentoRecord([void Function(AtendimentoRecordBuilder) updates]) =
      _$AtendimentoRecord;

  static AtendimentoRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createAtendimentoRecordData({
  DocumentReference? profissional,
  DocumentReference? servico,
  double? diaAno,
  String? mesAno,
  String? diaMes,
  String? diaEMes,
  String? diaSem,
  double? agendados,
  double? cancelados,
  double? vagos,
  double? reagendados,
  double? atrIni,
  double? tmc,
  double? hrAtend,
  double? hrCanc,
  double? hrReag,
  double? hrVago,
  double? hrIni,
  double? hrFim,
}) {
  final firestoreData = serializers.toFirestore(
    AtendimentoRecord.serializer,
    AtendimentoRecord(
      (a) => a
        ..profissional = profissional
        ..servico = servico
        ..diaAno = diaAno
        ..mesAno = mesAno
        ..diaMes = diaMes
        ..diaEMes = diaEMes
        ..diaSem = diaSem
        ..agendados = agendados
        ..cancelados = cancelados
        ..vagos = vagos
        ..reagendados = reagendados
        ..atrIni = atrIni
        ..tmc = tmc
        ..hrAtend = hrAtend
        ..hrCanc = hrCanc
        ..hrReag = hrReag
        ..hrVago = hrVago
        ..hrIni = hrIni
        ..hrFim = hrFim,
    ),
  );

  return firestoreData;
}
