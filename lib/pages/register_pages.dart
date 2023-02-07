import 'package:app_utp1/Authenticator.dart';
import 'package:app_utp1/pages/index.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:app_utp1/pages/login_page.dart';

import 'package:http/http.dart' as http;

class RegisterPage extends StatefulWidget {
  RegisterPage({Key? key}) : super(key: key);

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  final username = TextEditingController();
  final email = TextEditingController();
  final password = TextEditingController();
  final passwordve = TextEditingController();

  String use = "";
  String ema = "";
  String pass = "";

  void ingresar(use, ema, pass) async {
    try {
      var url = 'http://192.168.1.66/register.php';
      var response = await http.post(Uri.parse(url), body: {
        'username': use,
        'email': ema,
        'password': pass,
      }).timeout(const Duration(seconds: 90));

      if (response.statusCode == 200) {
        Navigator.pushNamed(
          context,
          '/navigator',
        );

        FocusScope.of(context).unfocus();
        print('Response body: ${response.body}');
      } else {
        print("Error por alguna reazón XD");
        print('Response body: ${response.body}');
      }
    } on Error catch (e) {
      print('Http error');
    }
  }

  bool _loading = false;
  @override
  Widget build(BuildContext context) {
    Firebase.initializeApp();
    return Scaffold(
        body: Stack(
      children: <Widget>[
        Container(
          width: double.infinity,
          padding: EdgeInsets.symmetric(vertical: 20),
          decoration: BoxDecoration(
            color: Color.fromARGB(255, 156, 184, 244),
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
                        height: 30,
                      ),
                      TextField(
                        controller: email,
                        decoration:
                            InputDecoration(labelText: "Correo Electrónico:"),
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      TextField(
                        controller: password,
                        decoration: InputDecoration(labelText: "Contraseña:"),
                        obscureText: true,
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      RaisedButton(
                        color: Color.fromARGB(255, 160, 185, 238),
                        padding: const EdgeInsets.symmetric(vertical: 15),
                        textColor: Colors.white,
                        onPressed: () => _Register(context),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Text("Registrarse"),
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
                          Text("¿Tienes una cuenta?"),
                          FlatButton(
                            textColor: Theme.of(context).primaryColor,
                            child: Text("Inicia sesión"),
                            onPressed: () {
                              _showLogin(context);
                            },
                          )
                        ],
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          FlatButton(
                            textColor: Theme.of(context).primaryColor,
                            child: Text("GOOGLE"),
                            onPressed: () async {
                              User? user = await Authenticator.iniciarsesion(
                                  context: context);
                              print(user?.displayName);
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => Index(),
                                  ));
                              setState(() => Index());
                            },
                          ),
                          FlatButton(
                            textColor: Theme.of(context).primaryColor,
                            child: Text("FACEBOOCK"),
                            onPressed: () {
                              _index(context);
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

  void _Register(BuildContext context) {
    if (!_loading) {
      setState(() {
        _loading = true;
      });
    }

    use = username.text;
    ema = email.text;
    pass = password.text;

    if (use != '' && ema != '' && pass != '') {
      ingresar(use, ema, pass);
    }
/*     Navigator.pushNamed(context, 'navigator',); */
  }

  void _showLogin(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => LoginPage()),
    );
  }

  void _index(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => Index()),
    );
  }
}
