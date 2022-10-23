/*
andres gonzalez
SENA
ficha:2470980


*/
//Importamos framework flutter y otras hojas de diseño
import 'package:flutter/material.dart';
import 'package:responsive_dashboard_v0/responsive/constants.dart';
import 'package:responsive_dashboard_v0/util/my_box.dart';
//el widget Stateful nos permite realizar cambios en la pantalla
class DesktopScaffold extends StatefulWidget {
  const DesktopScaffold({Key? key}) : super(key: key);
//sobre escribimos el widget
  @override
  State<DesktopScaffold> createState() => _DesktopScaffoldState();
}

class _DesktopScaffoldState extends State<DesktopScaffold> {
  @override
  Widget build(BuildContext context) {
    //Scaffold nos ayuda a darle un buen diseño a nuestra pagina
    return Scaffold(

      //appBar nos crea el head que construimos en la hoja constants
      appBar: myAppBar,
      //le damos el color definimos en la hoja constants
      backgroundColor: Colors.yellow,
      //construimos una fila en el cuerpo
      body: Row(

        //Children nos ayuda a contener varios widgets
        children: [
          //Colocamos el menu que construimos en la hoja de constats
          mydrawer,
          //nos crea otra columna
          Expanded(
            flex: 3,
              child: Column(
            children: [
              // AspectRatio nos ayuda a que ancho debe ser dos veces más grande que la altura

              AspectRatio(
                aspectRatio: 3,
                child: SizedBox(
                  //se define como un cuadro con un tamaño
                  width: double.infinity,
                  //creamos una lista
                  child: ListView.builder(
                    // nos ayuda a que las imagenes se muestren una vez
                      itemCount: 1,
                      itemBuilder: (context, index) {
                        //Mybox contiene imagenes las cuales estan en esa hoja
                        return const MyBox();
                      }),
                ),
              ),
              // nos muestra la lista que creamos en constants
              Expanded(
                  child: lista
              ),
            ],
          )),
          //este expanded nos muestra una imagen como si fuera un aside
          Expanded(
            child: Column(
              children: const [
                Expanded(

                  child:Image(
                      image: AssetImage('images/personajes.webp')
                  )
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
