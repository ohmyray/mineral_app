// ignore_for_file: non_constant_identifier_names
import 'dart:convert';

class ClgstModel {
  int BSM;
  String YSDM;
  int XZQDM;
  String KQBH;
  String SGTMC;
  String SGTWJ;
  String WJLX;
  String MS;
  int ND;

  ClgstModel({
    this.BSM,
    this.YSDM,
    this.XZQDM,
    this.KQBH,
    this.SGTMC,
    this.SGTWJ,
    this.WJLX,
    this.MS,
    this.ND,
  });

  Map<String, dynamic> toMap() {
    return {
      'BSM': BSM,
      'YSDM': YSDM,
      'XZQDM': XZQDM,
      'KQBH': KQBH,
      'SGTMC': SGTMC,
      'SGTWJ': SGTWJ,
      'WJLX': WJLX,
      'MS': MS,
      'ND': ND,
    };
  }

  factory ClgstModel.fromMap(Map<String, dynamic> map) {
    return ClgstModel(
      BSM: map['BSM'],
      YSDM: map['YSDM'],
      XZQDM: map['XZQDM'],
      KQBH: map['KQBH'],
      SGTMC: map['SGTMC'],
      SGTWJ: map['SGTWJ'],
      WJLX: map['WJLX'],
      MS: map['MS'],
      ND: map['ND'],
    );
  }

  String toJson() => json.encode(toMap());

  factory ClgstModel.fromJson(String source) =>
      ClgstModel.fromMap(json.decode(source));
}
