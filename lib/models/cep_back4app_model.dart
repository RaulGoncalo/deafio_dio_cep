import 'package:desafio_via_cep/models/cep_model.dart';

class CepsBack4appModel {
  List<Cep> ceps = [];

  CepsBack4appModel(List list, {List<Cep>? ceps}) {
    if (ceps != null) {
      this.ceps = ceps;
    }
  }

  CepsBack4appModel.fromJson(Map<String, dynamic> json) {
    if (json['results'] != null) {
      ceps = <Cep>[];
      json['results'].forEach((v) {
        ceps!.add(new Cep.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.ceps != null) {
      data['results'] = this.ceps!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}
