import 'package:desafio_via_cep/models/cep_back4app_model.dart';
import 'package:desafio_via_cep/repository/cep_back4app_repository.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  CepBack4appRepository cepResository = CepBack4appRepository();
  var _cepsBack4app = CepsBack4appModel([]);

  bool isLoadin = false;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    buscepsBack4app();
  }

  void buscepsBack4app() async {
    _cepsBack4app = await cepResository.getCepBack4app();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(''),
      ),
      body: ListView.builder(
          itemCount: _cepsBack4app.ceps.length,
          itemBuilder: (BuildContext bc, int index) {
            var cep = _cepsBack4app.ceps[index];
            return Text("Rua: ${cep.logradouro}");
          }),
    );
  }
}
