import 'package:flutter/material.dart';
import 'package:listagem_de_usuarios/model/person_model.dart';
import 'package:listagem_de_usuarios/pages/home_controller.dart';
import 'package:listagem_de_usuarios/repositories/home_repository.dart';
import 'package:listagem_de_usuarios/shared/http_client.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  late HomeController _homeController;

  @override
  void initState() {
    _homeController = HomeController(
      HomeRepository(
        HttpClient(),
      ),
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: const Color(0xff5d8ca3),
        title: const Text(
          'Exemplo Estrutura de Chamadas',
          style: TextStyle(color: Colors.black),
        ),
      ),
      body: Center(
        child: FutureBuilder<List<PersonModel>>(
            future: _homeController.getData(),
            builder: (context, snapshot) {
              if (snapshot.hasData) {
                return ListView.builder(
                  itemCount: snapshot.data!.length,
                  itemBuilder: (context, index) {
                    return Column(
                      children: [
                        if (index > 0)
                          const Divider(
                            thickness: 2,
                          ),
                        Padding(
                          padding: const EdgeInsets.all(8),
                          child: SizedBox(
                            width: double.infinity,
                            child: Card(
                              color: const Color(0xff5d8ca3),
                              elevation: 3,
                              margin: const EdgeInsets.all(8),
                              child: Column(
                                children: [
                                  Text(snapshot.data![index].name!,
                                      style: const TextStyle(fontSize: 18)),
                                  Text(
                                    snapshot.data![index].lastName!,
                                    style: const TextStyle(fontSize: 18),
                                  ),
                                  Text(
                                      'Idade: ${snapshot.data![index].age!.toString()}',
                                      style: const TextStyle(fontSize: 15)),
                                  Text(
                                      'Nacionalidade: ${snapshot.data![index].nationality!}',
                                      style: const TextStyle(fontSize: 15)),
                                  Text(
                                      'Profissão: ${snapshot.data![index].occupation!}',
                                      style: const TextStyle(fontSize: 15)),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ],
                    );
                  },
                );
              }
              return const CircularProgressIndicator();
            }),
      ),
    );
  }
}
