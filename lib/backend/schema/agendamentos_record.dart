import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'agendamentos_record.g.dart';

abstract class AgendamentosRecord
    implements Built<AgendamentosRecord, AgendamentosRecordBuilder> {
  static Serializer<AgendamentosRecord> get serializer =>
      _$agendamentosRecordSerializer;

  DocumentReference? get cliente;

  DocumentReference? get profissional;

  DocumentReference? get servico;

  DateTime? get horario;

  @BuiltValueField(wireName: 'dia_ano')
  String? get diaAno;

  @BuiltValueField(wireName: 'dia_mes')
  String? get diaMes;

  @BuiltValueField(wireName: 'mes_ano')
  String? get mesAno;

  @BuiltValueField(wireName: 'dia_e_mes')
  String? get diaEMes;

  @BuiltValueField(wireName: 'dia_sem')
  String? get diaSem;

  @BuiltValueField(wireName: 'hr_age')
  double? get hrAge;

  @BuiltValueField(wireName: 'tmp_cons')
  double? get tmpCons;

  @BuiltValueField(wireName: 'ini_est')
  double? get iniEst;

  @BuiltValueField(wireName: 'fim_est')
  double? get fimEst;

  @BuiltValueField(wireName: 'ini_con')
  double? get iniCon;

  @BuiltValueField(wireName: 'ter_con')
  double? get terCon;

  String? get sit;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  static void _initializeBuilder(AgendamentosRecordBuilder builder) => builder
    ..diaAno = ''
    ..diaMes = ''
    ..mesAno = ''
    ..diaEMes = ''
    ..diaSem = ''
    ..hrAge = 0.0
    ..tmpCons = 0.0
    ..iniEst = 0.0
    ..fimEst = 0.0
    ..iniCon = 0.0
    ..terCon = 0.0
    ..sit = '';

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('agendamentos');

  static Stream<AgendamentosRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<AgendamentosRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then(
          (s) => serializers.deserializeWith(serializer, serializedData(s))!);

  AgendamentosRecord._();
  factory AgendamentosRecord(
          [void Function(AgendamentosRecordBuilder) updates]) =
      _$AgendamentosRecord;

  static AgendamentosRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createAgendamentosRecordData({
  DocumentReference? cliente,
  DocumentReference? profissional,
  DocumentReference? servico,
  DateTime? horario,
  String? diaAno,
  String? diaMes,
  String? mesAno,
  String? diaEMes,
  String? diaSem,
  double? hrAge,
  double? tmpCons,
  double? iniEst,
  double? fimEst,
  double? iniCon,
  double? terCon,
  String? sit,
}) {
  final firestoreData = serializers.toFirestore(
    AgendamentosRecord.serializer,
    AgendamentosRecord(
      (a) => a
        ..cliente = cliente
        ..profissional = profissional
        ..servico = servico
        ..horario = horario
        ..diaAno = diaAno
        ..diaMes = diaMes
        ..mesAno = mesAno
        ..diaEMes = diaEMes
        ..diaSem = diaSem
        ..hrAge = hrAge
        ..tmpCons = tmpCons
        ..iniEst = iniEst
        ..fimEst = fimEst
        ..iniCon = iniCon
        ..terCon = terCon
        ..sit = sit,
    ),
  );

  return firestoreData;
}
