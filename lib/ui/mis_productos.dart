import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sesion7/controlador/controladorGeneral.dart';

class mis_productos extends StatefulWidget {
  const mis_productos({super.key});

  @override
  State<mis_productos> createState() => _mis_productosState();
}

class _mis_productosState extends State<mis_productos> {
  @override
  Widget build(BuildContext context) {
    contorladorGeneral control = Get.find();

    return Container(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          Expanded(
            child: ListView.builder(
              itemCount: control.pro.length,
              itemBuilder: (BuildContext context, int index) {
                return Card(
                  child: ListTile(
                    leading:
                      Image(image: NetworkImage(control.pro[index].imagen)),
                    title: (Text(control.pro[index].nombre)),

                    subtitle: Text("Precio : "+ 
                      control.pro[index].precio.toString() + 
                      "| Cantidad :" +
                      control.pro[index].cantidad.toString()),
                    
                    trailing: Text((control.pro[index].cantidad * control.pro[index].precio).toString()),
                    
                  ),
                );
              },
            ),
          ),
          Divider(),

          Text(
            "total a pagar : " + control.calcularTotal().toString(),
            
          )

        ],
      ),
    );
  }
}