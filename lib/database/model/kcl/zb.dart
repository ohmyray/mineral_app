import 'dart:convert';

// ignore_for_file: non_constant_identifier_names
class KclZbModel {
  int ND;
  String KQBH;
  int DJFLBH;
  String KSBH;
  num KQMJ;
  int KQZDBG;
  int KQZGBG;
  num JSMJ;
  int JSZDBG;
  int JSZGBG;
  String KQZB;
  String JSZB;
  String BZ;
  KclZbModel({
    this.ND,
    this.KQBH,
    this.DJFLBH,
    this.KSBH,
    this.KQMJ,
    this.KQZDBG,
    this.KQZGBG,
    this.JSMJ,
    this.JSZDBG,
    this.JSZGBG,
    this.KQZB,
    this.JSZB,
    this.BZ,
  });
  Map<String, dynamic> toMap() {
    return {
      'ND': ND,
      'KQBH': KQBH,
      'DJFLBH': DJFLBH,
      'KSBH': KSBH,
      'KQMJ': KQMJ,
      'KQZDBG': KQZDBG,
      'KQZGBG': KQZGBG,
      'JSMJ': JSMJ,
      'JSZDBG': JSZDBG,
      'JSZGBG': JSZGBG,
      'KQZB': KQZB,
      'JSZB': JSZB,
      'BZ': BZ,
    };
  }

  factory KclZbModel.fromMap(Map<String, dynamic> map) {
    return KclZbModel(
      ND: map['ND'],
      KQBH: map['KQBH'],
      DJFLBH: map['DJFLBH'],
      KSBH: map['KSBH'],
      KQMJ: map['KQMJ'],
      KQZDBG: map['KQZDBG'],
      KQZGBG: map['KQZGBG'],
      JSMJ: map['JSMJ'],
      JSZDBG: map['JSZDBG'],
      JSZGBG: map['JSZGBG'],
      KQZB: map['KQZB'],
      JSZB: map['JSZB'],
      BZ: map['BZ'],
    );
  }
  String toJson() => json.encode(toMap());
  factory KclZbModel.fromJson(String source) =>
      KclZbModel.fromMap(json.decode(source));
}
