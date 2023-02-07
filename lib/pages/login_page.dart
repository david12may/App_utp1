import 'package:app_utp1/pages/register_pages.dart';
import 'package:app_utp1/pages/index.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

import 'dart:async';

class LoginPage extends StatefulWidget {
  LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final username = TextEditingController();
  final password = TextEditingController();

  String use = "";
  String pass = "";

  void ingresar(use, pass) async {
    try {
      var url = 'http://192.168.1.66/login.php';
      var response = await http.post(Uri.parse(url), body: {
        'username': use,
        'password': pass,
      }).timeout(const Duration(seconds: 90));

      if (response.body == 'true') {
        // ignore: use_build_context_synchronously
        Navigator.pushNamed(
          context,
          '/navigator',
        );
        // ignore: use_build_context_synchronously
        FocusScope.of(context).unfocus();
        print('Response body: ${response.body}');
      } else {
        print("Usuario incorrecto");
        print('Response body: ${response.body}');
      }
    } on TimeoutException catch (e) {
      print('Se agotó el tiempo de conexión');
    } on Error catch (e) {
      print('Http error');
    }
  }

  bool _loading = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      children: <Widget>[
        Container(
          width: double.infinity,
          padding: EdgeInsets.symmetric(vertical: 20),
          decoration: BoxDecoration(
            color: Color.fromARGB(255, 160, 189, 252),
          ),
          child: CircleAvatar(
            child: ClipOval(
              child: Image.asset('assets/utp1.jpg'),
            ),
            radius: 100,
            backgroundColor: Colors.white,
          ),
        ),
        Transform.translate(
          offset: Offset(0, -40),
          child: Center(
            child: SingleChildScrollView(
              child: Card(
                elevation: 2,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20)),
                margin: const EdgeInsets.only(
                    left: 20, right: 20, top: 260, bottom: 20),
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 35, vertical: 20),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      TextField(
                        controller: username,
                        decoration: InputDecoration(labelText: "Usuario:"),
                      ),
                      SizedBox(
                        height: 40,
                      ),
                      TextField(
                        controller: password,
                        decoration: InputDecoration(labelText: "Contraseña:"),
                        obscureText: true,
                      ),
                      SizedBox(
                        height: 40,
                      ),
                      RaisedButton(
                        color: Color.fromARGB(255, 160, 189, 252),
                        padding: const EdgeInsets.symmetric(vertical: 15),
                        textColor: Colors.white,
                        onPressed: () => _login(context),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Text("Iniciar Sesión"),
                            if (_loading == true)
                              Container(
                                height: 20,
                                width: 20,
                                margin: const EdgeInsets.only(left: 20),
                                child: CircularProgressIndicator(),
                              ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Text("¿No estas registrado?"),
                          FlatButton(
                            textColor: Theme.of(context).primaryColor,
                            child: Text("Registrarse"),
                            onPressed: () {
                              _showRegister(context);
                            },
                          )
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
      ],
    ));
  }

  void _login(BuildContext context) {
    if (!_loading) {
      setState(() {
        _loading = true;
      });
    }

    use = username.text;
    pass = password.text;

    if (use != '' && pass != '') {
      ingresar(use, pass);
    } else {
      showDialog(
          context: context,
          builder: (BuildContext) {
            return AlertDialog(
              title: Text("Usuario o contraseña incorrecto"),
              content: SingleChildScrollView(
                  child: ListBody(
                children: [
                  Text("Porfavor Verifique sus datos"),
                ],
              )),
              actions: <Widget>[
                TextButton(
                  onPressed: () => Navigator.pop(context, 'Aceptar'),
                  child: const Text('Aceptar'),
                ),
              ],
            );
          });
    }
/*     Navigator.pushNamed(context, 'navigator',); */
  }

  void _showRegister(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => RegisterPage()),
    );
  }

  void _index(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => Index()),
    );
  }
}
