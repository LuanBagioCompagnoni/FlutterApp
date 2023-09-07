import 'package:first/app/home.dart';
import 'package:first/app/register.dart';
import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  const Login({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  State<Login> createState() => LoginPageState();
}

class LoginPageState extends State<Login> {
  @override
  String nome = "";
  String senha = "";
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 64, 64, 64),
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Text('Login'),
      ),
      body: Center(
        child: Padding(
          padding: EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              TextField(
                style: TextStyle(color: Colors.white),
                decoration: InputDecoration(
                  labelText: 'Nome de Usuário',
                  labelStyle: TextStyle(color: Colors.white),
                ),
                onChanged: (value) {
                  setState(() {
                    nome = value;
                  });
                },
              ),
              SizedBox(height: 20.0),
              TextField(
                style: TextStyle(color: Colors.white),
                decoration: InputDecoration(
                  labelText: 'Senha',
                  labelStyle: TextStyle(color: Colors.white),
                ),
                obscureText: true,
                onChanged: (value) {
                  setState(() {
                    senha = value;
                  });
                },
              ),
              SizedBox(height: 40.0),
              ElevatedButton(
                onPressed: () {
                  if (nome.isNotEmpty && senha.isNotEmpty) {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => MyHomePage(title: "Home")),
                    );
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(
                        backgroundColor: Color.fromARGB(255, 0, 202, 0),
                        content: Text('Logado!'),
                        duration: Duration(milliseconds: 700),
                      ),
                    );
                  } else {
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(
                        backgroundColor: const Color.fromARGB(255, 255, 17, 0),
                        content: Text('Por favor, preencha todos os campos!'),
                        duration: Duration(milliseconds: 700),
                      ),
                    );
                  }
                },
                child: Text('Login'),
              ),
              SizedBox(
                height: 20,
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => Register(title: "Cadastrar")),
                  );
                },
                child: Text('Cadastrar'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
