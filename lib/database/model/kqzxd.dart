// ignore_for_file: non_constant_identifier_names
import 'dart:convert';

class KqzxdModel {
  int BSM;
  int YSDM;
  int XZQDM;
  String XZQMC;
  String KQBH;
  int DJFLBH;
  String KQMC;
  double XZB;
  double YZB;
  String MS;
  int ND;

  KqzxdModel({
    this.BSM,
    this.YSDM,
    this.XZQDM,
    this.XZQMC,
    this.KQBH,
    this.DJFLBH,
    this.KQMC,
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
      'XZQMC': XZQMC,
      'KQBH': KQBH,
      'DJFLBH': DJFLBH,
      'KQMC': KQMC,
      'XZB': XZB,
      'YZB': YZB,
      'MS': MS,
      'ND': ND,
    };
  }

  factory KqzxdModel.fromMap(Map<String, dynamic> map) {
    return KqzxdModel(
      BSM: map['BSM'],
      YSDM: map['YSDM'],
      XZQDM: map['XZQDM'],
      XZQMC: map['XZQMC'],
      KQBH: map['KQBH'],
      DJFLBH: map['DJFLBH'],
      KQMC: map['KQMC'],
      XZB: map['XZB'],
      YZB: map['YZB'],
      MS: map['MS'],
      ND: map['ND'],
    );
  }

  String toJson() => json.encode(toMap());

  factory KqzxdModel.fromJson(String source) =>
      KqzxdModel.fromMap(json.decode(source));
}
