import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'Pagamento.dart';
import 'Calendario.dart';
import 'Aluno_online.dart';

class TelaPrincipal extends StatefulWidget {
  const TelaPrincipal({Key? key}) : super(key: key);

  @override
  State<TelaPrincipal> createState() => _TelaPrincipalState();
}

class _TelaPrincipalState extends State<TelaPrincipal> {


  @override
  Widget build(BuildContext context) {
  

  // ------------------  Parte do bottom navigation bar   --------------------
    /*final items = <Widget>[
      Icon(Icons.home, size: 30),
      Icon(Icons.calendar_month, size: 30),
      Icon(Icons.qr_code_outlined, size: 30),
      Icon(Icons.person, size: 30),
    ];*/
  // ------------------  Parte do bottom navigation bar   --------------------


    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 9, 186, 100),
        title: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Icon(Icons.school_outlined),
              Text(
                "O que tem hoje?",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 21,
                  fontFamily: "MontserratAlternates-ExtraLight",
                ),
              ),
              Image.asset("images/logo1.png"),
            ]),
      ),
      //backgroundColor: Color.fromARGB(255, 214, 214, 214),
      body: Padding(
          padding: EdgeInsets.only(left:15, right: 15, top: 30),
          //bloco cinza por debaixo dos cards:
          child: Container(
            height: 510,
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
            child: ListView(
              children: [
                //Café da manha:
                Padding(
                  padding: EdgeInsets.all(15),
                  child: Container(
                      height: 100,
                      decoration: BoxDecoration(
                        boxShadow: [
                          BoxShadow(
                              color: Colors.grey,
                              spreadRadius:
                                  3, //quantidade de pixels ao redor do container
                              blurRadius:
                                  12, //o nível de espalhamento da shadow
                              offset: Offset(10, 10))
                        ],
                        color: Color.fromARGB(255, 9, 186, 100),
                        borderRadius: BorderRadius.only(
                            bottomLeft: Radius.circular(15),
                            bottomRight: Radius.circular(15)),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: <Widget>[
                          Text(
                            "Café: Pão", //alterar para realizar requisição dos dados do site da uea!!!
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 22,
                              fontFamily: "MontserratAlternates-Medium",
                            ),
                          ),
                          Text(
                            "Horário: 06:30 - 09:00",
                            style: TextStyle(
                              color: Color.fromARGB(255, 66, 65, 65),
                              fontFamily: "MontserratAlternates-Medium",
                              fontSize: 18,
                            ),
                          )
                        ],
                      )),
                ),

                //Almoço:
                Padding(
                  padding: EdgeInsets.all(15),
                  child: Container(
                      height: 100,
                      decoration: BoxDecoration(
                        boxShadow: [
                          BoxShadow(
                              color: Colors.grey,
                              spreadRadius:
                                  3, //quantidade de pixels ao redor do container
                              blurRadius:
                                  12, //o nível de espalhamento da shadow
                              offset: Offset(10, 10))
                        ],
                        color: Color.fromARGB(255, 9, 186, 100),
                        borderRadius: BorderRadius.only(
                            bottomLeft: Radius.circular(15),
                            bottomRight: Radius.circular(15)),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: <Widget>[
                          Text(
                            "Almoço: Lasanha", //alterar para realizar requisição dos dados do site da uea!!!
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 22,
                              fontFamily: "MontserratAlternates-Medium",
                            ),
                          ),
                          Text(
                            "Horário: 11:30 - 14:00",
                            style: TextStyle(
                              color: Color.fromARGB(255, 66, 65, 65),
                              fontFamily: "MontserratAlternates-Medium",
                              fontSize: 18,
                            ),
                          )
                        ],
                      )),
                ),

                //Lanche:
                Padding(
                  padding: EdgeInsets.all(15),
                  child: Container(
                      height: 100,
                      decoration: BoxDecoration(
                        boxShadow: [
                          BoxShadow(
                              color: Colors.grey,
                              spreadRadius:
                                  3, //quantidade de pixels ao redor do container
                              blurRadius:
                                  12, //o nível de espalhamento da shadow
                              offset: Offset(10, 10))
                        ],
                        color: Color.fromARGB(255, 9, 186, 100),
                        borderRadius: BorderRadius.only(
                            bottomLeft: Radius.circular(15),
                            bottomRight: Radius.circular(15)),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: <Widget>[
                          Text(
                            "Lanche: Pão com ovo", //alterar para realizar requisição dos dados do site da uea!!!
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 22,
                              fontFamily: "MontserratAlternates-Medium",
                            ),
                          ),
                          Text(
                            "Horário: 17:30 - 19:00",
                            style: TextStyle(
                              color: Color.fromARGB(255, 66, 65, 65),
                              fontFamily: "MontserratAlternates-Medium",
                              fontSize: 18,
                            ),
                          )
                        ],
                      )),
                ),

                // Botão começa aqui:

                Padding(
                  padding:
                      EdgeInsets.only(top: 20, left: 75, right: 75, bottom: 0),
                  child: TextButton(
                    onPressed: () {},
                    style: TextButton.styleFrom(
                      backgroundColor: Color.fromARGB(195, 9, 186, 100),
                      elevation: 15,
                      shadowColor: Colors.purple,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Icon(Icons.calendar_month, color: Colors.white),
                        Padding(
                          padding: EdgeInsets.all(16),
                          child: Text(
                            'Ver semana',
                            style: TextStyle(
                                fontSize: 20,
                                fontFamily: "MontserratAlternates-Medium",
                                color: Color.fromARGB(255, 255, 254, 254)),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          )),




// -------------   O bottom navigation bar foi transferido para home_page.dart  -------------------
      /*bottomNavigationBar: CurvedNavigationBar(
        buttonBackgroundColor: Color.fromARGB(255, 9, 186, 100),
        backgroundColor: Colors.transparent,
        height: 60,
        animationCurve: Curves.easeInOut,
        animationDuration: Duration(milliseconds: 200),
        items: items,
      ),*/
    );
  }
}
