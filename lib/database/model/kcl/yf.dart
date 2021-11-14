import 'dart:convert';

// ignore_for_file: non_constant_identifier_names
class KclYfModel {
  int ND;
  String KQBH;
  int DJFLBH;
  String KSBH;
  String JSDW;
  String JSXMMC;
  String JSXMLB;
  String PZDW;
  String PZWH;
  String PZRQ;
  String YFXZ;
  String KYQRYJ;
  String ZGBMMC;
  String DKWH;
  String WHRQ;
  String ZGBMYJ;
  String BYFZYCLLYXZ;
  String YFLX;
  String BGMC;
  String BXDW;
  String BGTJRQ;
  String PSJG;
  String PSRQ;
  String PSWH;
  String PSJL;
  String PGS;
  String BAJG;
  String BARQ;
  String BAWH;
  String TXDZ;
  int YFSXH;
  KclYfModel({
    this.ND,
    this.KQBH,
    this.DJFLBH,
    this.KSBH,
    this.JSDW,
    this.JSXMMC,
    this.JSXMLB,
    this.PZDW,
    this.PZWH,
    this.PZRQ,
    this.YFXZ,
    this.KYQRYJ,
    this.ZGBMMC,
    this.DKWH,
    this.WHRQ,
    this.ZGBMYJ,
    this.BYFZYCLLYXZ,
    this.YFLX,
    this.BGMC,
    this.BXDW,
    this.BGTJRQ,
    this.PSJG,
    this.PSRQ,
    this.PSWH,
    this.PSJL,
    this.PGS,
    this.BAJG,
    this.BARQ,
    this.BAWH,
    this.TXDZ,
    this.YFSXH,
  });
  Map<String, dynamic> toMap() {
    return {
      'ND': ND,
      'KQBH': KQBH,
      'DJFLBH': DJFLBH,
      'KSBH': KSBH,
      'JSDW': JSDW,
      'JSXMMC': JSXMMC,
      'JSXMLB': JSXMLB,
      'PZDW': PZDW,
      'PZWH': PZWH,
      'PZRQ': PZRQ,
      'YFXZ': YFXZ,
      'KYQRYJ': KYQRYJ,
      'ZGBMMC': ZGBMMC,
      'DKWH': DKWH,
      'WHRQ': WHRQ,
      'ZGBMYJ': ZGBMYJ,
      'BYFZYCLLYXZ': BYFZYCLLYXZ,
      'YFLX': YFLX,
      'BGMC': BGMC,
      'BXDW': BXDW,
      'BGTJRQ': BGTJRQ,
      'PSJG': PSJG,
      'PSRQ': PSRQ,
      'PSWH': PSWH,
      'PSJL': PSJL,
      'PGS': PGS,
      'BAJG': BAJG,
      'BARQ': BARQ,
      'BAWH': BAWH,
      'TXDZ': TXDZ,
      'YFSXH': YFSXH,
    };
  }

  factory KclYfModel.fromMap(Map<String, dynamic> map) {
    return KclYfModel(
      ND: map['ND'],
      KQBH: map['KQBH'],
      DJFLBH: map['DJFLBH'],
      KSBH: map['KSBH'],
      JSDW: map['JSDW'],
      JSXMMC: map['JSXMMC'],
      JSXMLB: map['JSXMLB'],
      PZDW: map['PZDW'],
      PZWH: map['PZWH'],
      PZRQ: map['PZRQ'],
      YFXZ: map['YFXZ'],
      KYQRYJ: map['KYQRYJ'],
      ZGBMMC: map['ZGBMMC'],
      DKWH: map['DKWH'],
      WHRQ: map['WHRQ'],
      ZGBMYJ: map['ZGBMYJ'],
      BYFZYCLLYXZ: map['BYFZYCLLYXZ'],
      YFLX: map['YFLX'],
      BGMC: map['BGMC'],
      BXDW: map['BXDW'],
      BGTJRQ: map['BGTJRQ'],
      PSJG: map['PSJG'],
      PSRQ: map['PSRQ'],
      PSWH: map['PSWH'],
      PSJL: map['PSJL'],
      PGS: map['PGS'],
      BAJG: map['BAJG'],
      BARQ: map['BARQ'],
      BAWH: map['BAWH'],
      TXDZ: map['TXDZ'],
      YFSXH: map['YFSXH'],
    );
  }
  String toJson() => json.encode(toMap());
  factory KclYfModel.fromJson(String source) =>
      KclYfModel.fromMap(json.decode(source));
}
