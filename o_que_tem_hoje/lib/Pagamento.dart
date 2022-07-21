import 'package:flutter/material.dart';

class Pagamento extends StatefulWidget {
  const Pagamento({Key? key}) : super(key: key);

  @override
  State<Pagamento> createState() => _PagamentoState();
}

class _PagamentoState extends State<Pagamento> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 9, 186, 100),
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
              Icon(Icons.school_outlined),
              Text(
                "Pagamento",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 21,
                  fontFamily: "MontserratAlternates-ExtraLight",
                ),
              ),
              Image.asset("images/logo1.png"),
        ]),
      ),

      body: Padding(
        padding: EdgeInsets.all(30),
        child: Column(children: <Widget>[
          Text("QR Code",
          style: TextStyle(
            fontSize: 21,
            fontWeight: FontWeight.bold,
            fontFamily: "MontserratAlternates-Medium",
          ),),


          Padding(
            padding: EdgeInsets.only(top: 20),
            child: Container(
              height: 300,
              decoration: BoxDecoration(
              //boxshasdoowww:
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey,
                    spreadRadius:
                        5, //quantidade de pixels ao redor do container
                    blurRadius: 12, //o nível de espalhamento da shadow
                    offset: Offset(10, 10) // (right, botton, left, top)
                    )
                ],

                color: Color.fromARGB(255, 226, 226, 226),
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(15),
                  bottomRight: Radius.circular(15)),
              ),
            ),
          ),

          Padding(
            padding: EdgeInsets.only(top: 40),
            child:
              Text("Recomendamos que o pagamento seja realizado apenas quando você já esteja na fila para pegar a ficha e mostrar o comprovante!",
              style: TextStyle(
                fontSize: 18,
                fontFamily: "MontserratAlternates-Medium",
              ),
              ),
            ),

        ]),
      ),
    );
  }
}
