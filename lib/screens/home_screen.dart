import 'package:flutter/material.dart';
//
import 'package:disenos/widgets/widgets.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) => Scaffold(
        body: Stack(
          children: [
            BackgroundScreen(),
            _HomeBody(),
          ],
        ),
        bottomNavigationBar: PageCustomButtom(),
      );
}

class _HomeBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) => SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Column(
          children: [
            PageTitle(),
            CardTablePage(),
          ],
        ),
      );
}
