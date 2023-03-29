import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'servicos_record.g.dart';

abstract class ServicosRecord
    implements Built<ServicosRecord, ServicosRecordBuilder> {
  static Serializer<ServicosRecord> get serializer =>
      _$servicosRecordSerializer;

  String? get nome;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  static void _initializeBuilder(ServicosRecordBuilder builder) =>
      builder..nome = '';

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('servicos');

  static Stream<ServicosRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<ServicosRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  ServicosRecord._();
  factory ServicosRecord([void Function(ServicosRecordBuilder) updates]) =
      _$ServicosRecord;

  static ServicosRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createServicosRecordData({
  String? nome,
}) {
  final firestoreData = serializers.toFirestore(
    ServicosRecord.serializer,
    ServicosRecord(
      (s) => s..nome = nome,
    ),
  );

  return firestoreData;
}
