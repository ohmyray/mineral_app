import 'dart:convert';

// ignore_for_file: non_constant_identifier_names
class KclZyclktModel {
  int ND;
  String KQBH;
  int DJFLBH;
  String KSBH;
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
  String KTBH;
  String ZDMS;
  String ZXMS;
  KclZyclktModel({
    this.ND,
    this.KQBH,
    this.DJFLBH,
    this.KSBH,
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
    this.KTBH,
    this.ZDMS,
    this.ZXMS,
  });
  Map<String, dynamic> toMap() {
    return {
      'ND': ND,
      'KQBH': KQBH,
      'DJFLBH': DJFLBH,
      'KSBH': KSBH,
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
      'KTBH': KTBH,
      'ZDMS': ZDMS,
      'ZXMS': ZXMS,
    };
  }

  factory KclZyclktModel.fromMap(Map<String, dynamic> map) {
    return KclZyclktModel(
      ND: map['ND'],
      KQBH: map['KQBH'],
      DJFLBH: map['DJFLBH'],
      KSBH: map['KSBH'],
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
      KTBH: map['KTBH'],
      ZDMS: map['ZDMS'],
      ZXMS: map['ZXMS'],
    );
  }
  String toJson() => json.encode(toMap());
  factory KclZyclktModel.fromJson(String source) =>
      KclZyclktModel.fromMap(json.decode(source));
}
