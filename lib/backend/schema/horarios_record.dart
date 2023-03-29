import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'horarios_record.g.dart';

abstract class HorariosRecord
    implements Built<HorariosRecord, HorariosRecordBuilder> {
  static Serializer<HorariosRecord> get serializer =>
      _$horariosRecordSerializer;

  String? get hora;

  String? get dia;

  DocumentReference? get profissional;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  static void _initializeBuilder(HorariosRecordBuilder builder) => builder
    ..hora = ''
    ..dia = '';

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('horarios');

  static Stream<HorariosRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<HorariosRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  HorariosRecord._();
  factory HorariosRecord([void Function(HorariosRecordBuilder) updates]) =
      _$HorariosRecord;

  static HorariosRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createHorariosRecordData({
  String? hora,
  String? dia,
  DocumentReference? profissional,
}) {
  final firestoreData = serializers.toFirestore(
    HorariosRecord.serializer,
    HorariosRecord(
      (h) => h
        ..hora = hora
        ..dia = dia
        ..profissional = profissional,
    ),
  );

  return firestoreData;
}
