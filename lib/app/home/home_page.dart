import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'body_page/body_page.dart';
import 'header/header_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final altura = MediaQuery.of(context).size.height;
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            expandedHeight: altura * 0.50,
            flexibleSpace: HeaderPage(),
          ),
          SliverToBoxAdapter(
            child: SizedBox(height: 50),
          ),
          SliverFillRemaining(
            child: BodyPage(),
          ),
        ],
      ),
    );
  }
}