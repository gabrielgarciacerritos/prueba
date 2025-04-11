import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class UsuariosRecord extends FirestoreRecord {
  UsuariosRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "nombre" field.
  String? _nombre;
  String get nombre => _nombre ?? '';
  bool hasNombre() => _nombre != null;

  // "apellidos" field.
  String? _apellidos;
  String get apellidos => _apellidos ?? '';
  bool hasApellidos() => _apellidos != null;

  // "edad" field.
  String? _edad;
  String get edad => _edad ?? '';
  bool hasEdad() => _edad != null;

  // "usuario" field.
  String? _usuario;
  String get usuario => _usuario ?? '';
  bool hasUsuario() => _usuario != null;

  // "contrasena" field.
  String? _contrasena;
  String get contrasena => _contrasena ?? '';
  bool hasContrasena() => _contrasena != null;

  // "tienda" field.
  String? _tienda;
  String get tienda => _tienda ?? '';
  bool hasTienda() => _tienda != null;

  // "rol" field.
  String? _rol;
  String get rol => _rol ?? '';
  bool hasRol() => _rol != null;

  void _initializeFields() {
    _nombre = snapshotData['nombre'] as String?;
    _apellidos = snapshotData['apellidos'] as String?;
    _edad = snapshotData['edad'] as String?;
    _usuario = snapshotData['usuario'] as String?;
    _contrasena = snapshotData['contrasena'] as String?;
    _tienda = snapshotData['tienda'] as String?;
    _rol = snapshotData['rol'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('usuarios');

  static Stream<UsuariosRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => UsuariosRecord.fromSnapshot(s));

  static Future<UsuariosRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => UsuariosRecord.fromSnapshot(s));

  static UsuariosRecord fromSnapshot(DocumentSnapshot snapshot) =>
      UsuariosRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static UsuariosRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      UsuariosRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'UsuariosRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is UsuariosRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createUsuariosRecordData({
  String? nombre,
  String? apellidos,
  String? edad,
  String? usuario,
  String? contrasena,
  String? tienda,
  String? rol,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'nombre': nombre,
      'apellidos': apellidos,
      'edad': edad,
      'usuario': usuario,
      'contrasena': contrasena,
      'tienda': tienda,
      'rol': rol,
    }.withoutNulls,
  );

  return firestoreData;
}

class UsuariosRecordDocumentEquality implements Equality<UsuariosRecord> {
  const UsuariosRecordDocumentEquality();

  @override
  bool equals(UsuariosRecord? e1, UsuariosRecord? e2) {
    return e1?.nombre == e2?.nombre &&
        e1?.apellidos == e2?.apellidos &&
        e1?.edad == e2?.edad &&
        e1?.usuario == e2?.usuario &&
        e1?.contrasena == e2?.contrasena &&
        e1?.tienda == e2?.tienda &&
        e1?.rol == e2?.rol;
  }

  @override
  int hash(UsuariosRecord? e) => const ListEquality().hash([
        e?.nombre,
        e?.apellidos,
        e?.edad,
        e?.usuario,
        e?.contrasena,
        e?.tienda,
        e?.rol
      ]);

  @override
  bool isValidKey(Object? o) => o is UsuariosRecord;
}
