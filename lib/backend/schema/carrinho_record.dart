import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class CarrinhoRecord extends FirestoreRecord {
  CarrinhoRecord._(
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

  // "preco" field.
  double? _preco;
  double get preco => _preco ?? 0.0;
  bool hasPreco() => _preco != null;

  // "qnt" field.
  int? _qnt;
  int get qnt => _qnt ?? 0;
  bool hasQnt() => _qnt != null;

  // "local" field.
  String? _local;
  String get local => _local ?? '';
  bool hasLocal() => _local != null;

  // "user" field.
  DocumentReference? _user;
  DocumentReference? get user => _user;
  bool hasUser() => _user != null;

  void _initializeFields() {
    _nome = snapshotData['nome'] as String?;
    _img = snapshotData['img'] as String?;
    _preco = castToType<double>(snapshotData['preco']);
    _qnt = castToType<int>(snapshotData['qnt']);
    _local = snapshotData['local'] as String?;
    _user = snapshotData['user'] as DocumentReference?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('carrinho');

  static Stream<CarrinhoRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => CarrinhoRecord.fromSnapshot(s));

  static Future<CarrinhoRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => CarrinhoRecord.fromSnapshot(s));

  static CarrinhoRecord fromSnapshot(DocumentSnapshot snapshot) =>
      CarrinhoRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static CarrinhoRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      CarrinhoRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'CarrinhoRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is CarrinhoRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createCarrinhoRecordData({
  String? nome,
  String? img,
  double? preco,
  int? qnt,
  String? local,
  DocumentReference? user,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'nome': nome,
      'img': img,
      'preco': preco,
      'qnt': qnt,
      'local': local,
      'user': user,
    }.withoutNulls,
  );

  return firestoreData;
}

class CarrinhoRecordDocumentEquality implements Equality<CarrinhoRecord> {
  const CarrinhoRecordDocumentEquality();

  @override
  bool equals(CarrinhoRecord? e1, CarrinhoRecord? e2) {
    return e1?.nome == e2?.nome &&
        e1?.img == e2?.img &&
        e1?.preco == e2?.preco &&
        e1?.qnt == e2?.qnt &&
        e1?.local == e2?.local &&
        e1?.user == e2?.user;
  }

  @override
  int hash(CarrinhoRecord? e) => const ListEquality()
      .hash([e?.nome, e?.img, e?.preco, e?.qnt, e?.local, e?.user]);

  @override
  bool isValidKey(Object? o) => o is CarrinhoRecord;
}
