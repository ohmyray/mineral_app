import 'dart:convert';

// ignore_for_file: non_constant_identifier_names
class KclXkModel {
  int ND;
  String KQBH;
  int DJFLBH;
  String KSBH;
  int XH;
  String JKMC;
  String ZFM;
  String YKRXPW;
  String JKPW;
  num WKPW;
  String PWDW;
  num XKHSL;
  KclXkModel({
    this.ND,
    this.KQBH,
    this.DJFLBH,
    this.KSBH,
    this.XH,
    this.JKMC,
    this.ZFM,
    this.YKRXPW,
    this.JKPW,
    this.WKPW,
    this.PWDW,
    this.XKHSL,
  });
  Map<String, dynamic> toMap() {
    return {
      'ND': ND,
      'KQBH': KQBH,
      'DJFLBH': DJFLBH,
      'KSBH': KSBH,
      'XH': XH,
      'JKMC': JKMC,
      'ZFM': ZFM,
      'YKRXPW': YKRXPW,
      'JKPW': JKPW,
      'WKPW': WKPW,
      'PWDW': PWDW,
      'XKHSL': XKHSL,
    };
  }

  factory KclXkModel.fromMap(Map<String, dynamic> map) {
    return KclXkModel(
      ND: map['ND'],
      KQBH: map['KQBH'],
      DJFLBH: map['DJFLBH'],
      KSBH: map['KSBH'],
      XH: map['XH'],
      JKMC: map['JKMC'],
      ZFM: map['ZFM'],
      YKRXPW: map['YKRXPW'],
      JKPW: map['JKPW'],
      WKPW: map['WKPW'],
      PWDW: map['PWDW'],
      XKHSL: map['XKHSL'],
    );
  }
  String toJson() => json.encode(toMap());
  factory KclXkModel.fromJson(String source) =>
      KclXkModel.fromMap(json.decode(source));
}
