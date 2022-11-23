import 'package:flutter/material.dart';

class inicio extends StatefulWidget {
  const inicio({super.key});

  @override
  State<inicio> createState() => _inicioState();
}

class _inicioState extends State<inicio> {
  @override
  Widget build(BuildContext context) {
    return Container(child: Image.network('https://media.istockphoto.com/id/1144923012/es/vector/dibujo-a-mano-estilos-de-compras-doodle-shopping.jpg?s=1024x1024&w=is&k=20&c=HKZ6XRLvSMkPvUJaFUbrcsXl7iEzfnW0e7Mbaz2dEzs='),);
  }
}