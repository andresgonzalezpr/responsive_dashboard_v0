/*
Joan Alexander Vera Beltran
SENA
ficha:2470980
fecha:9/10/2022

*/
//Importamos framework flutter y otras hojas de diseño
import 'package:flutter/material.dart';
//Lo que realizamos en este layout es que cuando una pantalla tiene ciertos pixeles nos muestra una hoja diferente
class MyBox extends StatelessWidget {
  const MyBox({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // Le damos un espacio a las imagenes de 3px
    return Padding(padding: const EdgeInsets.all(3.0),
      //creamos una fila
      child: Row(
        //la alineamos y le damos un espacio entre cada una
          mainAxisAlignment:MainAxisAlignment.spaceEvenly,
          //agregamos las imagenes
          children:const [
            Expanded(child:Image(image: AssetImage('images/pringles.png')),),
            Expanded(child:Image(image: AssetImage('images/pringlesCremaycebolla.webp')),),
            Expanded(child:Image(image: AssetImage('images/pringlesOriginal.jpg')),),
            Expanded(child:Image(image: AssetImage('images/pringlesqueso.webp')),)
          ]
      ),
    );
  }
}
