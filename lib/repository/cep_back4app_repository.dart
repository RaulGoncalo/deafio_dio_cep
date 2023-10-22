import 'package:desafio_via_cep/models/cep_back4app_model.dart';
import 'package:desafio_via_cep/repository/dio/custom_dio.dart';

class CepBack4appRepository {
  final _customDio = CustomDio();

  Future<CepsBack4appModel> getCepBack4app() async {
    var url = "/ceps";

    var resultado = await _customDio.dio.get(url);

    return CepsBack4appModel.fromJson(resultado.data);
  }
}
