import 'package:app_utp1/Camera/camera_page.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

import '../info-eneventos/deportes.dart';
import '../info-eneventos/even-paseo.dart';
import '../info-eneventos/eventos.dart';
import '../infor-precios/examen.dart';
import '../infor-precios/licenciatura.dart';
import '../infor-precios/registro.dart';
import '../infor-precios/tsu.dart';
import 'login_page.dart';

class Inicio extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 54, 201, 184),
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Color.fromARGB(255, 72, 91, 133),
        elevation: 0,
        leading: IconButton(
          icon: Icon(Icons.person),
          onPressed: () {
            _login(context);
          },
        ),
        title: Text('Universidad del poniente'),
      ),
      body: SafeArea(
        child: Container(
          padding: EdgeInsets.all(20.0),
          child: ListView(
            children: <Widget>[
              Container(
                width: double.infinity,
                height: 180,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage('assets/utp.jpg'),
                        fit: BoxFit.cover)),
                child: Container(
                  decoration: BoxDecoration(
                      gradient:
                          LinearGradient(begin: Alignment.bottomRight, colors: [
                    Colors.black.withOpacity(.4),
                    Colors.black.withOpacity(.2),
                  ])),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: <Widget>[
                      Text(
                        "UTP",
                        style: TextStyle(
                            color: Color.fromARGB(255, 137, 133, 133),
                            fontSize: 45,
                            fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      SizedBox(
                        height: 30,
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                height: 50,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    Container(
                      height: 50,
                      margin: EdgeInsets.symmetric(horizontal: 10),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.transparent),
                      child: Center(
                          child: Text(
                        "Autoridades Educativas",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 25,
                            fontWeight: FontWeight.w700),
                      )),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                height: 260,
                width: double.infinity,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    Container(
                      height: 90,
                      width: 160,
                      child: Column(
                        children: [
                          InkWell(
                            child: Column(
                              children: [
                                Container(
                                  height: 190,
                                  width: 150,
                                  child: Image.asset(
                                    'assets/uni.jpeg',
                                    fit: BoxFit.cover,
                                  ),
                                ),
                                GestureDetector(
                                  child: Container(
                                    width: 150,
                                    padding: const EdgeInsets.all(9),
                                    decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: const BorderRadius.only(
                                        bottomLeft: Radius.circular(40),
                                        bottomRight: Radius.circular(40),
                                      ),
                                      boxShadow: [
                                        BoxShadow(
                                          offset: const Offset(0, 10),
                                          blurRadius: 50,
                                          color: Colors.transparent,
                                        ),
                                      ],
                                    ),
                                    child: Row(
                                      children: [
                                        RichText(
                                          text: TextSpan(
                                            children: [
                                              TextSpan(
                                                text: "Lic. Jorge Ivan\n"
                                                    .toUpperCase(),
                                                style: Theme.of(context)
                                                    .textTheme
                                                    .button,
                                              ),
                                              TextSpan(
                                                text: "Pacheco perera\n"
                                                    .toUpperCase(),
                                                style: Theme.of(context)
                                                    .textTheme
                                                    .button,
                                              ),
                                              TextSpan(
                                                text:
                                                    "vinculacion".toUpperCase(),
                                                style: TextStyle(
                                                  color: Colors.black,
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      height: 90,
                      width: 170,
                      child: Column(
                        children: [
                          InkWell(
                            child: Column(
                              children: [
                                Container(
                                  height: 190,
                                  width: 160,
                                  child: Image.asset(
                                    'assets/rector2.JPG',
                                    fit: BoxFit.cover,
                                  ),
                                ),
                                GestureDetector(
                                  child: Container(
                                    width: 160,
                                    padding: const EdgeInsets.all(10),
                                    decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: const BorderRadius.only(
                                        bottomLeft: Radius.circular(40),
                                        bottomRight: Radius.circular(40),
                                      ),
                                      boxShadow: [
                                        BoxShadow(
                                          offset: const Offset(0, 10),
                                          blurRadius: 50,
                                          color: Colors.transparent,
                                        ),
                                      ],
                                    ),
                                    child: Row(
                                      children: [
                                        RichText(
                                          text: TextSpan(
                                            children: [
                                              TextSpan(
                                                text: "Dr. Manuel \n"
                                                    .toUpperCase(),
                                                style: Theme.of(context)
                                                    .textTheme
                                                    .button,
                                              ),
                                              TextSpan(
                                                text: "Alejandro Kantún\n"
                                                    .toUpperCase(),
                                                style: Theme.of(context)
                                                    .textTheme
                                                    .button,
                                              ),
                                              TextSpan(
                                                text: "Dir. de Carreras"
                                                    .toUpperCase(),
                                                style: TextStyle(
                                                  color: Colors.black,
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      height: 90,
                      width: 170,
                      child: Column(
                        children: [
                          InkWell(
                            child: Column(
                              children: [
                                Container(
                                  height: 190,
                                  width: 160,
                                  child: Image.asset(
                                    'assets/rector3.JPG',
                                    fit: BoxFit.cover,
                                  ),
                                ),
                                GestureDetector(
                                  child: Container(
                                    width: 160,
                                    padding: const EdgeInsets.all(10),
                                    decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: const BorderRadius.only(
                                        bottomLeft: Radius.circular(40),
                                        bottomRight: Radius.circular(40),
                                      ),
                                      boxShadow: [
                                        BoxShadow(
                                          offset: const Offset(0, 10),
                                          blurRadius: 50,
                                          color: Colors.transparent,
                                        ),
                                      ],
                                    ),
                                    child: Row(
                                      children: [
                                        RichText(
                                          text: TextSpan(
                                            children: [
                                              TextSpan(
                                                text: "Lic. Sergio Alberto\n"
                                                    .toUpperCase(),
                                                style: Theme.of(context)
                                                    .textTheme
                                                    .button,
                                              ),
                                              TextSpan(
                                                text: "Valencia Guillén\n"
                                                    .toUpperCase(),
                                                style: Theme.of(context)
                                                    .textTheme
                                                    .button,
                                              ),
                                              TextSpan(
                                                text: "Dir. Administración"
                                                    .toUpperCase(),
                                                style: TextStyle(
                                                  color: Colors.black,
                                                  fontSize: 13,
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      height: 90,
                      width: 170,
                      child: Column(
                        children: [
                          InkWell(
                            child: Column(
                              children: [
                                Container(
                                  height: 190,
                                  width: 160,
                                  child: Image.asset(
                                    'assets/rector4.JPG',
                                    fit: BoxFit.cover,
                                  ),
                                ),
                                GestureDetector(
                                  child: Container(
                                    width: 160,
                                    padding: const EdgeInsets.all(10),
                                    decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: const BorderRadius.only(
                                        bottomLeft: Radius.circular(40),
                                        bottomRight: Radius.circular(40),
                                      ),
                                      boxShadow: [
                                        BoxShadow(
                                          offset: const Offset(0, 10),
                                          blurRadius: 50,
                                          color: Colors.transparent,
                                        ),
                                      ],
                                    ),
                                    child: Row(
                                      children: [
                                        RichText(
                                          text: TextSpan(
                                            children: [
                                              TextSpan(
                                                text: "Lic. Luis Antonio\n"
                                                    .toUpperCase(),
                                                style: Theme.of(context)
                                                    .textTheme
                                                    .button,
                                              ),
                                              TextSpan(
                                                text:
                                                    "Tut Xool\n".toUpperCase(),
                                                style: Theme.of(context)
                                                    .textTheme
                                                    .button,
                                              ),
                                              TextSpan(
                                                text: "Dir. de Vinculación"
                                                    .toUpperCase(),
                                                style: TextStyle(
                                                  color: Colors.black,
                                                  fontSize: 13,
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                width: double.infinity,
                height: 160,
                child: Column(
                  children: [
                    InkWell(
                      onTap: () {
                        launch(
                            "http://www.utponiente.edu.mx/utp/doctos/CALENDARIO%20ESCOLAR%20UTP%202022-2023_AUTORIZADO_FIRMAS.pdf");
                      },
                      child: Column(
                        children: [
                          Container(
                            width: double.infinity,
                            height: 160,
                            decoration: BoxDecoration(
                                image: DecorationImage(
                                    image: AssetImage('assets/cale.png'),
                                    fit: BoxFit.cover)),
                            child: Container(
                              decoration: BoxDecoration(
                                  gradient: LinearGradient(
                                      begin: Alignment.bottomRight,
                                      colors: [
                                    Colors.black.withOpacity(.4),
                                    Colors.black.withOpacity(.2),
                                  ])),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                height: 50,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    Container(
                      height: 50,
                      margin: EdgeInsets.symmetric(horizontal: 10),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.transparent),
                      child: Center(
                          child: Text(
                        "Eventos",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 25,
                            fontWeight: FontWeight.w700),
                      )),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                  ],
                ),
              ),
              Container(
                height: 160,
                width: double.infinity,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    Container(
                      height: 200,
                      width: 230,
                      child: Column(
                        children: [
                          InkWell(
                            onTap: () {
                              _altar(context);
                            },
                            child: Column(
                              children: [
                                Container(
                                  height: 90,
                                  width: 220,
                                  child: Image.asset(
                                    'assets/muertos.jpg',
                                    fit: BoxFit.cover,
                                  ),
                                ),
                                GestureDetector(
                                  child: Container( 
                                    width: 220,
                                    padding: const EdgeInsets.all(9),
                                    decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: const BorderRadius.only(
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
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        Text(
                                          "CONCURSO DE ALTARES",
                                          style: Theme.of(context)
                                              .textTheme
                                              .button,
                                        ),
                                        Text(
                                          "VER MAS",
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      height: 200,
                      width: 230,
                      child: Column(
                        children: [
                          InkWell(
                            onTap: () {
                              _paseo(context);
                            },
                            child: Column(
                              children: [
                                Container(
                                  height: 90,
                                  width: 220,
                                  child: Image.asset(
                                    'assets/IMG-3.jpg',
                                    fit: BoxFit.cover,
                                  ),
                                ),
                                GestureDetector(
                                  child: Container(
                                    width: 220,
                                    padding: const EdgeInsets.all(9),
                                    decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: const BorderRadius.only(
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
                                    child: Row(
                                      verticalDirection: VerticalDirection.down,
                                      children: [
                                        RichText(
                                          text: TextSpan(
                                            children: [
                                              TextSpan(
                                                text: "Paseo de las animas\n"
                                                    .toUpperCase(),
                                                style: Theme.of(context)
                                                    .textTheme
                                                    .button,
                                              ),
                                              TextSpan(
                                                text: "Ver mas".toUpperCase(),
                                                style: TextStyle(
                                                  color: Colors.black,
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      height: 200,
                      width: 230,
                      child: Column(
                        children: [
                          InkWell(
                            onTap: () {
                              _deportes(context);
                            },
                            child: Column(
                              children: [
                                Container(
                                  height: 90,
                                  width: 220,
                                  child: Image.asset(
                                    'assets/deportes.jpg',
                                    fit: BoxFit.cover,
                                  ),
                                ),
                                GestureDetector(
                                  child: Container(
                                    width: 220,
                                    padding: const EdgeInsets.all(9),
                                    decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: const BorderRadius.only(
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
                                    child: Row(
                                      children: [
                                        RichText(
                                          text: TextSpan(
                                            children: [
                                              TextSpan(
                                                text: "Deportes escolares\n"
                                                    .toUpperCase(),
                                                style: Theme.of(context)
                                                    .textTheme
                                                    .button,
                                              ),
                                              TextSpan(
                                                text: "Ver mas".toUpperCase(),
                                                style: TextStyle(
                                                  color: Colors.black,
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                width: double.infinity,
                height: 190,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage('assets/educa.png'),
                        fit: BoxFit.cover)),
                child: Container(
                  decoration: BoxDecoration(
                      gradient:
                          LinearGradient(begin: Alignment.bottomRight, colors: [
                    Colors.black.withOpacity(.4),
                    Colors.black.withOpacity(.2),
                  ])),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                height: 50,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    Container(
                      height: 50,
                      margin: EdgeInsets.symmetric(horizontal: 10),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.transparent),
                      child: Center(
                          child: Text(
                        "Costo educativo",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 25,
                            fontWeight: FontWeight.w700),
                      )),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                  ],
                ),
              ),
              Container(
                height: 160,
                width: double.infinity,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    Container(
                      height: 90,
                      width: 230,
                      child: Column(
                        children: [
                          InkWell(
                            onTap: () {
                              _examen(context);
                            },
                            child: Column(
                              children: [
                                Container(
                                  height: 90,
                                  width: 220,
                                  child: Image.asset(
                                    'assets/exa.png',
                                    fit: BoxFit.cover,
                                  ),
                                ),
                                GestureDetector(
                                  child: Container(
                                    width: 220,
                                    padding: const EdgeInsets.all(10),
                                    decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: const BorderRadius.only(
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
                                    child: Row(
                                      children: [
                                        RichText(
                                          text: TextSpan(
                                            children: [
                                              TextSpan(
                                                text: "Registro EXANI\n"
                                                    .toUpperCase(),
                                                style: Theme.of(context)
                                                    .textTheme
                                                    .button,
                                              ),
                                              TextSpan(
                                                text: "II\n".toUpperCase(),
                                                style: Theme.of(context)
                                                    .textTheme
                                                    .button,
                                              ),
                                              TextSpan(
                                                text: "Pago por examen"
                                                    .toUpperCase(),
                                                style: TextStyle(
                                                  color: Colors.black,
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                        const Spacer(),
                                        Text(
                                          "\$350",
                                          style: Theme.of(context)
                                              .textTheme
                                              .button
                                              ?.copyWith(color: Colors.black),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      height: 90,
                      width: 230,
                      child: Column(
                        children: [
                          InkWell(
                            onTap: () {
                              _tsu(context);
                            },
                            child: Column(
                              children: [
                                Container(
                                  height: 90,
                                  width: 220,
                                  child: Image.asset(
                                    'assets/tsu.png',
                                    fit: BoxFit.cover,
                                  ),
                                ),
                                GestureDetector(
                                  child: Container(
                                    width: 220,
                                    padding: const EdgeInsets.all(10),
                                    decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: const BorderRadius.only(
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
                                    child: Row(
                                      children: [
                                        RichText(
                                          text: TextSpan(
                                            children: [
                                              TextSpan(
                                                text: "Técnico Superior\n"
                                                    .toUpperCase(),
                                                style: Theme.of(context)
                                                    .textTheme
                                                    .button,
                                              ),
                                              TextSpan(
                                                text: "Univeritario\n"
                                                    .toUpperCase(),
                                                style: Theme.of(context)
                                                    .textTheme
                                                    .button,
                                              ),
                                              TextSpan(
                                                text: "TSU".toUpperCase(),
                                                style: TextStyle(
                                                  color: Colors.black,
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                        const Spacer(),
                                        Text(
                                          "\$300",
                                          style: Theme.of(context)
                                              .textTheme
                                              .button
                                              ?.copyWith(color: Colors.black),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      height: 90,
                      width: 230,
                      child: Column(
                        children: [
                          InkWell(
                            onTap: () {
                              _registro(context);
                            },
                            child: Column(
                              children: [
                                Container(
                                  height: 90,
                                  width: 220,
                                  child: Image.asset(
                                    'assets/registro.png',
                                    fit: BoxFit.cover,
                                  ),
                                ),
                                GestureDetector(
                                  child: Container(
                                    width: 220,
                                    padding: const EdgeInsets.all(10),
                                    decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: const BorderRadius.only(
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
                                    child: Row(
                                      children: [
                                        RichText(
                                          text: TextSpan(
                                            children: [
                                              TextSpan(
                                                text: "Registro nivel\n"
                                                    .toUpperCase(),
                                                style: Theme.of(context)
                                                    .textTheme
                                                    .button,
                                              ),
                                              TextSpan(
                                                text: "licenciatura\n"
                                                    .toUpperCase(),
                                                style: Theme.of(context)
                                                    .textTheme
                                                    .button,
                                              ),
                                              TextSpan(
                                                text:
                                                    "Pago unico".toUpperCase(),
                                                style: TextStyle(
                                                  color: Colors.black,
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                        const Spacer(),
                                        Text(
                                          "\$350",
                                          style: Theme.of(context)
                                              .textTheme
                                              .button
                                              ?.copyWith(color: Colors.black),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      height: 90,
                      width: 230,
                      child: Column(
                        children: [
                          InkWell(
                            onTap: () {
                              _licenciatura(context);
                            },
                            child: Column(
                              children: [
                                Container(
                                  height: 90,
                                  width: 220,
                                  child: Image.asset(
                                    'assets/lin.jpg',
                                    fit: BoxFit.cover,
                                  ),
                                ),
                                GestureDetector(
                                  child: Container(
                                    width: 220,
                                    padding: const EdgeInsets.all(10),
                                    decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: const BorderRadius.only(
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
                                    child: Row(
                                      children: [
                                        RichText(
                                          text: TextSpan(
                                            children: [
                                              TextSpan(
                                                text: "Nivel Licenciatura\n"
                                                    .toUpperCase(),
                                                style: Theme.of(context)
                                                    .textTheme
                                                    .button,
                                              ),
                                              TextSpan(
                                                text: "Licenciaturas"
                                                    .toUpperCase(),
                                                style: TextStyle(
                                                  color: Colors.black,
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                        const Spacer(),
                                        Text(
                                          "\$500",
                                          style: Theme.of(context)
                                              .textTheme
                                              .button
                                              ?.copyWith(color: Colors.black),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  void _showLogin(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => CameraPage()),
    );
  }

  void _incio(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => Inicio()),
    );
  }

  void _login(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => LoginPage()),
    );
  }

  void _altar(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => StarterPage()),
    );
  }

  void _paseo(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => StarterPage2()),
    );
  }

  void _deportes(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => StarterPage3()),
    );
  }

  void _examen(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => StarterPage4()),
    );
  }

  void _tsu(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => StarterPage5()),
    );
  }

  void _registro(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => StarterPage6()),
    );
  }

  void _licenciatura(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => StarterPage7()),
    );
  }
}
