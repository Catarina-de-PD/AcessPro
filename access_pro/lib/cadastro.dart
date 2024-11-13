import 'package:access_pro/main.dart';
import 'package:access_pro/widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Cadastro extends StatefulWidget {
  const Cadastro({super.key});

  @override
  State<Cadastro> createState() => _CadastroState();
}

class _CadastroState extends State<Cadastro> {
  TextEditingController controllerNome = TextEditingController();


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Cores.pretoFundo,
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            //Titulo
            Align(
              alignment: Alignment.topCenter,
              child: Text("Cadastre-se", 
                style: TextStyle(
                color: Cores.laranja, 
                fontWeight: FontWeight.bold,
                fontSize: 20
                ),
              ),
            ),
            //Nome
            const LabelCadastro(texto: "Nome"),
            CampoLogin(texto: "Nome", icone: Icon(Icons.mail), controller: controllerNome)
          ],
        ),
      ),
    );
  }
}