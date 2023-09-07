import 'package:first/app/login.dart';
import 'package:flutter/material.dart';

class Register extends StatefulWidget {
  const Register({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  State<Register> createState() => RegisterPageState();
}

class RegisterPageState extends State<Register> {
  String nome = '';
  String email = '';
  String senha = '';
  String nomeCadastrado = '';
  String emailCadastrado = '';
  String senhaCadastrada = '';

  void cadastrar() {
    setState(() {
      nomeCadastrado = nome;
      emailCadastrado = email;
      senhaCadastrada = senha;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 64, 64, 64),
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Padding(
          padding: EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextField(
                style: TextStyle(color: Colors.white),
                decoration: InputDecoration(
                  labelText: 'Nome',
                  labelStyle: TextStyle(color: Colors.white),
                ),
                onChanged: (value) {
                  setState(() {
                    nome = value;
                  });
                },
              ),
              TextField(
                style: TextStyle(color: Colors.white),
                decoration: InputDecoration(
                  labelText: 'E-mail',
                  labelStyle: TextStyle(color: Colors.white),
                ),
                onChanged: (value) {
                  setState(() {
                    email = value;
                  });
                },
              ),
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
              SizedBox(height: 20.0),
              ElevatedButton(
                onPressed: () {
                  cadastrar();
                  if (nomeCadastrado.isNotEmpty &&
                      emailCadastrado.isNotEmpty &&
                      senhaCadastrada.isNotEmpty) {
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(
                        backgroundColor: Color.fromARGB(255, 0, 202, 0),
                        content: Text('Cadastrado com sucesso!'),
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
                child: Text('Cadastrar'),
              ),
              SizedBox(
                height: 20,
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => Login(title: "Login")),
                  );
                },
                child: Text('Login'),
              ),
              SizedBox(height: 20.0),
              if (nomeCadastrado.isNotEmpty ||
                  emailCadastrado.isNotEmpty ||
                  senhaCadastrada.isNotEmpty)
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Dados Cadastrados:',
                      style: TextStyle(
                        fontSize: 18.0,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                    if (nomeCadastrado.isNotEmpty)
                      Text(
                        'Nome: $nomeCadastrado',
                        style: TextStyle(color: Colors.white),
                      ),
                    if (emailCadastrado.isNotEmpty)
                      Text(
                        'E-mail: $emailCadastrado',
                        style: TextStyle(color: Colors.white),
                      ),
                    if (senhaCadastrada.isNotEmpty)
                      Text(
                        'Senha: $senhaCadastrada',
                        style: TextStyle(color: Colors.white),
                      ),
                  ],
                ),
            ],
          ),
        ),
      ),
    );
  }
}
