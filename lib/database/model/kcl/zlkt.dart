import 'dart:convert';

// ignore_for_file: non_constant_identifier_names
class KclZlktModel {
  int ND;
  String KQBH;
  int DJFLBH;
  String KSBH;
  String KTBH;
  int KCDM;
  int TJDX;
  String KSLX;
  String KSPJ;
  String ZFM;
  num ZFZ;
  String ZFDW;
  String JZBS;
  KclZlktModel({
    this.ND,
    this.KQBH,
    this.DJFLBH,
    this.KSBH,
    this.KTBH,
    this.KCDM,
    this.TJDX,
    this.KSLX,
    this.KSPJ,
    this.ZFM,
    this.ZFZ,
    this.ZFDW,
    this.JZBS,
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
      'ZFM': ZFM,
      'ZFZ': ZFZ,
      'ZFDW': ZFDW,
      'JZBS': JZBS,
    };
  }

  factory KclZlktModel.fromMap(Map<String, dynamic> map) {
    return KclZlktModel(
      ND: map['ND'],
      KQBH: map['KQBH'],
      DJFLBH: map['DJFLBH'],
      KSBH: map['KSBH'],
      KTBH: map['KTBH'],
      KCDM: map['KCDM'],
      TJDX: map['TJDX'],
      KSLX: map['KSLX'],
      KSPJ: map['KSPJ'],
      ZFM: map['ZFM'],
      ZFZ: map['ZFZ'],
      ZFDW: map['ZFDW'],
      JZBS: map['JZBS'],
    );
  }
  String toJson() => json.encode(toMap());
  factory KclZlktModel.fromJson(String source) =>
      KclZlktModel.fromMap(json.decode(source));
}
