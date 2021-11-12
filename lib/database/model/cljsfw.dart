// ignore_for_file: non_constant_identifier_names
import 'dart:convert';

class CljsfwModel {
  int BSM;
  int YSDM;
  int XZQDM;
  String KQBH;
  int DJFLBH;
  String KQMC;
  num QBG;
  num ZBG;
  String JSZB;
  String MS;
  int ND;

  CljsfwModel({
    this.BSM,
    this.YSDM,
    this.XZQDM,
    this.KQBH,
    this.DJFLBH,
    this.KQMC,
    this.QBG,
    this.ZBG,
    this.JSZB,
    this.MS,
    this.ND,
  });

  Map<String, dynamic> toMap() {
    return {
      'BSM': BSM,
      'YSDM': YSDM,
      'XZQDM': XZQDM,
      'KQBH': KQBH,
      'DJFLBH': DJFLBH,
      'KQMC': KQMC,
      'QBG': QBG,
      'ZBG': ZBG,
      'JSZB': JSZB,
      'MS': MS,
      'ND': ND,
    };
  }

  factory CljsfwModel.fromMap(Map<String, dynamic> map) {
    return CljsfwModel(
      BSM: map['BSM'],
      YSDM: map['YSDM'],
      XZQDM: map['XZQDM'],
      KQBH: map['KQBH'],
      DJFLBH: map['DJFLBH'],
      KQMC: map['KQMC'],
      QBG: map['QBG'],
      ZBG: map['ZBG'],
      JSZB: map['JSZB'],
      MS: map['MS'],
      ND: map['ND'],
    );
  }

  String toJson() => json.encode(toMap());

  factory CljsfwModel.fromJson(String source) =>
      CljsfwModel.fromMap(json.decode(source));
}
