import 'package:first/app/about.dart';
import 'package:first/app/calculator.dart';
import 'package:first/app/login.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
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
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Image.asset('images/flutter-logo.png'),
          ],
        ),
      ),
    );
  }
}
