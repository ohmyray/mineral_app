import 'dart:convert';

// ignore_for_file: non_constant_identifier_names
class KclZyclModel {
  int ND;
  String KQBH;
  int DJFLBH;
  String KSBH;
  String KTBH;
  int KCDM;
  int TJDX;
  int KSLX;
  int KSPJ;
  int ZYCLLB;
  String ZYCLLX;
  num JSL;
  num KSL;
  int KCZHM;
  String KCZH;
  KclZyclModel({
    this.ND,
    this.KQBH,
    this.DJFLBH,
    this.KSBH,
    this.KTBH,
    this.KCDM,
    this.TJDX,
    this.KSLX,
    this.KSPJ,
    this.ZYCLLB,
    this.ZYCLLX,
    this.JSL,
    this.KSL,
    this.KCZHM,
    this.KCZH,
  });
  Map<String, dynamic> toMap() {
    return {
      'ND': ND,
      'KQBH': KQBH,
      'DJFLBH': DJFLBH,
      'KSBH': KSBH,
      'KTBH': KTBH,
      'KCDM': KCDM,
      'TJDX': TJDX,
      'KSLX': KSLX,
      'KSPJ': KSPJ,
      'ZYCLLB': ZYCLLB,
      'ZYCLLX': ZYCLLX,
      'JSL': JSL,
      'KSL': KSL,
      'KCZHM': KCZHM,
      'KCZH': KCZH,
    };
  }

  factory KclZyclModel.fromMap(Map<String, dynamic> map) {
    return KclZyclModel(
      ND: map['ND'],
      KQBH: map['KQBH'],
      DJFLBH: map['DJFLBH'],
      KSBH: map['KSBH'],
      KTBH: map['KTBH'],
      KCDM: map['KCDM'],
      TJDX: map['TJDX'],
      KSLX: map['KSLX'],
      KSPJ: map['KSPJ'],
      ZYCLLB: map['ZYCLLB'],
      ZYCLLX: map['ZYCLLX'],
      JSL: map['JSL'],
      KSL: map['KSL'],
      KCZHM: map['KCZHM'],
      KCZH: map['KCZH'],
    );
  }
  String toJson() => json.encode(toMap());
  factory KclZyclModel.fromJson(String source) =>
      KclZyclModel.fromMap(json.decode(source));
}
