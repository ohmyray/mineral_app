import 'dart:convert';

// ignore_for_file: non_constant_identifier_names
class KclKsModel {
  int ND;
  String TCDYMC;
  String TCDYBH;
  int TCDYLX;
  String KQBH;
  int DJFLBH;
  String KSBH;
  int SBBS;
  String XKZH;
  String JZYXQ;
  int XZQDM;
  int SCZT;
  int JJLX;
  int ZKCM;
  int TJDX;
  String KSMC;
  String KYQR;
  String XCM;
  int FW;
  num ZXZJ;
  num ZXDXZB;
  num ZXDYZB;
  String JTXMC;
  String CZMC;
  int YJ;
  int ZJ;
  String SWDZTJ;
  String GCDZTJ;
  String JTLB;
  String SYDMC;
  num SYDJL;
  String GSMZCD;
  num JDWJL;
  String GDMZCD;
  String TBRQ;
  String TBYY;
  String TXDZ;
  String TBR;
  String TBFZR;
  String TBDW;
  String TBAORQ;
  KclKsModel({
    this.ND,
    this.TCDYMC,
    this.TCDYBH,
    this.TCDYLX,
    this.KQBH,
    this.DJFLBH,
    this.KSBH,
    this.SBBS,
    this.XKZH,
    this.JZYXQ,
    this.XZQDM,
    this.SCZT,
    this.JJLX,
    this.ZKCM,
    this.TJDX,
    this.KSMC,
    this.KYQR,
    this.XCM,
    this.FW,
    this.ZXZJ,
    this.ZXDXZB,
    this.ZXDYZB,
    this.JTXMC,
    this.CZMC,
    this.YJ,
    this.ZJ,
    this.SWDZTJ,
    this.GCDZTJ,
    this.JTLB,
    this.SYDMC,
    this.SYDJL,
    this.GSMZCD,
    this.JDWJL,
    this.GDMZCD,
    this.TBRQ,
    this.TBYY,
    this.TXDZ,
    this.TBR,
    this.TBFZR,
    this.TBDW,
    this.TBAORQ,
  });
  Map<String, dynamic> toMap() {
    return {
      'ND': ND,
      'TCDYMC': TCDYMC,
      'TCDYBH': TCDYBH,
      'TCDYLX': TCDYLX,
      'KQBH': KQBH,
      'DJFLBH': DJFLBH,
      'KSBH': KSBH,
      'SBBS': SBBS,
      'XKZH': XKZH,
      'JZYXQ': JZYXQ,
      'XZQDM': XZQDM,
      'SCZT': SCZT,
      'JJLX': JJLX,
      'ZKCM': ZKCM,
      'TJDX': TJDX,
      'KSMC': KSMC,
      'KYQR': KYQR,
      'XCM': XCM,
      'FW': FW,
      'ZXZJ': ZXZJ,
      'ZXDXZB': ZXDXZB,
      'ZXDYZB': ZXDYZB,
      'JTXMC': JTXMC,
      'CZMC': CZMC,
      'YJ': YJ,
      'ZJ': ZJ,
      'SWDZTJ': SWDZTJ,
      'GCDZTJ': GCDZTJ,
      'JTLB': JTLB,
      'SYDMC': SYDMC,
      'SYDJL': SYDJL,
      'GSMZCD': GSMZCD,
      'JDWJL': JDWJL,
      'GDMZCD': GDMZCD,
      'TBRQ': TBRQ,
      'TBYY': TBYY,
      'TXDZ': TXDZ,
      'TBR': TBR,
      'TBFZR': TBFZR,
      'TBDW': TBDW,
      'TBAORQ': TBAORQ,
    };
  }

  factory KclKsModel.fromMap(Map<String, dynamic> map) {
    return KclKsModel(
      ND: map['ND'],
      TCDYMC: map['TCDYMC'],
      TCDYBH: map['TCDYBH'],
      TCDYLX: map['TCDYLX'],
      KQBH: map['KQBH'],
      DJFLBH: map['DJFLBH'],
      KSBH: map['KSBH'],
      SBBS: map['SBBS'],
      XKZH: map['XKZH'],
      JZYXQ: map['JZYXQ'],
      XZQDM: map['XZQDM'],
      SCZT: map['SCZT'],
      JJLX: map['JJLX'],
      ZKCM: map['ZKCM'],
      TJDX: map['TJDX'],
      KSMC: map['KSMC'],
      KYQR: map['KYQR'],
      XCM: map['XCM'],
      FW: map['FW'],
      ZXZJ: map['ZXZJ'],
      ZXDXZB: map['ZXDXZB'],
      ZXDYZB: map['ZXDYZB'],
      JTXMC: map['JTXMC'],
      CZMC: map['CZMC'],
      YJ: map['YJ'],
      ZJ: map['ZJ'],
      SWDZTJ: map['SWDZTJ'],
      GCDZTJ: map['GCDZTJ'],
      JTLB: map['JTLB'],
      SYDMC: map['SYDMC'],
      SYDJL: map['SYDJL'],
      GSMZCD: map['GSMZCD'],
      JDWJL: map['JDWJL'],
      GDMZCD: map['GDMZCD'],
      TBRQ: map['TBRQ'],
      TBYY: map['TBYY'],
      TXDZ: map['TXDZ'],
      TBR: map['TBR'],
      TBFZR: map['TBFZR'],
      TBDW: map['TBDW'],
      TBAORQ: map['TBAORQ'],
    );
  }
  String toJson() => json.encode(toMap());
  factory KclKsModel.fromJson(String source) =>
      KclKsModel.fromMap(json.decode(source));
}
