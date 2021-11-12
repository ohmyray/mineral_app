// ignore_for_file: non_constant_identifier_names
import 'dart:convert';

class BzdModel {
  int BSM;
  int YSDM;
  String XZQDM;
  String KQBH;
  String BZDMC;
  double XZB;
  double YZB;
  String MS;
  int ND;
  BzdModel({
    this.BSM,
    this.YSDM,
    this.XZQDM,
    this.KQBH,
    this.BZDMC,
    this.XZB,
    this.YZB,
    this.MS,
    this.ND,
  });

  Map<String, dynamic> toMap() {
    return {
      'BSM': BSM,
      'YSDM': YSDM,
      'XZQDM': XZQDM,
      'KQBH': KQBH,
      'BZDMC': BZDMC,
      'XZB': XZB,
      'YZB': YZB,
      'MS': MS,
      'ND': ND,
    };
  }

  factory BzdModel.fromMap(Map<String, dynamic> map) {
    return BzdModel(
      BSM: map['BSM'],
      YSDM: map['YSDM'],
      XZQDM: map['XZQDM'],
      KQBH: map['KQBH'],
      BZDMC: map['BZDMC'],
      XZB: map['XZB'],
      YZB: map['YZB'],
      MS: map['MS'],
      ND: map['ND'],
    );
  }

  String toJson() => json.encode(toMap());

  factory BzdModel.fromJson(String source) =>
      BzdModel.fromMap(json.decode(source));
}
