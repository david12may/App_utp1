import 'package:flutter/material.dart';

import 'package:http/http.dart' as http;
import 'dart:async';
import 'dart:convert';

import 'package:app_utp1/pages/conexioncali.dart';

class conexionHTTP extends StatefulWidget {
  conexionHTTP({Key? key}) : super(key: key);

  @override
  State<conexionHTTP> createState() => _conexionHTTPState();
}

class _conexionHTTPState extends State<conexionHTTP> {
  List<calif> data = <calif>[];
  Future<List<calif>> tomar_datos() async {
    var url =
        "https://utpproyectos.com.mx/swcalificaciones/conn.php?idalumno=1007&idgrupo=324&momento=2";
    var response =
        await http.post(Uri.parse(url)).timeout(Duration(seconds: 90));
    var datos = json.decode(response.body);
    var registros = <calif>[];
    for (datos in datos) {
      registros.add(calif.fromJson(datos));
    }
    return registros;
  }

  @override
  void initState() {
    super.initState();
    tomar_datos().then((value) {
      setState(() {
        data.addAll(value);
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: ListView.builder(
          itemCount: data.length,
          itemBuilder: (context, index) {
            return Container(
              child: Card(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10)),
                margin: EdgeInsets.fromLTRB(15, 20, 15, 15),
                elevation: 4,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(5),
                  child: Column(
                    children: [
                      Container(
                          padding: EdgeInsets.all(10),
                          child: Text(
                            data[index].nomgrupo,
                            style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                color: Colors.cyan[800]),
                          )),
                      Text(
                        data[index].nomalumno,
                        style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Colors.cyan[800]),
                      ),
                      Text(data[index].asignatura),
                      Text('Parcial: ' + data[index].momento),
                      Text('Calificacion: ' + data[index].calificacion),
                      Text('Calificacion base 10: ' +
                          data[index].calificacion_base),
                      Text('Acistencia : ' + data[index].asistencia),
                    ],
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
