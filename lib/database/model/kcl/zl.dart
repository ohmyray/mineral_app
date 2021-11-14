import 'dart:convert';

// ignore_for_file: non_constant_identifier_names
class KclZlModel {
  int ND;
  String KQBH;
  int DJFLBH;
  String KSBH;
  int KCDM;
  int TJDX;
  String KSLX;
  String KSPJ;
  String ZFM;
  num ZFZ;
  String ZFDW;
  String JZBS;
  KclZlModel({
    this.ND,
    this.KQBH,
    this.DJFLBH,
    this.KSBH,
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

  factory KclZlModel.fromMap(Map<String, dynamic> map) {
    return KclZlModel(
      ND: map['ND'],
      KQBH: map['KQBH'],
      DJFLBH: map['DJFLBH'],
      KSBH: map['KSBH'],
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
  factory KclZlModel.fromJson(String source) =>
      KclZlModel.fromMap(json.decode(source));
}
