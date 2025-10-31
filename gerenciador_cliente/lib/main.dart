import 'package:flutter/material.dart';
import 'package:gerenciador_cliente/modelos/cliente.dart';//importa nosso modelo de BD

//instaciano nosso BD
final GerenciadorClientes gerenciadorClientes = GerenciadorClientes();


void main(){
  gerenciadorClientes.cadastrar(Cliente(
  nome: 'Admin', email: 'admin@email.com', senha:'admin' ),
  );
  runApp(const AplicativoClientes());
}

class AplicativoClientes extends StatelessElement{
  const AplicativoClientes({super.key});

  @override
  Widget build(BuildContext context){
    return MaterialApp(
      title: 'Sistema de Clientes',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.indigo,
        useMaterial3: true,
      ),
      home: const TelaPrincipal(
        cliente: Cliente(nome: 'DEV', email: 'dev@email.com', senha: '0'),
      ),
    );
  }
}

class TelaPrincipal extends StatelessWidget{
  final Cliente cliente;

  const TelaPrincipal({super.key, required this.cliente});

  @override
  Widget build(BuildContext context) {
return Scaffold(appBar: AppBar(
  title: const Text('Tela Principal (Em construção)')),
  body: Center(
    child: Text(
     'Bem Vindo, ${cliente.nome}!!',
     style: const TextStyle(fontSize: 24), 
    ),
  ),
  );
  }
}