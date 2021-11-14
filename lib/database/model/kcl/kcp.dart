import 'dart:convert';

// ignore_for_file: non_constant_identifier_names
class KclKcpModel {
  int ND;
  String KQBH;
  int DJFLBH;
  String KSBH;
  int KCPDM;
  String KCPMC;
  int KCDM;
  num XSJG;
  String JGDW;
  KclKcpModel({
    this.ND,
    this.KQBH,
    this.DJFLBH,
    this.KSBH,
    this.KCPDM,
    this.KCPMC,
    this.KCDM,
    this.XSJG,
    this.JGDW,
  });
  Map<String, dynamic> toMap() {
    return {
      'ND': ND,
      'KQBH': KQBH,
      'DJFLBH': DJFLBH,
      'KSBH': KSBH,
      'KCPDM': KCPDM,
      'KCPMC': KCPMC,
      'KCDM': KCDM,
      'XSJG': XSJG,
      'JGDW': JGDW,
    };
  }

  factory KclKcpModel.fromMap(Map<String, dynamic> map) {
    return KclKcpModel(
      ND: map['ND'],
      KQBH: map['KQBH'],
      DJFLBH: map['DJFLBH'],
      KSBH: map['KSBH'],
      KCPDM: map['KCPDM'],
      KCPMC: map['KCPMC'],
      KCDM: map['KCDM'],
      XSJG: map['XSJG'],
      JGDW: map['JGDW'],
    );
  }
  String toJson() => json.encode(toMap());
  factory KclKcpModel.fromJson(String source) =>
      KclKcpModel.fromMap(json.decode(source));
}
