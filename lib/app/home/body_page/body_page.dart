import 'package:flutter/material.dart';

import 'package:meuportifolio/app/constants/app_images.dart';
import 'package:meuportifolio/app/home/body_page/widgets/build_app_widget.dart';
import 'package:meuportifolio/app/models/open_repository.dart';

class BodyPage extends StatelessWidget {
  const BodyPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    //final altura = MediaQuery.of(context).size.height;
    final openRepository = OpenRepository();
    return SliverToBoxAdapter(
      child: GridView.count(
        physics: NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        crossAxisCount: 3,
        mainAxisSpacing: 16,
        crossAxisSpacing: 16,
        children: [
          InkWell(
            onTap: () async {
              await openRepository.openUrl(
                  link: 'https://github.com/Baskhar/teste_app');
            },
            child: BuildAppWidget(
              image: AppImages.app_estagio,
              title: 'App Estágio',
              description:
                  'Desenvolvi durante a participação em uma seleção para um estágio. O objetivo era construir as telas do aplicativo o mais próximo possível do design que nos foi apresentado.',
            ),
          ),
          InkWell(
            onTap: () async {
              await openRepository.openUrl(
                  link: 'https://github.com/Baskhar/cuidados_app');
            },
            child: BuildAppWidget(
              image: AppImages.cuidados_app,
              title: 'Cuidados App',
              description:
                  'Projeto desenvolvido para a faculdade, cujo objetivo era gerenciar uma rede de cuidadores',
            ),
          ),
          BuildAppWidget(
            image: AppImages.city_connect,
            title: 'City Connect',
            description:
                'Aplicativo de turismo, onde as pessoas podem conferir os principais atrativos da cidade de São luis do Manranhão',
          ),
          BuildAppWidget(
            image: AppImages.auto_brooder,
            title: 'Auto Brooder',
            description:
                'Aplicativo onde é mostrado os dados em tempo real de uma chocadeira eletrônica',
          ),
          InkWell(
            onTap: () async {
              await openRepository.openUrl(
                  link: 'https://github.com/Baskhar/imc_gauge');
            },
            child: BuildAppWidget(
              image: AppImages.imc,
              title: 'Calculadora IMC',
              description:
                  'Calculadora IMC, desenvolvida com a finalidade de ajudar uma estudante de fisioterapia na sua fase de estágio.',
            ),
          ),
          InkWell(
            onTap: () async {
              await openRepository.openUrl(
                  link: 'https://github.com/Baskhar/meu_dinheiro');
            },
            child: BuildAppWidget(
              image: AppImages.meuDinheiro,
              title: 'Meu Dinheiro',
              description:
                  'App desenvolvido para o cliente thiago. Ele queria um app simples de controle de finanças!',
            ),
          ),
          InkWell(
            onTap: () async {
              await openRepository.openUrl(
                  link: 'https://github.com/Baskhar/Clone_Instagram');
            },
            child: BuildAppWidget(
              image: AppImages.clone_Instagran,
              title: 'Clone Instagran',
              description:
                  'Durante os meus estudos de flutter desenvolvi um app com a proposta de ser um clone o instagram. Não ficou 100% pois não consegui encontrar todos os assets',
            ),
          ),
          InkWell(
            onTap: () async {
              await openRepository.openUrl(
                  link: 'https://github.com/Baskhar/Conversor_Moedas');
            },
            child: BuildAppWidget(
              image: AppImages.conversor,
              title: 'Conversor de Moedas',
              description:
                  'Conversor de euro, dolar e real, dados vindo de uma API (Em tempo real).',
            ),
          ),
          InkWell(
            onTap: () async {
              await openRepository.openUrl(
                  link: 'https://github.com/Baskhar/lista_tarefas');
            },
            child: BuildAppWidget(
              image: AppImages.lista,
              title: 'Gerenciador de Tarefas',
              description:
                  'Aplicativo desenvolvido com a finalidade de ser um gerenciador de tarefas simples contendo a função de acionar, apagar individualmente e deletar todos!',
            ),
          ),
        ],
      ),
    );
  }

// Widget buildAppWidget({
//   required String image,
//   required String title,
//   required String description,
// }) {
//   return Column(
//     children: [
//       Expanded(
//         child: DeviceFrame(
//           device: Devices.android.onePlus8Pro,
//           orientation: Orientation.portrait,
//           screen: Image.asset(image),
//         ),
//       ),
//       SizedBox(height: 20),
//       Text(
//         title,
//         style: TextStyle(
//           fontSize: 25,
//           fontFamily: 'Bacasime Antique',
//           fontWeight: FontWeight.bold,
//         ),
//         textAlign: TextAlign.center,
//       ),
//       SizedBox(height: 10),
//       Padding(
//         padding: const EdgeInsets.all(8.0),
//         child: Text(
//           description,
//           style: TextStyle(
//             fontSize: 20,
//             //color: Colors.grey,
//             //fontFamily: 'Bacasime Antique',
//           ),
//           textAlign: TextAlign.center,
//         ),
//       ),
//     ],
//   );
// }
}
