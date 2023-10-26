import 'package:flutter/material.dart';
import 'package:meuportifolio/app/constants/app_images.dart';
import 'package:meuportifolio/app/home/header/widgets/custom_container_icons/custom_container_icons.dart';
import 'package:url_launcher/url_launcher.dart';

class HeaderPage extends StatelessWidget {
  const HeaderPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final altura = MediaQuery.of(context).size.height;
    final largura = MediaQuery.of(context).size.width;

    Future<void> _openGitUrl() async {
      final Uri _url = Uri.parse('https://github.com/Baskhar?tab=repositories');
      if (!await launchUrl(_url)) {
        throw Exception('Não foi possivel encontrar esse link $_url');
      }
    }

    Future<void> _openLinkdinUrl() async {
      final Uri _url = Uri.parse(
          'https://www.linkedin.com/in/walysson-cruz-a273a7189?lipi=urn%3Ali%3Apage%3Ad_flagship3_profile_view_base_contact_details%3BWOfk1Hz9RsechT%2B5nLnlDA%3D%3D');
      if (!await launchUrl(_url)) {
        throw Exception('Não foi possivel encontrar esse link $_url');
      }
    }

    return Scaffold(
      body: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Container(
          height: altura,
          width: largura,
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Colors.blue,
                Colors.green,
              ],
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
            ),
          ),
          child: SingleChildScrollView(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                // Container(),

                Padding(
                  padding: const EdgeInsets.only(top: 75),
                  child: Center(
                    child: Container(
                      child: CircleAvatar(
                        backgroundImage: AssetImage(AppImages.fotoPerfil),
                        radius: 150,
                      ),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(150),
                        border: Border.all(
                          color: Colors.white,
                          width: 2,
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  width: 40,
                ),
                Column(children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 100),
                    child: Center(
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            decoration: BoxDecoration(
                              color: Colors.transparent,
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Column(
                              children: [
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'Olá, sou o Walysson Cruz',
                                      style: TextStyle(
                                        fontSize: 25,
                                        fontFamily: 'Merriweather',
                                        color: Colors.white,
                                      ),
                                    ),
                                    Text(
                                      'DESENVOLVEDOR ',
                                      style: TextStyle(
                                        fontSize: 60,
                                        fontFamily: 'Merriweather',
                                        color: Colors.white,
                                      ),
                                    ),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        Text(
                                          'MOBILE',
                                          style: TextStyle(
                                            fontSize: 60,
                                            fontFamily: 'Merriweather',
                                            fontWeight: FontWeight.bold,
                                            color: Colors.white,
                                          ),
                                        ),
                                        SizedBox(
                                          width: 15,
                                        ),
                                        InkWell(
                                          onTap: _openGitUrl,
                                          child: Container(
                                            width: 50,
                                            height: 50,
                                            //color: Colors.white,
                                            // decoration: BoxDecoration(
                                            //
                                            //   color: Colors.white,
                                            //   borderRadius: BorderRadius.circular(15),
                                            // ),
                                            child: Image.asset(
                                                AppImages.ic_button_git,
                                                color: Colors.black),
                                          ),
                                        ),
                                        SizedBox(
                                          width: 10,
                                        ),
                                        InkWell(
                                          onTap: _openLinkdinUrl,
                                          child: Container(
                                            width: 50,
                                            height: 50,
                                            child: Image.asset(
                                                AppImages.ic_button_linkdin,
                                                color: Colors.black),
                                          ),
                                        ),
                                      ],
                                    ),
                                    SizedBox(
                                      height: 10,
                                    ),
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          'Apaixonado por Tecnologia e Programação',
                                          style: TextStyle(
                                            fontFamily: 'Merriweather',
                                            fontSize: 20,
                                            color: Colors.white,
                                          ),
                                        ),
                                        SizedBox(
                                          height: 10,
                                        ),
                                        Row(
                                          children: [
                                            CustomContainerIcons(
                                                asset: AppImages.ic_flutter),
                                            // Container(
                                            //   decoration: BoxDecoration(
                                            //     borderRadius:
                                            //         BorderRadius.circular(15),
                                            //     color: Colors.white,
                                            //   ),
                                            //   child: Padding(
                                            //     padding: const EdgeInsets.all(8.0),
                                            //     child: Image.asset(
                                            //       AppImages.ic_flutter,
                                            //       width: 45,
                                            //       height: 45,
                                            //     ),
                                            //   ),
                                            // ),
                                            SizedBox(
                                              width: 10,
                                            ),
                                            CustomContainerIcons(
                                                asset: AppImages.ic_javascript),
                                            // Image.asset(
                                            //   AppImages.ic_javascript,
                                            //   width: 45,
                                            //   height: 45,
                                            // ),
                                            SizedBox(
                                              width: 10,
                                            ),
                                            CustomContainerIcons(
                                                asset: AppImages.ic_node),
                                            // Image.asset(
                                            //   AppImages.ic_node,
                                            //   width: 45,
                                            //   height: 45,
                                            // ),
                                            SizedBox(
                                              width: 10,
                                            ),
                                            CustomContainerIcons(
                                                asset: AppImages.ic_python),
                                            // Image.asset(
                                            //   AppImages.ic_python,
                                            //   width: 45,
                                            //   height: 45,
                                            // ),
                                            SizedBox(
                                              width: 10,
                                            ),
                                            CustomContainerIcons(
                                                asset: AppImages.ic_java),
                                            // Image.asset(
                                            //   AppImages.ic_java,
                                            //   width: 45,
                                            //   height: 45,
                                            // ),
                                            SizedBox(
                                              width: 10,
                                            ),
                                            CustomContainerIcons(
                                                asset: AppImages.ic_mySql),
                                            // Image.asset(
                                            //   AppImages.ic_mySql,
                                            //   width: 45,
                                            //   height: 45,
                                            // ),
                                            SizedBox(
                                              width: 10,
                                            ),
                                            CustomContainerIcons(
                                                asset: AppImages.ic_c),
                                            // Image.asset(
                                            //   AppImages.ic_c,
                                            //   width: 45,
                                            //   height: 45,
                                            // ),
                                            SizedBox(
                                              width: 10,
                                            ),
                                            CustomContainerIcons(
                                                asset: AppImages.ic_git),
                                            // Image.asset(
                                            //   AppImages.ic_git,
                                            //   width: 45,
                                            //   height: 45,
                                            // ),
                                          ],
                                        )
                                      ],
                                    ),
                                    SizedBox(
                                      height: 20,
                                    ),
                                    Divider(
                                      color: Colors.white,
                                      thickness: 2,
                                      indent: 50,
                                      endIndent: 50,
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ]),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
