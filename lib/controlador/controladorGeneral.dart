import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sesion7/clases/productos.dart';

class contorladorGeneral extends GetxController{
  final _posicion= 2.obs;
  final pro = <productos>[].obs;

  @override
  void onInit() {
    
    pro.add(productos(1, "producto1", "https://i.pinimg.com/564x/e6/98/ff/e698ffe4a496fad810ee4f5b92d40322.jpg", 180000, 0));
    pro.add(productos(2, "producto2", "https://i.pinimg.com/564x/4c/1c/53/4c1c53e06ca75c8fb57e196625781d7a.jpg", 230900, 0));
    // TODO: implement onInit
    super.onInit();
  }

  int calcularTotal (){
    int total = 0;
    for (var i = 0; i < pro.length; i++) {
      total = total + pro[i].cantidad * pro[i].precio;    return total;
    }
    return total;
  }

  void cambiarCantidad (int posi, int can){
    pro[posi].cantidad = can;
  }

  void cargaPosicion(int x){
    _posicion.value = x;
  }

  int get posicion => _posicion.value;
}