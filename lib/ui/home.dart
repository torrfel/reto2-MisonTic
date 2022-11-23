import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sesion7/controlador/controladorGeneral.dart';
import 'package:sesion7/ui/compras.dart';
import 'package:sesion7/ui/info.dart';
import 'package:sesion7/ui/inicio.dart';
import 'package:sesion7/ui/menu.dart';
import 'package:sesion7/ui/mis_productos.dart';

List paginas = [
  info(),
  mis_productos(),
  inicio(),
  compras()
];

class MyApp extends StatelessWidget {
  const MyApp({super.key});

 
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Sesión 7',
      theme: ThemeData(
        
        primarySwatch: Colors.blue,
      ),
      debugShowCheckedModeBanner: false,
      home: const MyHomePage(title: 'Sesion 7'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});


  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  
  contorladorGeneral Control = Get.find();

  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      appBar: AppBar(
       
        title: Text(widget.title),
      ),
      body: Obx (() => paginas[Control.posicion]),
      drawer: menu(),
    );
  }
}