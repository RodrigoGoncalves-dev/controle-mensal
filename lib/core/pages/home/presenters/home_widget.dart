import 'package:controle_mensal/core/pages/home/aplication/home_controller.dart';
import 'package:controle_mensal/domain/models/user_model.dart';
import 'package:flutter/material.dart';
import 'package:na_regua_package/na_regua_package.dart';

class HomeWidget extends StatefulWidget {
  const HomeWidget({super.key});

  @override
  State<HomeWidget> createState() => _HomeWidgetState();
}

class _HomeWidgetState extends State<HomeWidget> {
  final _controller = Modular.get<HomeController>();

  Future<void> init() async {
    await _controller.init();
  }

  @override
  void initState() {
    init();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Controle Mensal'),
        actions: [
          Container(
            margin: const EdgeInsets.only(right: 8),
            child: Text(
              _controller.isLoading.value ? 'Carregando...' : _controller.user!.name!,
              style: TextStyle(),
            ),
          ),
        ],
      ),
      body: ValueListenableBuilder(
        valueListenable: _controller.isLoading,
        builder: (context, __, _) {
          if (_controller.isLoading.value) {
            return const Center(
              child: CircularProgressIndicator(),
            );
          }

          if (_controller.user == null) {
            return const Center(
              child: Text('Usuário não encontrado'),
            );
          }

          return Center(
            child: Text(_controller.user!.name!),
          );
        },
      ),
    );
  }
}
