import 'package:flutter/material.dart';
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
            child: Column(children: [
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
                                  'Olá, eu sou o Walysson Cruz',
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
                                  mainAxisAlignment: MainAxisAlignment.start,
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
                                    IconButton(
                                      onPressed: _openGitUrl,
                                      icon: Image.asset('icons/git_icon.png',
                                          color: Colors.black),
                                    ),
                                    SizedBox(
                                      width: 10,
                                    ),
                                    IconButton(
                                      onPressed: _openLinkdinUrl,
                                      icon: Image.asset('icons/linkdin_icon.png',
                                          color: Colors.black),
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Column(
                                  children: [
                                    Text(
                                      'Tenho 21 anos\nBuscando oportunidades de trabalho com o desenvolvimento de aplicativos\nNo atual momento trabalhando como freelancer',
                                      style: TextStyle(
                                        fontFamily: 'Merriweather',
                                        fontSize: 20,
                                        color: Colors.white,
                                      ),
                                    ),
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
          ),
        ),
      ),
    );
  }
}