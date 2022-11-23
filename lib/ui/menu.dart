import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sesion7/controlador/controladorGeneral.dart';
import 'package:sesion7/ui/home.dart';

class menu extends StatefulWidget {
  const menu({super.key});

  @override
  State<menu> createState() => _menuState();
}

class _menuState extends State<menu> {
  contorladorGeneral Control = Get.find();

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Drawer(
        child: Column(
          children: [
            DrawerHeader(
              child: UserAccountsDrawerHeader(
                
                currentAccountPictureSize: const Size.square(72.0),
                currentAccountPicture:  CircleAvatar(
                  radius: 120,
                  backgroundImage: NetworkImage(
                    "https://i.pinimg.com/564x/df/a8/88/dfa888d415a5f9dbd06eb6a89c28768c.jpg"),
                    ),
                accountName: Text("felipe"), 
                accountEmail: Text("juanfe"))),
            Divider(),

            Expanded(
              child: ListView(children: [
                ListTile(
                  title: Text("home"), 
                  leading: Icon(Icons.home), 
                  trailing: Icon(Icons.arrow_circle_right_outlined),

                  onTap: () {
                    Control.cargaPosicion(2);
                    Navigator.pop(context);
                  },
                ),

                ListTile(
                  title: Text("comprar"), 
                  leading: Icon(Icons.shopping_cart_outlined), 
                  trailing: Icon(Icons.arrow_circle_right_outlined),

                  onTap: () {
                    Control.cargaPosicion(3);
                    Navigator.pop(context);
                  },
                ),

                ListTile(
                  title: Text("Mis productos"), 
                  leading: Icon(Icons.shopping_bag_outlined), 
                  trailing: Icon(Icons.arrow_circle_right_outlined),

                  onTap: () {
                    Control.cargaPosicion(1);
                    Navigator.pop(context);
                  },
                ),

                ListTile(
                  title: Text("Acerca de.."), 
                  leading: Icon(Icons.person), 
                  trailing: Icon(Icons.arrow_circle_right_outlined),

                  onTap: () {
                    Control.cargaPosicion(0);
                    Navigator.pop(context);
                  },
                )
                
              ],
              )
              
            )
          ],
        ),
      ),
    );
  }
} 
  
