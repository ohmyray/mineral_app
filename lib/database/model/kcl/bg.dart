import 'dart:convert';

// ignore_for_file: non_constant_identifier_names
class KclBgModel {
  int ND;
  String KQBH;
  int DJFLBH;
  String KSBH;
  int BGSXH;
  num KCTZ;
  String BGMC;
  String YWWCRQ;
  String BGTJRQ;
  String TJPSYY;
  String KCDW;
  int KCJDW;
  String KCJD;
  int KLYQKM;
  String KLYQK;
  String WYYYM1;
  String WYYY1;
  String WYYYM2;
  String WYYY2;
  String WYYYM3;
  String WYYY3;
  String PSJG;
  String PSRQ;
  String PSWH;
  String PSJL;
  String PSG;
  String BAJG;
  String BARQ;
  String BAWH;
  KclBgModel({
    this.ND,
    this.KQBH,
    this.DJFLBH,
    this.KSBH,
    this.BGSXH,
    this.KCTZ,
    this.BGMC,
    this.YWWCRQ,
    this.BGTJRQ,
    this.TJPSYY,
    this.KCDW,
    this.KCJDW,
    this.KCJD,
    this.KLYQKM,
    this.KLYQK,
    this.WYYYM1,
    this.WYYY1,
    this.WYYYM2,
    this.WYYY2,
    this.WYYYM3,
    this.WYYY3,
    this.PSJG,
    this.PSRQ,
    this.PSWH,
    this.PSJL,
    this.PSG,
    this.BAJG,
    this.BARQ,
    this.BAWH,
  });
  Map<String, dynamic> toMap() {
    return {
      'ND': ND,
      'KQBH': KQBH,
      'DJFLBH': DJFLBH,
      'KSBH': KSBH,
      'BGSXH': BGSXH,
      'KCTZ': KCTZ,
      'BGMC': BGMC,
      'YWWCRQ': YWWCRQ,
      'BGTJRQ': BGTJRQ,
      'TJPSYY': TJPSYY,
      'KCDW': KCDW,
      'KCJDW': KCJDW,
      'KCJD': KCJD,
      'KLYQKM': KLYQKM,
      'KLYQK': KLYQK,
      'WYYYM1': WYYYM1,
      'WYYY1': WYYY1,
      'WYYYM2': WYYYM2,
      'WYYY2': WYYY2,
      'WYYYM3': WYYYM3,
      'WYYY3': WYYY3,
      'PSJG': PSJG,
      'PSRQ': PSRQ,
      'PSWH': PSWH,
      'PSJL': PSJL,
      'PSG': PSG,
      'BAJG': BAJG,
      'BARQ': BARQ,
      'BAWH': BAWH,
    };
  }

  factory KclBgModel.fromMap(Map<String, dynamic> map) {
    return KclBgModel(
      ND: map['ND'],
      KQBH: map['KQBH'],
      DJFLBH: map['DJFLBH'],
      KSBH: map['KSBH'],
      BGSXH: map['BGSXH'],
      KCTZ: map['KCTZ'],
      BGMC: map['BGMC'],
      YWWCRQ: map['YWWCRQ'],
      BGTJRQ: map['BGTJRQ'],
      TJPSYY: map['TJPSYY'],
      KCDW: map['KCDW'],
      KCJDW: map['KCJDW'],
      KCJD: map['KCJD'],
      KLYQKM: map['KLYQKM'],
      KLYQK: map['KLYQK'],
      WYYYM1: map['WYYYM1'],
      WYYY1: map['WYYY1'],
      WYYYM2: map['WYYYM2'],
      WYYY2: map['WYYY2'],
      WYYYM3: map['WYYYM3'],
      WYYY3: map['WYYY3'],
      PSJG: map['PSJG'],
      PSRQ: map['PSRQ'],
      PSWH: map['PSWH'],
      PSJL: map['PSJL'],
      PSG: map['PSG'],
      BAJG: map['BAJG'],
      BARQ: map['BARQ'],
      BAWH: map['BAWH'],
    );
  }
  String toJson() => json.encode(toMap());
  factory KclBgModel.fromJson(String source) =>
      KclBgModel.fromMap(json.decode(source));
}
