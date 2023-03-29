import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'medico_record.g.dart';

abstract class MedicoRecord
    implements Built<MedicoRecord, MedicoRecordBuilder> {
  static Serializer<MedicoRecord> get serializer => _$medicoRecordSerializer;

  String? get crm;

  bool? get sit;

  DocumentReference? get servico;

  String? get escala;

  @BuiltValueField(wireName: 'dono_user')
  DocumentReference? get donoUser;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  static void _initializeBuilder(MedicoRecordBuilder builder) => builder
    ..crm = ''
    ..sit = false
    ..escala = '';

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('medico');

  static Stream<MedicoRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<MedicoRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  MedicoRecord._();
  factory MedicoRecord([void Function(MedicoRecordBuilder) updates]) =
      _$MedicoRecord;

  static MedicoRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createMedicoRecordData({
  String? crm,
  bool? sit,
  DocumentReference? servico,
  String? escala,
  DocumentReference? donoUser,
}) {
  final firestoreData = serializers.toFirestore(
    MedicoRecord.serializer,
    MedicoRecord(
      (m) => m
        ..crm = crm
        ..sit = sit
        ..servico = servico
        ..escala = escala
        ..donoUser = donoUser,
    ),
  );

  return firestoreData;
}
