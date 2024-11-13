import 'package:access_pro/main.dart';
import 'package:flutter/material.dart';

class CampoLogin extends StatefulWidget {
  final String texto;
  final Icon icone;
  final TextEditingController controller;

  const CampoLogin({required this.texto, required this.icone, required this.controller, super.key});

  @override
  State<CampoLogin> createState() => _CampoLoginState();
}

class _CampoLoginState extends State<CampoLogin> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: TextFormField(
        controller: widget.controller,
        decoration: InputDecoration(
          prefixIcon: widget.icone,
          label: Text(widget.texto),
          filled: true,
          fillColor: Cores.branco,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(20),
          ),
          focusedBorder: UnderlineInputBorder(
            borderRadius: BorderRadius.circular(20),
            borderSide: BorderSide(
              color: Cores.preto
            )
          )
        ),
      ),
    );
  }
}

class LabelCadastro extends StatelessWidget {
  final String texto;

  const LabelCadastro({required this.texto, super.key});

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerLeft,
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Text(texto,
          style: TextStyle(
            color: Cores.branco,
            fontWeight: FontWeight.bold,
            fontSize: 15
          ),
        ),
      ),
    );
  }
}