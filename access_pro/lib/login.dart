import 'package:access_pro/main.dart';
import 'package:access_pro/widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {

  TextEditingController controllerEmail = TextEditingController();
  TextEditingController controllerSenha = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Cores.pretoFundo,
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              //Logo
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 40),
                child: Image.asset('assets/logo.png',width: 150),
              ),
              //Campos
              Container(
                child: Column(
                  children:[
                    //Email
                    CampoLogin(texto: "Email", icone: const Icon(Icons.email_outlined), controller: controllerEmail),
                    //Senha
                    CampoLogin(texto: "Senha", icone: const Icon(Icons.lock_outline_rounded), controller: controllerSenha),
                  ]
                ),
              ),
              //Botao Login
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: ElevatedButton(
                  onPressed: (){
                    Navigator.pushNamed(context, '/home');
                  }, 
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Cores.laranja,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ) 
                  ),
                  child: Text("Login", 
                  style: TextStyle(
                    color: Cores.branco,
                  ),),
                ),
              ),
              //Cadastro
              Align(
                alignment: Alignment.centerRight,
                child: Padding(
                  padding: const EdgeInsets.only(bottom: 40, right: 12),
                  child: TextButton(
                    onPressed: (){
                      Navigator.pushNamed(context, '/cadastro');
                    }, 
                    child: Text("Não sou cadastrado", 
                      style: TextStyle(
                        color: Cores.laranja,
                        fontWeight: FontWeight.bold
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        )
      )
    );
  }
}