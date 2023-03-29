import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'paciente_record.g.dart';

abstract class PacienteRecord
    implements Built<PacienteRecord, PacienteRecordBuilder> {
  static Serializer<PacienteRecord> get serializer =>
      _$pacienteRecordSerializer;

  String? get cod;

  String? get prontuario;

  String? get convenio;

  String? get matricula;

  DateTime? get validade;

  String? get sexo;

  String? get telefone1;

  String? get telefone2;

  String? get telefone3;

  String? get telefone4;

  String? get cep;

  String? get logradouro;

  String? get complemento;

  String? get bairro;

  String? get localidade;

  String? get uf;

  @BuiltValueField(wireName: 'dono_user')
  DocumentReference? get donoUser;

  String? get numero;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  static void _initializeBuilder(PacienteRecordBuilder builder) => builder
    ..cod = ''
    ..prontuario = ''
    ..convenio = ''
    ..matricula = ''
    ..sexo = ''
    ..telefone1 = ''
    ..telefone2 = ''
    ..telefone3 = ''
    ..telefone4 = ''
    ..cep = ''
    ..logradouro = ''
    ..complemento = ''
    ..bairro = ''
    ..localidade = ''
    ..uf = ''
    ..numero = '';

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('paciente');

  static Stream<PacienteRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<PacienteRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  PacienteRecord._();
  factory PacienteRecord([void Function(PacienteRecordBuilder) updates]) =
      _$PacienteRecord;

  static PacienteRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createPacienteRecordData({
  String? cod,
  String? prontuario,
  String? convenio,
  String? matricula,
  DateTime? validade,
  String? sexo,
  String? telefone1,
  String? telefone2,
  String? telefone3,
  String? telefone4,
  String? cep,
  String? logradouro,
  String? complemento,
  String? bairro,
  String? localidade,
  String? uf,
  DocumentReference? donoUser,
  String? numero,
}) {
  final firestoreData = serializers.toFirestore(
    PacienteRecord.serializer,
    PacienteRecord(
      (p) => p
        ..cod = cod
        ..prontuario = prontuario
        ..convenio = convenio
        ..matricula = matricula
        ..validade = validade
        ..sexo = sexo
        ..telefone1 = telefone1
        ..telefone2 = telefone2
        ..telefone3 = telefone3
        ..telefone4 = telefone4
        ..cep = cep
        ..logradouro = logradouro
        ..complemento = complemento
        ..bairro = bairro
        ..localidade = localidade
        ..uf = uf
        ..donoUser = donoUser
        ..numero = numero,
    ),
  );

  return firestoreData;
}
