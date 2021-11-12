// ignore_for_file: non_constant_identifier_names
import 'dart:convert';

class TkqModel {
  int BSM;
  int YSDM;
  String XKZH;
  String KSMC;
  String CKQR;
  DateTime YXQZ;
  int KCDM;
  String CQKZB;
  int XZQDM;
  String KQBH;
  int DJFLBH;
  int ND;
  TkqModel({
    this.BSM,
    this.YSDM,
    this.XKZH,
    this.KSMC,
    this.CKQR,
    this.YXQZ,
    this.KCDM,
    this.CQKZB,
    this.XZQDM,
    this.KQBH,
    this.DJFLBH,
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
      'CQKZB': CQKZB,
      'XZQDM': XZQDM,
      'KQBH': KQBH,
      'DJFLBH': DJFLBH,
      'ND': ND,
    };
  }

  factory TkqModel.fromMap(Map<String, dynamic> map) {
    return TkqModel(
      BSM: map['BSM'],
      YSDM: map['YSDM'],
      XKZH: map['XKZH'],
      KSMC: map['KSMC'],
      CKQR: map['CKQR'],
      YXQZ: DateTime.parse(map['YXQZ']),
      KCDM: map['KCDM'],
      CQKZB: map['CQKZB'],
      XZQDM: map['XZQDM'],
      KQBH: map['KQBH'],
      DJFLBH: map['DJFLBH'],
      ND: map['ND'],
    );
  }

  String toJson() => json.encode(toMap());

  factory TkqModel.fromJson(String source) =>
      TkqModel.fromMap(json.decode(source));
}
