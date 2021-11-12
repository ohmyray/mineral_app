// ignore_for_file: non_constant_identifier_names
import 'dart:convert';

class CkqModel {
  int BSM;
  int YSDM;
  String XKZH;
  String KSMC;
  String CKQR;
  DateTime YXQZ;
  int KCDM;
  String KQBH;
  int DJFLBH;
  String CQKZB;
  int XZQDM;
  int ND;

  CkqModel({
    this.BSM,
    this.YSDM,
    this.XKZH,
    this.KSMC,
    this.CKQR,
    this.YXQZ,
    this.KCDM,
    this.KQBH,
    this.DJFLBH,
    this.CQKZB,
    this.XZQDM,
    this.ND,
  });

  Map<String, dynamic> toMap() {
    return {
      'BSM': BSM,
      'YSDM': YSDM,
      'XKZH': XKZH,
      'KSMC': KSMC,
      'CKQR': CKQR,
      'YXQZ': YXQZ.millisecondsSinceEpoch,
      'KCDM': KCDM,
      'KQBH': KQBH,
      'DJFLBH': DJFLBH,
      'CQKZB': CQKZB,
      'XZQDM': XZQDM,
      'ND': ND,
    };
  }

  factory CkqModel.fromMap(Map<String, dynamic> map) {
    return CkqModel(
      BSM: map['BSM'],
      YSDM: map['YSDM'],
      XKZH: map['XKZH'],
      KSMC: map['KSMC'],
      CKQR: map['CKQR'],
      YXQZ: DateTime.parse(map['YXQZ']),
      KCDM: map['KCDM'],
      KQBH: map['KQBH'],
      DJFLBH: map['DJFLBH'],
      CQKZB: map['CQKZB'],
      XZQDM: map['XZQDM'],
      ND: map['ND'],
    );
  }

  String toJson() => json.encode(toMap());

  factory CkqModel.fromJson(String source) =>
      CkqModel.fromMap(json.decode(source));
}
