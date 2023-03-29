import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'plano_record.g.dart';

abstract class PlanoRecord implements Built<PlanoRecord, PlanoRecordBuilder> {
  static Serializer<PlanoRecord> get serializer => _$planoRecordSerializer;

  String? get nome;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  static void _initializeBuilder(PlanoRecordBuilder builder) =>
      builder..nome = '';

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('plano');

  static Stream<PlanoRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<PlanoRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  PlanoRecord._();
  factory PlanoRecord([void Function(PlanoRecordBuilder) updates]) =
      _$PlanoRecord;

  static PlanoRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createPlanoRecordData({
  String? nome,
}) {
  final firestoreData = serializers.toFirestore(
    PlanoRecord.serializer,
    PlanoRecord(
      (p) => p..nome = nome,
    ),
  );

  return firestoreData;
}
