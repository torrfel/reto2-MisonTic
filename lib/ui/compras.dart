import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sesion7/controlador/controladorGeneral.dart';

class compras extends StatefulWidget {
  const compras({super.key});

  @override
  State<compras> createState() => _comprasState();
}

class _comprasState extends State<compras> {
  contorladorGeneral Control = Get.find();
  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView.builder(
        itemCount: Control.pro.length,
        itemBuilder: (BuildContext context, int index) {
          return  Card(
            child: ListTile(
              leading: Image(image: NetworkImage(Control.pro[index].imagen)) ,
              title:Text(Control.pro[index].nombre + "|" + Control.pro[index].precio.toString()),
              trailing: Text(Control.pro[index].cantidad.toString()),
              subtitle: Row(
                children: [
                  IconButton(
                    onPressed: () {

                      int nuenvaCantidad = Control.pro[index].cantidad +1;
                      Control.cambiarCantidad(index, nuenvaCantidad);
                      Navigator.pushAndRemoveUntil(
                      context,
                      MaterialPageRoute(builder: (context) => compras()), // this mymainpage is your page to refresh
                      (Route<dynamic> route) => false,
                      );
                      
                    }, 
                    icon: Icon(Icons.arrow_circle_up_rounded)),
                  IconButton(
                    onPressed: () {
                      int nuenvaCantidad = 
                          Control.pro[index].cantidad -1;
                      Control.cambiarCantidad(index, nuenvaCantidad);
                      Navigator.pushAndRemoveUntil(
                      context,
                      MaterialPageRoute(builder: (context) => compras()), // this mymainpage is your page to refresh
                      (Route<dynamic> route) => false,
                      );
                    }, 
                    icon: Icon(Icons.arrow_drop_down_circle))
                 
                ],
              ),
            ),
          );
        },
      ),
    );
      
    
  }
}