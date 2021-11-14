import 'dart:convert';

// ignore_for_file: non_constant_identifier_names
class KclCxhModel {
  int ND;
  String KQBH;
  int DJFLBH;
  String KSBH;
  int KCFSDM;
  String KCFS;
  num BLXS;
  num JCB;
  num CQHCL;
  num CKPHL;
  String CKFF1;
  int CKFSDM;
  num SHJCKNL;
  num SJCKNL;
  String CKZTPJ;
  String XKFF1;
  int XKFFM1;
  String SHJXKNL;
  num SJXKNL;
  String XKNYCD;
  num GYZCZ;
  num GYZJZ;
  num NLR;
  num KSFSPFL;
  num DBFSPFL;
  int ZKCM;
  String RXKSMC;
  num FSPFL;
  num WKPFL;
  num CKCB;
  num XKCB;
  KclCxhModel({
    this.ND,
    this.KQBH,
    this.DJFLBH,
    this.KSBH,
    this.KCFSDM,
    this.KCFS,
    this.BLXS,
    this.JCB,
    this.CQHCL,
    this.CKPHL,
    this.CKFF1,
    this.CKFSDM,
    this.SHJCKNL,
    this.SJCKNL,
    this.CKZTPJ,
    this.XKFF1,
    this.XKFFM1,
    this.SHJXKNL,
    this.SJXKNL,
    this.XKNYCD,
    this.GYZCZ,
    this.GYZJZ,
    this.NLR,
    this.KSFSPFL,
    this.DBFSPFL,
    this.ZKCM,
    this.RXKSMC,
    this.FSPFL,
    this.WKPFL,
    this.CKCB,
    this.XKCB,
  });
  Map<String, dynamic> toMap() {
    return {
      'ND': ND,
      'KQBH': KQBH,
      'DJFLBH': DJFLBH,
      'KSBH': KSBH,
      'KCFSDM': KCFSDM,
      'KCFS': KCFS,
      'BLXS': BLXS,
      'JCB': JCB,
      'CQHCL': CQHCL,
      'CKPHL': CKPHL,
      'CKFF1': CKFF1,
      'CKFSDM': CKFSDM,
      'SHJCKNL': SHJCKNL,
      'SJCKNL': SJCKNL,
      'CKZTPJ': CKZTPJ,
      'XKFF1': XKFF1,
      'XKFFM1': XKFFM1,
      'SHJXKNL': SHJXKNL,
      'SJXKNL': SJXKNL,
      'XKNYCD': XKNYCD,
      'GYZCZ': GYZCZ,
      'GYZJZ': GYZJZ,
      'NLR': NLR,
      'KSFSPFL': KSFSPFL,
      'DBFSPFL': DBFSPFL,
      'ZKCM': ZKCM,
      'RXKSMC': RXKSMC,
      'FSPFL': FSPFL,
      'WKPFL': WKPFL,
      'CKCB': CKCB,
      'XKCB': XKCB,
    };
  }

  factory KclCxhModel.fromMap(Map<String, dynamic> map) {
    return KclCxhModel(
      ND: map['ND'],
      KQBH: map['KQBH'],
      DJFLBH: map['DJFLBH'],
      KSBH: map['KSBH'],
      KCFSDM: map['KCFSDM'],
      KCFS: map['KCFS'],
      BLXS: map['BLXS'],
      JCB: map['JCB'],
      CQHCL: map['CQHCL'],
      CKPHL: map['CKPHL'],
      CKFF1: map['CKFF1'],
      CKFSDM: map['CKFSDM'],
      SHJCKNL: map['SHJCKNL'],
      SJCKNL: map['SJCKNL'],
      CKZTPJ: map['CKZTPJ'],
      XKFF1: map['XKFF1'],
      XKFFM1: map['XKFFM1'],
      SHJXKNL: map['SHJXKNL'],
      SJXKNL: map['SJXKNL'],
      XKNYCD: map['XKNYCD'],
      GYZCZ: map['GYZCZ'],
      GYZJZ: map['GYZJZ'],
      NLR: map['NLR'],
      KSFSPFL: map['KSFSPFL'],
      DBFSPFL: map['DBFSPFL'],
      ZKCM: map['ZKCM'],
      RXKSMC: map['RXKSMC'],
      FSPFL: map['FSPFL'],
      WKPFL: map['WKPFL'],
      CKCB: map['CKCB'],
      XKCB: map['XKCB'],
    );
  }
  String toJson() => json.encode(toMap());
  factory KclCxhModel.fromJson(String source) =>
      KclCxhModel.fromMap(json.decode(source));
}
