import 'package:app_banco/tela2.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Tela1(),
    );
  }
}

// MyApp vai "herdar"" os componentes do material e compartilhar com as telas; ele é o intermediário ou a classe centralizadora

class Tela1 extends StatelessWidget {
  const Tela1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 93, 151, 101),
      appBar: AppBar(title: Text("My Bank", style: TextStyle(color: Colors.white),), backgroundColor: const Color.fromARGB(255, 93, 151, 101),),
      body: 
      Center(child: 
        Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          Text("Bem-vindo(a)", style: TextStyle(fontSize: 30, fontWeight: FontWeight.w900, color: Colors.white),),
          TextButton(onPressed: (){
          Navigator.push(context, MaterialPageRoute(builder: (context) => Tela2()));
          }, child: Text("Entrar"))
        ],),
      )
    );
  }
}