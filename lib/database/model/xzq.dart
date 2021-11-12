// ignore_for_file: non_constant_identifier_names
import 'dart:convert';

class XzqModel {
  int BSM;
  int YSDM;
  int XZQDM;
  String XZQMC;
  String MS;
  int ND;

  XzqModel({
    this.BSM,
    this.YSDM,
    this.XZQDM,
    this.XZQMC,
    this.MS,
    this.ND,
  });

  Map<String, dynamic> toMap() {
    return {
      'BSM': BSM,
      'YSDM': YSDM,
      'XZQDM': XZQDM,
      'XZQMC': XZQMC,
      'MS': MS,
      'ND': ND,
    };
  }

  factory XzqModel.fromMap(Map<String, dynamic> map) {
    return XzqModel(
      BSM: map['BSM'],
      YSDM: map['YSDM'],
      XZQDM: map['XZQDM'],
      XZQMC: map['XZQMC'],
      MS: map['MS'],
      ND: map['ND'],
    );
  }

  String toJson() => json.encode(toMap());

  factory XzqModel.fromJson(String source) =>
      XzqModel.fromMap(json.decode(source));
}
