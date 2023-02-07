import 'package:flutter/material.dart';

import 'calificacion.dart';

class fcali extends StatefulWidget {
  fcali({Key? key}) : super(key: key);

  @override
  State<fcali> createState() => _fcaliState();
}

class _fcaliState extends State<fcali> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    TextEditingController alumno = TextEditingController(text: "");
    TextEditingController grupo = TextEditingController(text: "");

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          backgroundColor: Color.fromARGB(255, 31, 31, 31),
          appBar: AppBar(
            centerTitle: true,
            backgroundColor: Color.fromARGB(255, 2, 18, 53),
            elevation: 0,
            title: Text('Calificaciones'),
          ),
          body: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Container(
              padding: const EdgeInsets.all(25),
              height: 240,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(10),
                  topRight: Radius.circular(10),
                  bottomLeft: Radius.circular(10),
                  bottomRight: Radius.circular(10),
                ),
                boxShadow: [
                  BoxShadow(
                    offset: const Offset(0, 10),
                    blurRadius: 50,
                    color: Colors.transparent,
                  ),
                ],
              ),
              child: Column(
                children: [
                  Container(
                      child: TextField(
                    controller: alumno,
                    decoration: InputDecoration(labelText: "Parcial:"),
                  )),
                  TextField(
                    controller: grupo,
                    decoration: InputDecoration(labelText: "Cuatrimestre:"),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  ElevatedButton(
                      onPressed: () {
                        String id = alumno.text;
                        String gru = grupo.text;
                        Navigator.of(context)
                            .push(MaterialPageRoute<Null>(builder: (context) {
                          return new conexionHTTP(id, gru);
                        }));
                      },
                      child: Text("Consultar"))
                ],
              ),
            ),
          )),
    );
  }
}
