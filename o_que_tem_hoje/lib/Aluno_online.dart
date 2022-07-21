import 'package:flutter/material.dart';
import 'package:url_launcher/link.dart';
import 'package:url_launcher/url_launcher.dart';

class AlunoOnline extends StatefulWidget {
  const AlunoOnline({Key? key}) : super(key: key);

  @override
  State<AlunoOnline> createState() => _AlunoOnlineState();
}

class _AlunoOnlineState extends State<AlunoOnline> {
  final Uri _url =
      Uri.parse('https://www1.uea.edu.br/modulo/login/lyceum2.php');

  void _launchUrl() async {
    if (!await launchUrl(_url)) throw 'Could not launch $_url';
  }

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
              "Aluno Online aqui",
              style: TextStyle(
                fontFamily: "MontserratAlternates-ExtraLight",
                fontWeight: FontWeight.bold,
                fontSize: 21,
              ),
            ),
            Image.asset("images/logo1.png"),
          ],
        ),
      ),

      //button:
      body: Padding(
        padding: EdgeInsets.all(36),
        child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Icon(
                Icons.person,
                size: 50,
              ),
              Padding(
                padding: EdgeInsets.only(top: 20),
                child: TextButton(
                  onPressed: _launchUrl,
                  style: TextButton.styleFrom(
                    backgroundColor: Color.fromARGB(195, 9, 186, 100),
                    elevation: 15,
                    shadowColor: Colors.purple,
                  ),
                  child: Text(
                    "Entrar",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 21,
                      fontFamily: "MontserratAlternates-ExtraLight",
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ]),
      ),
    );
  }
}
