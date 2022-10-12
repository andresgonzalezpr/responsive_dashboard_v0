import 'package:flutter/material.dart';

class Mytile extends StatelessWidget {
  const Mytile({Key? key}) : super(key: key);
static const int i=1;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(3.0),
      child: Container(

        color: Colors.brown,
        height: 80,
        child: const Center( child: Text('Eliga su producto$i',style: TextStyle(color: Colors.white, fontSize: 24))),
      ),
    );
  }
}
