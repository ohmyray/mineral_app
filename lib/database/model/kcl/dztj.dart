import 'dart:convert';

// ignore_for_file: non_constant_identifier_names
class KclDztjModel {
  int ND;
  String KQBH;
  int DJFLBH;
  String KSBH;
  String KCMC;
  String KCLX;
  int KCLXDM;
  String HKCW;
  int ZYCLGMM;
  String ZYCLGM;
  int KTZS;
  num ZHD;
  String YYYHZB;
  String ZKTMC;
  String ZKTXT;
  String ZKTCD;
  String ZKTKD;
  String ZKTHD;
  String ZKTQX;
  String ZKTQJ;
  int KTZXMS;
  int KTZDMS;
  num ZQKQBL;
  int KCKTZXMS;
  int KCKTZDMS;
  String GZFZCD;
  String KACLX;
  KclDztjModel({
    this.ND,
    this.KQBH,
    this.DJFLBH,
    this.KSBH,
    this.KCMC,
    this.KCLX,
    this.KCLXDM,
    this.HKCW,
    this.ZYCLGMM,
    this.ZYCLGM,
    this.KTZS,
    this.ZHD,
    this.YYYHZB,
    this.ZKTMC,
    this.ZKTXT,
    this.ZKTCD,
    this.ZKTKD,
    this.ZKTHD,
    this.ZKTQX,
    this.ZKTQJ,
    this.KTZXMS,
    this.KTZDMS,
    this.ZQKQBL,
    this.KCKTZXMS,
    this.KCKTZDMS,
    this.GZFZCD,
    this.KACLX,
  });
  Map<String, dynamic> toMap() {
    return {
      'ND': ND,
      'KQBH': KQBH,
      'DJFLBH': DJFLBH,
      'KSBH': KSBH,
      'KCMC': KCMC,
      'KCLX': KCLX,
      'KCLXDM': KCLXDM,
      'HKCW': HKCW,
      'ZYCLGMM': ZYCLGMM,
      'ZYCLGM': ZYCLGM,
      'KTZS': KTZS,
      'ZHD': ZHD,
      'YYYHZB': YYYHZB,
      'ZKTMC': ZKTMC,
      'ZKTXT': ZKTXT,
      'ZKTCD': ZKTCD,
      'ZKTKD': ZKTKD,
      'ZKTHD': ZKTHD,
      'ZKTQX': ZKTQX,
      'ZKTQJ': ZKTQJ,
      'KTZXMS': KTZXMS,
      'KTZDMS': KTZDMS,
      'ZQKQBL': ZQKQBL,
      'KCKTZXMS': KCKTZXMS,
      'KCKTZDMS': KCKTZDMS,
      'GZFZCD': GZFZCD,
      'KACLX': KACLX,
    };
  }

  factory KclDztjModel.fromMap(Map<String, dynamic> map) {
    return KclDztjModel(
      ND: map['ND'],
      KQBH: map['KQBH'],
      DJFLBH: map['DJFLBH'],
      KSBH: map['KSBH'],
      KCMC: map['KCMC'],
      KCLX: map['KCLX'],
      KCLXDM: map['KCLXDM'],
      HKCW: map['HKCW'],
      ZYCLGMM: map['ZYCLGMM'],
      ZYCLGM: map['ZYCLGM'],
      KTZS: map['KTZS'],
      ZHD: map['ZHD'],
      YYYHZB: map['YYYHZB'],
      ZKTMC: map['ZKTMC'],
      ZKTXT: map['ZKTXT'],
      ZKTCD: map['ZKTCD'],
      ZKTKD: map['ZKTKD'],
      ZKTHD: map['ZKTHD'],
      ZKTQX: map['ZKTQX'],
      ZKTQJ: map['ZKTQJ'],
      KTZXMS: map['KTZXMS'],
      KTZDMS: map['KTZDMS'],
      ZQKQBL: map['ZQKQBL'],
      KCKTZXMS: map['KCKTZXMS'],
      KCKTZDMS: map['KCKTZDMS'],
      GZFZCD: map['GZFZCD'],
      KACLX: map['KACLX'],
    );
  }
  String toJson() => json.encode(toMap());
  factory KclDztjModel.fromJson(String source) =>
      KclDztjModel.fromMap(json.decode(source));
}
