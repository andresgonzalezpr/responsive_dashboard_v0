/*
Joan Alexander Vera Beltran
SENA
ficha:2470980
fecha:9/10/2022

*/
//Importamos framework flutter y otras hojas de diseño
import 'package:flutter/material.dart';
import 'package:responsive_dashboard_v0/responsive/constants.dart';
import '../util/my_box.dart';
//el widget Stateful nos permite realizar cambios en la pantalla
class TabletScaffold extends StatefulWidget {
  const TabletScaffold({Key? key}) : super(key: key);

  @override
  State<TabletScaffold> createState() => _TabletScaffold();
}

class _TabletScaffold extends State<TabletScaffold> {
  @override
  Widget build(BuildContext context) {
    //nos ayuda a dar una un buen diseño a la hoja
    return Scaffold(
      //appBar nos crea el head que construimos en la hoja constants
      appBar: myAppBar,
      //le damos el color definimos en la hoja constants
      backgroundColor: Colors.green[400],
      //Colocamos el menu que construimos en la hoja de constats
      drawer: mydrawer,
      // creamos una columna
      body: Column(
        //children nos ayuda a contener varios Widgets
        children: [
          // AspectRatio nos ayuda a que ancho debe ser dos veces más grande que la altura
          AspectRatio(
            aspectRatio: 3,
            //se define como un cuadro con un tamaño
            child: SizedBox(
              width: double.infinity,
              // mostramos las imagenes en una lista las cuales estan en la hoja MyBox
              child: ListView.builder(
                    itemCount: 1,
                    itemBuilder: (context, index) {
                      return const MyBox();
                    }),
            ),
          ),
          //Mostramos la lista que construimos en constants
          Expanded(
              child: lista
          ),
        ],
      ),
    );
  }
}
