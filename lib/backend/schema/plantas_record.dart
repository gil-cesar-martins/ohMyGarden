import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class PlantasRecord extends FirestoreRecord {
  PlantasRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "nome" field.
  String? _nome;
  String get nome => _nome ?? '';
  bool hasNome() => _nome != null;

  // "img" field.
  String? _img;
  String get img => _img ?? '';
  bool hasImg() => _img != null;

  // "local" field.
  String? _local;
  String get local => _local ?? '';
  bool hasLocal() => _local != null;

  // "preco" field.
  double? _preco;
  double get preco => _preco ?? 0.0;
  bool hasPreco() => _preco != null;

  // "qnt" field.
  int? _qnt;
  int get qnt => _qnt ?? 0;
  bool hasQnt() => _qnt != null;

  // "desc" field.
  String? _desc;
  String get desc => _desc ?? '';
  bool hasDesc() => _desc != null;

  void _initializeFields() {
    _nome = snapshotData['nome'] as String?;
    _img = snapshotData['img'] as String?;
    _local = snapshotData['local'] as String?;
    _preco = castToType<double>(snapshotData['preco']);
    _qnt = castToType<int>(snapshotData['qnt']);
    _desc = snapshotData['desc'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('plantas');

  static Stream<PlantasRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => PlantasRecord.fromSnapshot(s));

  static Future<PlantasRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => PlantasRecord.fromSnapshot(s));

  static PlantasRecord fromSnapshot(DocumentSnapshot snapshot) =>
      PlantasRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static PlantasRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      PlantasRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'PlantasRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is PlantasRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createPlantasRecordData({
  String? nome,
  String? img,
  String? local,
  double? preco,
  int? qnt,
  String? desc,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'nome': nome,
      'img': img,
      'local': local,
      'preco': preco,
      'qnt': qnt,
      'desc': desc,
    }.withoutNulls,
  );

  return firestoreData;
}

class PlantasRecordDocumentEquality implements Equality<PlantasRecord> {
  const PlantasRecordDocumentEquality();

  @override
  bool equals(PlantasRecord? e1, PlantasRecord? e2) {
    return e1?.nome == e2?.nome &&
        e1?.img == e2?.img &&
        e1?.local == e2?.local &&
        e1?.preco == e2?.preco &&
        e1?.qnt == e2?.qnt &&
        e1?.desc == e2?.desc;
  }

  @override
  int hash(PlantasRecord? e) => const ListEquality()
      .hash([e?.nome, e?.img, e?.local, e?.preco, e?.qnt, e?.desc]);

  @override
  bool isValidKey(Object? o) => o is PlantasRecord;
}
