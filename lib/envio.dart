import 'package:flutter/material.dart';
import 'package:loadpage/listagem_funcionarios.dart';


class EnvioProduto extends StatelessWidget {
  const EnvioProduto({super.key});

   @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Align(
        alignment: Alignment.topCenter,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            const SizedBox(height: 30.0),
            Container(
                height: 300,
                width: 350,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/images/final.png'),  // Use the relative path here
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            const SizedBox(height: 16.0),
            const Text('dados Enviados com Sucesso!!',
                style: TextStyle(fontSize: 25.0)),
            const SizedBox(height: 10.0),
            SizedBox(
                    width: 300,
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const SizedBox(height: 16.0),
                          ElevatedButton(
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => const ListagemFuncionarios(),
                                ),
                              );
                            },
                            style: ElevatedButton.styleFrom(
                                fixedSize: const Size(220, 20), 
                            ),
                            child: const Text('Voltar'),
                          ),
                        ]))
          ],
        ),
      ),
    );
  }
}