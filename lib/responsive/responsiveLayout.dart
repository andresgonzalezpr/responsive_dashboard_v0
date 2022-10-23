/*
andres gonzales
SENA
ficha:2470980

*/
//Importamos framework flutter
import 'package:flutter/material.dart';
//Stateless es un Widget que nos da solo lectura
class ResponsiveLayout extends StatelessWidget {

  final Widget mobileScaffold;
  final Widget tabletScaffold;
  final Widget desktopScaffold;
  final Widget TvScaffold;

  const ResponsiveLayout({
    required this.mobileScaffold,
    required this.tabletScaffold,
    required this.desktopScaffold,
    required this.TvScaffold,
  });


  @override

  Widget build(BuildContext context) {
    //Lo que realizamos en este layout es que cuando una pantalla tiene ciertos pixeles nos muestra una hoja diferente
    return LayoutBuilder(
        builder: (context, constraints) {
          if (constraints.maxWidth < 500) {
            return mobileScaffold;
          } else if (constraints.maxWidth < 1100) {
            return tabletScaffold;
          }
          else if (constraints.maxWidth < 1920) {
            return desktopScaffold;
          } else {
            return TvScaffold;
          }
        }
    );
  }
}
