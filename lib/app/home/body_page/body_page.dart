import 'package:device_frame/device_frame.dart';
import 'package:flutter/material.dart';

class BodyPage extends StatelessWidget {
  const BodyPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final altura = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: GridView.count(
              physics: NeverScrollableScrollPhysics(),
              //shrinkWrap: true,
              crossAxisCount: 3,
              mainAxisSpacing: 16,
              crossAxisSpacing: 16,
              children: [
                buildAppWidget(
                  image: 'images/lista.jpeg',
                  title: 'Gerenciador de Tarefas',
                  description:
                  'Aplicativo desenvolvido com a finalidade de ser um gerenciador de tarefas simples contendo a função de acionar, apagar individualmente e deletar todos!',
                ),
                buildAppWidget(
                  image: 'images/imc.jpeg',
                  title: 'Calculadora IMC',
                  description:
                  'Calculadora IMC, desenvolvida com a finalidade de ajudar uma estudante de fisioterapia na sua fase de estágio.',
                ),
                buildAppWidget(
                  image: 'images/conversor.jpeg',
                  title: 'Conversor de Moedas',
                  description:
                  'Conversor de euro, dolar e real, dados vindo de uma API (Em tempo real).',
                ),
                buildAppWidget(
                  image: 'images/conversor.jpeg',
                  title: 'Conversor de Moedas',
                  description:
                  'Conversor de euro, dolar e real, dados vindo de uma API (Em tempo real).',
                ),
                buildAppWidget(
                  image: 'images/conversor.jpeg',
                  title: 'Conversor de Moedas',
                  description:
                  'Conversor de euro, dolar e real, dados vindo de uma API (Em tempo real).',
                ),
                buildAppWidget(
                  image: 'images/conversor.jpeg',
                  title: 'Conversor de Moedas',
                  description:
                  'Conversor de euro, dolar e real, dados vindo de uma API (Em tempo real).',
                ),
              ],
            ),
          ),
        ],
      ),
    );

  }

  Widget buildAppWidget({
    required String image,
    required String title,
    required String description,
  }) {
    return Column(
      children: [
        Expanded(
          child: DeviceFrame(
            device: Devices.android.onePlus8Pro,
            orientation: Orientation.portrait,
            screen: Image.asset(image),
          ),
        ),
        SizedBox(height: 20),
        Text(
          title,
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold,
          ),
          textAlign: TextAlign.center,
        ),
        SizedBox(height: 10),
        Text(
          description,
          style: TextStyle(fontSize: 16),
          textAlign: TextAlign.center,
        ),
      ],
    );
  }
}