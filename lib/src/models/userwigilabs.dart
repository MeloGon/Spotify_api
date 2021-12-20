// To parse this JSON data, do
//
//     final userWigilabs = userWigilabsFromJson(jsonString);

import 'dart:convert';

class UserWigilabs {
  UserWigilabs({
    this.error,
    this.response,
  });

  int? error;
  Response? response;

  factory UserWigilabs.fromRawJson(String str) =>
      UserWigilabs.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory UserWigilabs.fromJson(Map<String, dynamic> json) => UserWigilabs(
        error: json["error"] == null ? null : json["error"],
        response: json["response"] == null
            ? null
            : Response.fromJson(json["response"]),
      );

  Map<String, dynamic> toJson() => {
        "error": error == null ? null : error,
        "response": response == null ? null : response!.toJson(),
      };
}

class Response {
  Response({
    this.usuario,
  });

  Usuario? usuario;

  factory Response.fromRawJson(String str) =>
      Response.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory Response.fromJson(Map<String, dynamic> json) => Response(
        usuario:
            json["usuario"] == null ? null : Usuario.fromJson(json["usuario"]),
      );

  Map<String, dynamic> toJson() => {
        "usuario": usuario == null ? null : usuario!.toJson(),
      };
}

class Usuario {
  Usuario({
    this.nombre,
    this.apellido,
    this.userProfileId,
    this.documentNumber,
    this.documentType,
    this.claveTemporal,
    this.esUsuarioInspira,
    this.esSolicitarRegistro,
    this.esCambioNombreUsuario,
    this.roleId,
    this.tipoClienteId,
    this.tipoUsuarioId,
    this.tokenSso,
    this.uid,
  });

  String? nombre;
  String? apellido;
  String? userProfileId;
  String? documentNumber;
  String? documentType;
  int? claveTemporal;
  int? esUsuarioInspira;
  int? esSolicitarRegistro;
  int? esCambioNombreUsuario;
  String? roleId;
  String? tipoClienteId;
  String? tipoUsuarioId;
  String? tokenSso;
  String? uid;

  factory Usuario.fromRawJson(String str) => Usuario.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory Usuario.fromJson(Map<String, dynamic> json) => Usuario(
        nombre: json["nombre"] == null ? null : json["nombre"],
        apellido: json["apellido"] == null ? null : json["apellido"],
        userProfileId:
            json["UserProfileID"] == null ? null : json["UserProfileID"],
        documentNumber:
            json["DocumentNumber"] == null ? null : json["DocumentNumber"],
        documentType:
            json["DocumentType"] == null ? null : json["DocumentType"],
        claveTemporal:
            json["claveTemporal"] == null ? null : json["claveTemporal"],
        esUsuarioInspira:
            json["esUsuarioInspira"] == null ? null : json["esUsuarioInspira"],
        esSolicitarRegistro: json["esSolicitarRegistro"] == null
            ? null
            : json["esSolicitarRegistro"],
        esCambioNombreUsuario: json["esCambioNombreUsuario"] == null
            ? null
            : json["esCambioNombreUsuario"],
        roleId: json["roleID"] == null ? null : json["roleID"],
        tipoClienteId:
            json["tipoClienteID"] == null ? null : json["tipoClienteID"],
        tipoUsuarioId:
            json["tipoUsuarioID"] == null ? null : json["tipoUsuarioID"],
        tokenSso: json["tokenSSO"] == null ? null : json["tokenSSO"],
        uid: json["UID"] == null ? null : json["UID"],
      );

  Map<String, dynamic> toJson() => {
        "nombre": nombre == null ? null : nombre,
        "apellido": apellido == null ? null : apellido,
        "UserProfileID": userProfileId == null ? null : userProfileId,
        "DocumentNumber": documentNumber == null ? null : documentNumber,
        "DocumentType": documentType == null ? null : documentType,
        "claveTemporal": claveTemporal == null ? null : claveTemporal,
        "esUsuarioInspira": esUsuarioInspira == null ? null : esUsuarioInspira,
        "esSolicitarRegistro":
            esSolicitarRegistro == null ? null : esSolicitarRegistro,
        "esCambioNombreUsuario":
            esCambioNombreUsuario == null ? null : esCambioNombreUsuario,
        "roleID": roleId == null ? null : roleId,
        "tipoClienteID": tipoClienteId == null ? null : tipoClienteId,
        "tipoUsuarioID": tipoUsuarioId == null ? null : tipoUsuarioId,
        "tokenSSO": tokenSso == null ? null : tokenSso,
        "UID": uid == null ? null : uid,
      };
}
