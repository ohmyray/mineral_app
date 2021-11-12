// ignore_for_file: non_constant_identifier_names
import 'dart:convert';

class GqtcwdModel {
  String YSDM;
  int XZQDM;
  String KQBH;
  String WDMC;
  String WDWJ;
  String MS;
  int ND;
  GqtcwdModel({
    this.YSDM,
    this.XZQDM,
    this.KQBH,
    this.WDMC,
    this.WDWJ,
    this.MS,
    this.ND,
  });

  Map<String, dynamic> toMap() {
    return {
      'YSDM': YSDM,
      'XZQDM': XZQDM,
      'KQBH': KQBH,
      'WDMC': WDMC,
      'WDWJ': WDWJ,
      'MS': MS,
      'ND': ND,
    };
  }

  factory GqtcwdModel.fromMap(Map<String, dynamic> map) {
    return GqtcwdModel(
      YSDM: map['YSDM'],
      XZQDM: map['XZQDM'],
      KQBH: map['KQBH'],
      WDMC: map['WDMC'],
      WDWJ: map['WDWJ'],
      MS: map['MS'],
      ND: map['ND'],
    );
  }

  String toJson() => json.encode(toMap());

  factory GqtcwdModel.fromJson(String source) =>
      GqtcwdModel.fromMap(json.decode(source));
}
