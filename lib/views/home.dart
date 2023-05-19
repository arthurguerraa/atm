import 'package:atm/views/servicos.dart';
import 'package:flutter/material.dart';

import 'clientes.dart';
import 'contato.dart';
import 'empresa.dart';

class HomeAtm extends StatefulWidget {
  const HomeAtm({super.key});

  @override
  State<HomeAtm> createState() => _HomeAtmState();
}



class _HomeAtmState extends State<HomeAtm> {
  
  void _abrirClientes(){
    Navigator.push(
    context, MaterialPageRoute(
      builder: (context)=>Clientes()));
  }

   void _abrirContato(){
    Navigator.push(
    context, MaterialPageRoute(
      builder: (context)=>Contato()));
  }

  void _abrirEmpresa(){
    Navigator.push(
    context, MaterialPageRoute(
      builder: (context)=>Empresa()));
  }

  void _abrirServicos(){
    Navigator.push(
    context, MaterialPageRoute(
      builder: (context)=>Servicos()));
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      appBar: AppBar(
        title: const Text("Atm Consultoria"),
         backgroundColor: Colors.green,
      ),
      body: Container(
        padding: EdgeInsets.all(16),
        child: Column(
          children: [
            Image.asset("imagens/logo.png"),
            const SizedBox(
              height: 34,
            ),
             Row(
               mainAxisAlignment: MainAxisAlignment.center,
              children: [
                GestureDetector(
                  onTap: _abrirEmpresa,
                  child: Image.asset("imagens/menu_empresa.png"),
                ),

                const SizedBox(
                width: 32,
                ),

                  GestureDetector(
                   onTap: _abrirServicos, 
                  child: Image.asset("imagens/menu_servico.png"),
                ), 
              ],
            ),

            const SizedBox(
              height: 32,
            ),

            Row(
               mainAxisAlignment: MainAxisAlignment.center,
              children: [
               
                GestureDetector(
                  onTap: _abrirClientes,
                  child: Image.asset("imagens/menu_cliente.png"),
                ),

                const SizedBox(
                width: 32,
                ),

                GestureDetector(
                  onTap: _abrirContato,
                  child: Image.asset("imagens/menu_contato.png"),
                )
              ],

            )
          ]),
      )
    );
  }
}