import 'package:catalog_app_flutter/pages/cart_page.dart';
import 'package:flutter/material.dart';
import 'package:catalog_app_flutter/pages/login_page.dart';

import 'package:catalog_app_flutter/utils/routes.dart';
import 'package:catalog_app_flutter/widgets/theme.dart';

import 'core/store.dart';
import 'pages/home_page.dart';
import 'package:velocity_x/velocity_x.dart';

void main() {
  runApp(VxState(store: MyStore(),child:  const MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      themeMode: ThemeMode.light,
      theme: MyTheme.lightTheme(),
      darkTheme: MyTheme.darkThme(),
      initialRoute: MyRoutes.homeRoute,
      routes: {
        "/": (context) => const LoginPage(),
        MyRoutes.homeRoute: (context) => const HomePage(),
        MyRoutes.loginRoute: (context) => const LoginPage(),
        MyRoutes.cartRoute: (context) => const CartPage(),
      },
    );
  }
}
