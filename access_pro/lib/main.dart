import 'package:access_pro/cadastro.dart';
import 'package:access_pro/home.dart';
import 'package:access_pro/login.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class Cores{
  static Color pretoFundo = const Color.fromARGB(255, 30, 30, 30);
  static Color preto = const Color.fromARGB(255, 0, 0, 0);
  static Color laranja = const Color.fromARGB(255, 239, 107, 0);
  static Color branco = const Color.fromARGB(255, 225, 217, 217);
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      routes: {
        '/': (context) => const Login(),
        '/cadastro':(context) => const Cadastro(),
        '/home': (context) => const Home(),
      },
    );
  }
}
