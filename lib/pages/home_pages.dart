import 'package:app_utp1/Camera/camera_page.dart';
import 'package:app_utp1/pages/llamadas.dart';
import 'package:app_utp1/pages/map.dart';
import 'package:app_utp1/pages/scanner.dart';
import 'package:app_utp1/pages/whatsap.dart';
import 'package:app_utp1/pages/youtube.dart';
import 'package:flutter/material.dart';

class Index extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 177, 177, 177),
      drawer: Container(
        width: MediaQuery.of(context).size.width * 0.5,
        child: Drawer(
          child: ListView(
            // Important: Remove any padding from the ListView.
            padding: EdgeInsets.zero,
            children: [
              const UserAccountsDrawerHeader(
                decoration:
                    BoxDecoration(color: Color.fromARGB(255, 0, 171, 238)),
                accountName: Text(
                  "User Name",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
                accountEmail: Text(
                  "user.name@gmail.com",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
                currentAccountPicture: CircleAvatar(
                  backgroundImage: AssetImage(
                    'assets/person.jpg',
                  ),
                ),
              ),
              ListTile(
                leading: Icon(
                  Icons.home,
                ),
                title: const Text('Inicio'),
                onTap: () {
                  _incio(context);
                },
              ),
              ListTile(
                leading: Icon(
                  Icons.people,
                ),
                title: const Text('Contacto'),
                onTap: () {
                  _whatsap(context);
                },
              ),
              ListTile(
                leading: Icon(
                  Icons.adf_scanner,
                ),
                title: const Text('Servicios'),
                onTap: () {
                  _Scanner(context);
                },
              ),
              ListTile(
                leading: Icon(
                  Icons.location_on,
                ),
                title: const Text('Ubicacion'),
                onTap: () {
                  _map(context);
                },
              ),
              ListTile(
                leading: Icon(
                  Icons.groups_sharp,
                ),
                title: const Text('Comunidad'),
                onTap: () {
                  _Youtube(context);
                },
              ),
              AboutListTile(
                // <-- SEE HERE
                icon: Icon(
                  Icons.info,
                ),
                child: Text('App Info.'),
                applicationIcon: Icon(
                  Icons.local_play,
                ),
                applicationName: 'UTP APP',
                applicationVersion: '1.0.25',
                applicationLegalese: '© 2022 Company',
                aboutBoxChildren: [
                  ///Content goes here...
                ],
              ),
            ],
          ),
        ),
      ),
      appBar: AppBar(
        backgroundColor: Colors.cyan,
        elevation: 0,
        title: Text(
          'Universidad del poniente',
          style: TextStyle(color: Colors.black),
        ),
      ),
      body: SafeArea(
        child: Container(
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
                            color: Colors.white,
                            fontSize: 50,
                            fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      Container(
                        height: 50,
                        margin: EdgeInsets.symmetric(horizontal: 80),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Color.fromARGB(101, 3, 192, 218)),
                        child: Center(
                            child: Text(
                          "Maxcanu",
                          style: TextStyle(
                              color: Colors.grey[900],
                              fontSize: 20,
                              fontWeight: FontWeight.bold),
                        )),
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
                              showDialog(
                                context: context,
                                builder: (context) => AlertDialog(
                                  contentPadding:
                                      const EdgeInsets.fromLTRB(0, 0, 0, 0),
                                  content: Container(
                                    height: 300,
                                    width: 150,
                                    child: ListView(
                                      children: <Widget>[
                                        Container(
                                          height: 120,
                                          width: 300,
                                          decoration: BoxDecoration(
                                            borderRadius:
                                                const BorderRadius.only(
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
                                          child: Image.asset(
                                            'assets/altar.jpeg',
                                            fit: BoxFit.cover,
                                          ),
                                        ),
                                        Container(
                                          padding: const EdgeInsets.fromLTRB(
                                              10, 10, 10, 10),
                                          child: Column(
                                            children: [
                                              Text(
                                                'Titulo',
                                                style: TextStyle(
                                                  fontSize: 18,
                                                ),
                                              ),
                                              Text(
                                                'Hola Hola Hola Hola Hola Hola Hola Hola Hola Hola Hola Hola Hola Hola Hola Hola Hola Hola Hola Hola',
                                                style: TextStyle(
                                                  fontSize: 18,
                                                ),
                                              ),
                                            ],
                                          ),
                                        )
                                      ],
                                    ),
                                  ),
                                ),
                              );
                            },
                            child: Column(
                              children: [
                                Container(
                                  height: 90,
                                  width: 220,
                                  child: Image.asset(
                                    'assets/altar.jpeg',
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
                              showDialog(
                                context: context,
                                builder: (context) => AlertDialog(
                                  contentPadding:
                                      const EdgeInsets.fromLTRB(0, 0, 0, 0),
                                  content: Container(
                                    height: 300,
                                    width: 150,
                                    child: ListView(
                                      children: <Widget>[
                                        Container(
                                          height: 120,
                                          width: 300,
                                          child: Image.asset(
                                            'assets/IMG-3.jpg',
                                            fit: BoxFit.cover,
                                          ),
                                        ),
                                        Container(
                                          padding: const EdgeInsets.fromLTRB(
                                              10, 10, 10, 10),
                                          child: Column(
                                            children: [
                                              Text(
                                                'Titulo 2',
                                                style: TextStyle(
                                                  fontSize: 18,
                                                ),
                                              ),
                                              Text(
                                                'Hola Hola Hola Hola Hola Hola Hola Hola Hola Hola Hola Hola Hola Hola Hola Hola Hola Hola Hola Hola',
                                                style: TextStyle(
                                                  fontSize: 18,
                                                ),
                                              ),
                                            ],
                                          ),
                                        )
                                      ],
                                    ),
                                  ),
                                ),
                              );
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
                              showDialog(
                                context: context,
                                builder: (context) => AlertDialog(
                                  contentPadding:
                                      const EdgeInsets.fromLTRB(0, 0, 0, 0),
                                  content: Container(
                                    height: 300,
                                    width: 150,
                                    child: ListView(
                                      children: <Widget>[
                                        Container(
                                          height: 120,
                                          width: 300,
                                          child: Image.asset(
                                            'assets/deporte.jpg',
                                            fit: BoxFit.cover,
                                          ),
                                        ),
                                        Container(
                                          alignment: Alignment.topRight,
                                          padding: const EdgeInsets.fromLTRB(
                                              10, 10, 10, 10),
                                          child: Column(
                                            children: [
                                              Text(
                                                'Titulo 3',
                                                style: TextStyle(
                                                  fontSize: 18,
                                                ),
                                              ),
                                              Text(
                                                'Hola Hola Hola Hola Hola Hola Hola Hola Hola Hola Hola Hola Hola Hola Hola Hola Hola Hola Hola Hola',
                                                style: TextStyle(
                                                  fontSize: 18,
                                                ),
                                              ),
                                            ],
                                          ),
                                        )
                                      ],
                                    ),
                                  ),
                                ),
                              );
                            },
                            child: Column(
                              children: [
                                Container(
                                  height: 90,
                                  width: 220,
                                  child: Image.asset(
                                    'assets/deporte.jpg',
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
              Container(
                height: 50,
                child: Column(
                  children: [
                    ListView(
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
                            "Precios",
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
                              showDialog(
                                context: context,
                                builder: (context) => AlertDialog(
                                  contentPadding:
                                      const EdgeInsets.fromLTRB(0, 0, 0, 0),
                                  content: Container(
                                    height: 300,
                                    width: 150,
                                    child: ListView(
                                      children: <Widget>[
                                        Container(
                                          height: 120,
                                          width: 300,
                                          child: Image.asset(
                                            'assets/tsu.png',
                                            fit: BoxFit.cover,
                                          ),
                                        ),
                                        Container(
                                          alignment: Alignment.topRight,
                                          padding: const EdgeInsets.fromLTRB(
                                              10, 10, 10, 10),
                                          child: Column(
                                            children: [
                                              Row(
                                                children: [
                                                  Text(
                                                    'TIC',
                                                    style: TextStyle(
                                                      fontSize: 18,
                                                    ),
                                                  ),
                                                  Text(
                                                    '\$300',
                                                    style: TextStyle(
                                                      fontSize: 18,
                                                    ),
                                                  ),
                                                ],
                                              ),
                                              Row(
                                                children: [
                                                  Text(
                                                    'Turismo',
                                                    style: TextStyle(
                                                      fontSize: 18,
                                                    ),
                                                  ),
                                                  Text(
                                                    '\300',
                                                    style: TextStyle(
                                                      fontSize: 18,
                                                    ),
                                                  ),
                                                ],
                                              ),
                                              Row(
                                                children: [
                                                  Text(
                                                    'Gastornomia',
                                                    style: TextStyle(
                                                      fontSize: 18,
                                                    ),
                                                  ),
                                                  Text(
                                                    '\$300',
                                                    style: TextStyle(
                                                      fontSize: 18,
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ],
                                          ),
                                        )
                                      ],
                                    ),
                                  ),
                                ),
                              );
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
                                                text: "Carrera Tecnica\n"
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
                                          text: "Nilvel Licencitura\n"
                                              .toUpperCase(),
                                          style: Theme.of(context)
                                              .textTheme
                                              .button,
                                        ),
                                        TextSpan(
                                          text: "Licenciatura".toUpperCase(),
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
                    Container(
                      margin: const EdgeInsets.only(
                        left: 10,
                        top: 0,
                        bottom: 0,
                      ),
                      width: 200,
                      child: Column(
                        children: [
                          Image.asset('assets/utp.jpg'),
                          GestureDetector(
                            child: Container(
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
                                          text: "title\n".toUpperCase(),
                                          style: Theme.of(context)
                                              .textTheme
                                              .button,
                                        ),
                                        TextSpan(
                                          text: "country".toUpperCase(),
                                          style: TextStyle(
                                            color: Colors.black,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  const Spacer(),
                                  Text(
                                    "\$price",
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
      MaterialPageRoute(builder: (context) => Index()),
    );
  }

  void _llamada(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => Llamadas_api()),
    );
  }

  void _map(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => Conocenos()),
    );
  }

  void _Youtube(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => MainScreen()),
    );
  }

  void _Scanner(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => Scanner()),
    );
  }

  void _whatsap(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => TeachersPage()),
    );
  }

  void _Gmail(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => TeachersPage()),
    );
  }
}
