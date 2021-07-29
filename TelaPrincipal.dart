import 'dart:math';

import 'package:app7_jogo_cara_ou_coroa/TelaResultado.dart';
import 'package:flutter/material.dart';

class TelaPrincipal extends StatefulWidget {
  const TelaPrincipal({Key? key}) : super(key: key);

  @override
  _TelaPrincipalState createState() => _TelaPrincipalState();
}

class _TelaPrincipalState extends State<TelaPrincipal> {
  void _exibirResultado() {
    var item = ["Moeda 01 - Cara", "Moeda 02 - Coroa"];
    var numero = Random().nextInt(item.length);
    var resultado = item[numero];

    Navigator.push(context,
        MaterialPageRoute(builder: (context) => TelaResultado(resultado)));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xff61bd86),
        appBar: AppBar(
          backgroundColor: Colors.green[900],
          title: Text("App Jogo Cara ou Coroa"),
        ),
        body: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Image.asset("image/logo.png"),
              GestureDetector(
                onTap: _exibirResultado,
                child: Image.asset("image/botao_jogar.png"),
              )
            ],
          ),
        ));
  }
}
