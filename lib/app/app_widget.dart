import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:my_portfolio/app/core/shared/utils/themes.dart';

class AppWidget extends StatelessWidget {
  const AppWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
     Modular.setInitialRoute('/home/');
    return MaterialApp.router(
      title: 'My Portfolio',
      theme: Themes.themes,
      routeInformationParser: Modular.routeInformationParser,
      routerDelegate: Modular.routerDelegate,
      debugShowCheckedModeBanner: false,
    ); //
  }
}
