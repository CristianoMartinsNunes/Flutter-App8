import 'package:flutter/material.dart';

class TelaResultado extends StatefulWidget {
  String valor;
  TelaResultado(this.valor);

  @override
  _TelaResultadoState createState() => _TelaResultadoState();
}

class _TelaResultadoState extends State<TelaResultado> {
  @override
  Widget build(BuildContext context) {
    //print(widget.valor);
    var localImage;

    if (widget.valor == "Moeda Cara") {
      localImage = "image/moeda_cara.png";
    } else {
      localImage = "image/moeda_coroa.png";
    }

    return Scaffold(
        backgroundColor: Color(0xff61bd86),
        /*appBar: AppBar(
          backgroundColor: Colors.green[900],
          title: Text("App Jogo Cara ou Coroa"),
        ),*/
        body: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Text(
                widget.valor,
                style: TextStyle(
                  fontSize: 35,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
                textAlign: TextAlign.center,
              ),
              Image.asset(localImage),
              GestureDetector(
                onTap: () {
                  Navigator.pop(context);
                },
                child: Image.asset("image/botao_voltar.png"),
              ),
            ],
          ),
        ));
  }
}
