import 'package:flutter/material.dart';
import 'package:o_que_tem_hoje/Aluno_online.dart';
import 'package:o_que_tem_hoje/Calendario.dart';
import 'package:o_que_tem_hoje/Pagamento.dart';
import 'package:o_que_tem_hoje/TelaPrincipal.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';

//------ Essa é uma página que não aparece mas, ela recebe todas as outras paginas e faz o sistema de page view,
// para realizar a passagem entre telas e, com isso, o bottom navigation bar deve ficar aqui também para que seja possível
// visualizá-lo e utilizá-lo em todas as paginas.

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int paginaAtual = 0;
  late PageController pc;

  @override
  void initState() {
    super.initState();
    pc = PageController(initialPage: paginaAtual);
  }

//----- esssa função a seguir faz com que o icone da bottomNavigation bar mude conforme a tela
  setPaginaAtual(pagina) {
    setState(() {
      paginaAtual = pagina;
    });
  }

  @override
  final items = <Widget>[
    Icon(Icons.home, size: 30),
    Icon(Icons.calendar_month, size: 30),
    Icon(Icons.qr_code_outlined, size: 30),
    Icon(Icons.person, size: 30),
    
  ];

  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        controller: pc,
        children: [
          TelaPrincipal(),
          Calendario(),
          Pagamento(),
          AlunoOnline(),
        ],
        onPageChanged: setPaginaAtual,
      ),
      bottomNavigationBar: CurvedNavigationBar(
          //currentIndex: paginaAtual,
          buttonBackgroundColor: Color.fromARGB(255, 9, 186, 100),
          backgroundColor: Colors.transparent,
          height: 60,
          animationCurve: Curves.easeInOut,
          animationDuration: Duration(milliseconds: 200),
          items: items,
          onTap: (pagina) {
            pc.animateToPage(pagina,
                duration: Duration(milliseconds: 200), curve: Curves.easeInOut);
          }),
    );
  }
}
