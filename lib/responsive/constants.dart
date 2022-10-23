/*
andres gonzales
SENA
ficha:2470980

*/
//Importamos framework flutter
import 'package:flutter/material.dart';
//definimos myDefaultBackground que sea un color gris [300] nos sirve el tono del color
var myDefaultBackground = Colors.grey[300];
//AppBar nos sirve para hacer el head o encabezado de nuestra pagina
var myAppBar = AppBar(
  //Le damos un color negro
  backgroundColor: Colors.black,
// le colocamos un titulo centrado  con un color blanco y un tamaño de letra
  title: const Center(child:Text('PRINGLES PRODUCTOS',style: TextStyle(color: Colors.black, fontSize: 24) ),

  ),
//Agregamos una imagen que va quedar al lado derecho de la pantalla con ciertas medidas
  flexibleSpace: const Image(
    alignment: Alignment.topRight,
    image: AssetImage('images/logo_mario.webp'),
    width: 55,
    height: 55,
  ),
);
//Drawer es un Widget de flutter el cual nos sirve para desplegar un menu
var mydrawer = Drawer(

  //Creamos una lista
  child: ListView(
    //
    padding: EdgeInsets.zero,
    //Children nos ayuda para contener varios Widgets
    children: [
      // Le damos un encabezado al menu
      DrawerHeader(
        //Le damos un color verde
        decoration: const BoxDecoration(color: Colors.lightGreen),
        //Child nos ayuda a contener un solo widget
        child: Column(
          //Children nos ayuda para contener varios Widgets
          children: const [
            //Le agregamos un texto de color blanco y cierta medida
            Text(
              'U S U A R  I O',
              style: TextStyle(color: Colors.white, fontSize: 24),
            ),
            //Agregamos un icono de color blaco
            Icon(
              Icons.face_outlined,
              color: Colors.white,
              size: 70.0,
            )
          ],
        ),
      ),
      // realizamos una lista con un icono,color negro,un tamaño de 30px y un texto
      const ListTile(
        leading: Icon(
          Icons.home,
          color: Colors.black,
          size: 30.0,
        ),
        title: Text('P R I N C I P A L'),
      ),
      // realizamos una lista con un icono,color negro,un tamaño de 30px y un texto
      const ListTile(
        leading: Icon(
          Icons.chat,
          color: Colors.black,
          size: 30.0,
        ),
        title: Text('M E N S A J E S'),
      ),
      // realizamos una lista con un icono,color negro,un tamaño de 30px y un texto
      const ListTile(
        leading: Icon(
          Icons.settings,
          color: Colors.black,
          size: 30.0,
        ),
        title: Text('C O N F I G U R A C I O N '),
      ),
      // realizamos una lista con un icono,color negro,un tamaño de 30px y un texto
      const ListTile(
        leading: Icon(
          Icons.notifications,
          color: Colors.black,
          size: 30.0,
        ),
        title: Text(' NOTIFICACIONES '),
      ),
      // realizamos una lista con un icono,color negro,un tamaño de 30px y un texto
      const ListTile(
        leading: Icon(
          Icons.remove_shopping_cart_outlined,
          color: Colors.black,
          size: 30.0,
        ),
        title: Text(' REMOVER '),
      ),
      // realizamos una lista con un icono,color negro,un tamaño de 30px y un texto
      const ListTile(
        leading: Icon(
          Icons.logout,
          color: Colors.black,
          size: 30.0,
        ),
        title: Text('S A L I R '),
      ),

    ],
  ),
);
//definimos una variable lista la cual crea una lista
var lista=ListView(
  //children nos ayuda a tener varios widgets
  children: const <Widget>[
    // creamos un campo en la lista el cual contiene una imagen,y un texto alineado al centro y de un color negro con su respectivo tamaño
    ListTile(
      leading:Image(
        alignment: Alignment.topRight,
        image: AssetImage('images/personaje1.png'),
        width: 55,
        height: 55,
      ),
      title: Text('BOWSER',textAlign: TextAlign.center,style: TextStyle(color: Colors.black, fontSize: 24)),
    ),

    // creamos un campo en la lista el cual contiene una imagen,y un texto alineado al centro y de un color negro con su respectivo tamaño
    ListTile(
      leading:Image(
        alignment: Alignment.topRight,
        image: AssetImage('images/personajes2.png'),
        width: 55,
        height: 55,
      ),
      title: Text('MARIO',textAlign: TextAlign.center,style: TextStyle(color: Colors.black, fontSize: 24)),
    ),

    // creamos un campo en la lista el cual contiene una imagen,y un texto alineado al centro y de un color negro con su respectivo tamaño
    ListTile(
      leading:Image(
        alignment: Alignment.topRight,
        image: AssetImage('images/personaje3.jpg'),
        width: 55,
        height: 55,
      ),
      title: Text('PRINCESA',textAlign: TextAlign.center,style: TextStyle(color: Colors.black, fontSize: 24)),
    ),
  ],
);


