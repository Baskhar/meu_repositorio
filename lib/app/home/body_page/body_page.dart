import 'package:flutter/material.dart';
import 'package:device_frame/device_frame.dart';
import 'package:meuportifolio/app/constants/app_images.dart';

class BodyPage extends StatelessWidget {
  const BodyPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    //final altura = MediaQuery.of(context).size.height;
    return SliverToBoxAdapter(
      child: GridView.count(
        physics: NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        crossAxisCount: 3,
        mainAxisSpacing: 16,
        crossAxisSpacing: 16,
        children: [
          buildAppWidget(
            image: AppImages.lista,
            title: 'Gerenciador de Tarefas',
            description:
                'Aplicativo desenvolvido com a finalidade de ser um gerenciador de tarefas simples contendo a função de acionar, apagar individualmente e deletar todos!',
          ),
          buildAppWidget(
            image: AppImages.imc,
            title: 'Calculadora IMC',
            description:
                'Calculadora IMC, desenvolvida com a finalidade de ajudar uma estudante de fisioterapia na sua fase de estágio.',
          ),
          buildAppWidget(
            image: AppImages.city_connect,
            title: 'City Connect',
            description:
                'Aplicativo de turismo, onde as pessoas podem conferir os principais atrativos da cidade de São luis do Manranhão',
          ),
          buildAppWidget(
            image: AppImages.auto_brooder,
            title: 'Auto Brooder',
            description:
                'Aplicativo onde é mostrado os dados em tempo real de uma chocadeira eletrônica',
          ),
          buildAppWidget(
            image: AppImages.cuidados_app,
            title: 'Cuidados App',
            description:
                'Projeto desenvolvido para a faculdade, cujo objetivo era gerenciar uma rede de cuidadores',
          ),
          buildAppWidget(
            image: AppImages.conversor,
            title: 'Conversor de Moedas',
            description:
                'Conversor de euro, dolar e real, dados vindo de uma API (Em tempo real).',
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
            fontSize: 25,
            fontFamily: 'Bacasime Antique',
            fontWeight: FontWeight.bold,
          ),
          textAlign: TextAlign.center,
        ),
        SizedBox(height: 10),
        Text(
          description,
          style: TextStyle(fontSize: 20,fontFamily: 'Bacasime Antique'),
          textAlign: TextAlign.center,
        ),
      ],
    );
  }
}
