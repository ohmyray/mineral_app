import 'dart:convert';

// ignore_for_file: non_constant_identifier_names
class KclZhhsModel {
  int ND;
  String KQBH;
  int DJFLBH;
  String KSBH;
  int KCDM;
  int TJDX;
  String KCMC;
  String HSZFM;
  String HSLB;
  num HSSL;
  String SLDW;
  num ZHHSL;
  KclZhhsModel({
    this.ND,
    this.KQBH,
    this.DJFLBH,
    this.KSBH,
    this.KCDM,
    this.TJDX,
    this.KCMC,
    this.HSZFM,
    this.HSLB,
    this.HSSL,
    this.SLDW,
    this.ZHHSL,
  });
  Map<String, dynamic> toMap() {
    return {
      'ND': ND,
      'KQBH': KQBH,
      'DJFLBH': DJFLBH,
      'KSBH': KSBH,
      'KCDM': KCDM,
      'TJDX': TJDX,
      'KCMC': KCMC,
      'HSZFM': HSZFM,
      'HSLB': HSLB,
      'HSSL': HSSL,
      'SLDW': SLDW,
      'ZHHSL': ZHHSL,
    };
  }

  factory KclZhhsModel.fromMap(Map<String, dynamic> map) {
    return KclZhhsModel(
      ND: map['ND'],
      KQBH: map['KQBH'],
      DJFLBH: map['DJFLBH'],
      KSBH: map['KSBH'],
      KCDM: map['KCDM'],
      TJDX: map['TJDX'],
      KCMC: map['KCMC'],
      HSZFM: map['HSZFM'],
      HSLB: map['HSLB'],
      HSSL: map['HSSL'],
      SLDW: map['SLDW'],
      ZHHSL: map['ZHHSL'],
    );
  }
  String toJson() => json.encode(toMap());
  factory KclZhhsModel.fromJson(String source) =>
      KclZhhsModel.fromMap(json.decode(source));
}
