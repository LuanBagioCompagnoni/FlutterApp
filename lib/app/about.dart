import 'package:first/app/calculator.dart';
import 'package:first/app/login.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class About extends StatefulWidget {
  const About({super.key, required this.title});

  final String title;

  @override
  State<About> createState() => AboutPage();
}

class AboutPage extends State<About> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 64, 64, 64),
      drawer: Drawer(
        child: ListView(
          children: [
            const DrawerHeader(
              //header da lista na barra lateral
              decoration: BoxDecoration(
                color: Color.fromRGBO(5, 90, 157, 1),
              ),
              child: Text('Opções'),
            ),
            ListTile(
              title: const Text('Calculadora'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) =>
                          const TerceiraTela(title: "Calculadora")),
                );
              },
            ),
            ListTile(
              title: const Text('Sobre'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const About(title: "Sobre")),
                );
              },
            ),
            ListTile(
              title: const Text('Sair'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const Login(title: "Login")),
                );
              },
            ),
          ],
        ),
      ),
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                'Sobre Nós',
                style: TextStyle(
                  fontSize: 24.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 12.0),
              Text(
                  " Bem-vindo ao nosso mundo de inovação e dedicação. Somos uma equipe apaixonada por criar soluções que fazem a diferença. Desde o nosso início, buscamos desafiar o status quo e trazer novas perspectivas para o mundo."),
              SizedBox(
                height: 20,
              ),
              Text(
                  " Nossa missão é simples: tornar a vida mais fácil, mais eficiente e mais gratificante para todos. Através de uma combinação de tecnologia de ponta e criatividade, estamos constantemente explorando novas maneiras de superar obstáculos e criar oportunidades."),
              SizedBox(
                height: 20,
              ),
              Text(
                  " Acreditamos que cada problema é uma oportunidade disfarçada e cada desafio é uma chance de inovar. Com uma equipe diversificada e multidisciplinar, estamos preparados para enfrentar os desafios mais complexos e encontrar soluções que inspirem."),
              SizedBox(
                height: 20,
              ),
              Text(
                  " Estamos comprometidos com a excelência em tudo o que fazemos. Desde a concepção até a implementação, cada projeto é tratado com cuidado e atenção aos detalhes. Valorizamos a transparência, a integridade e a colaboração, e estamos sempre abertos a novas ideias e perspectivas."),
              SizedBox(
                height: 20,
              ),
              Text(
                  " Junte-se a nós nesta jornada. Explore nossos produtos, descubra nossos serviços e faça parte da nossa história. Juntos, podemos criar um futuro mais brilhante e impactante."),
              SizedBox(
                height: 20,
              ),
              Image.asset('images/flutter-logo.png'),
            ],
          ),
        ),
      ),
    );
  }
}
