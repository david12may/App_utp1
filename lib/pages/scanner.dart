import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_barcode_scanner/flutter_barcode_scanner.dart';
import 'package:url_launcher/url_launcher.dart';

//BUTTONWIDGET//

class ButtonWidget extends StatelessWidget {
  final String text;
  final VoidCallback onClicked;

  const ButtonWidget({
    required this.text,
    required this.onClicked,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) => ElevatedButton(
        child: Text(
          text,
          style: TextStyle(fontSize: 24),
        ),
        onPressed: onClicked,
      );
}

//FIN BUTTONWIDGET//

class Scanner extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _ScannerState();
}

class _ScannerState extends State<Scanner> {
  String qrCode = '';

  @override
  Widget build(BuildContext context) => Scaffold(
        backgroundColor: Color.fromARGB(255, 54, 201, 184),
        appBar: AppBar(
          centerTitle: true,
          backgroundColor: Color.fromARGB(255, 72, 91, 133),
          elevation: 0,
          title: const Text("Servicios"),
        ),
        body: Padding(
          padding: const EdgeInsets.all(0.0),
          child: ListView(
            scrollDirection: Axis.vertical,
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
                        "",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 35,
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
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Container(
                  width: double.infinity,
                  height: 190,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage('assets/educa.png'),
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
              ),
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Container(
                  height: 120,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: [
                      Container(
                        height: 120,
                        width: 110,
                        child: Column(
                          children: [
                            InkWell(
                              onTap: () {
                                launch(
                                    "https://www.facebook.com/messages/t/455437124532830");
                              },
                              child: Column(
                                children: [
                                  Container(
                                    height: 60,
                                    width: 100,
                                    decoration: BoxDecoration(
                                      color: Colors.white,
                                    ),
                                    child: Image.asset(
                                      'assets/calendario.png',
                                    ),
                                  ),
                                  GestureDetector(
                                    child: Container(
                                      width: 100,
                                      padding: const EdgeInsets.all(10),
                                      decoration: BoxDecoration(
                                        color: Color.fromARGB(255, 0, 162, 255),
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
                                                  text: "Citas\n".toUpperCase(),
                                                  style: Theme.of(context)
                                                      .textTheme
                                                      .button,
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
                        height: 120,
                        width: 120,
                        child: Column(
                          children: [
                            InkWell(
                              onTap: () {
                                launch(
                                    "https://2c57aa42-e6f1-48fe-a01c-17304cc08ee3.filesusr.com/ugd/19541a_2b78ed8c54034dfbb9445b1c6477abab.pdf");
                              },
                              child: Column(
                                children: [
                                  Container(
                                    height: 60,
                                    width: 115,
                                    child: Image.asset(
                                      'assets/reglas.png',
                                    ),
                                    decoration: BoxDecoration(
                                      color: Colors.white,
                                    ),
                                  ),
                                  GestureDetector(
                                    child: Container(
                                      width: 115,
                                      padding: const EdgeInsets.all(10),
                                      decoration: BoxDecoration(
                                        color: Color.fromARGB(255, 0, 162, 255),
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
                                                  text: "Reglamento\n"
                                                      .toUpperCase(),
                                                  style: Theme.of(context)
                                                      .textTheme
                                                      .button,
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
                        height: 120,
                        width: 110,
                        child: Column(
                          children: [
                            InkWell(
                              onTap: () {
                                launch(
                                    "https://www.facebook.com/messages/t/455437124532830");
                              },
                              child: Column(
                                children: [
                                  Container(
                                    height: 60,
                                    width: 100,
                                    child: Image.asset(
                                      'assets/tramite.png',
                                    ),
                                    decoration: BoxDecoration(
                                      color: Colors.white,
                                    ),
                                  ),
                                  GestureDetector(
                                    child: Container(
                                      width: 100,
                                      padding: const EdgeInsets.all(10),
                                      decoration: BoxDecoration(
                                        color: Color.fromARGB(255, 0, 162, 255),
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
                                                  text: "Tramites\n"
                                                      .toUpperCase(),
                                                  style: Theme.of(context)
                                                      .textTheme
                                                      .button,
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
              ),
              SizedBox(
                height: 0,
              ),
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Container(
                  height: 120,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: [
                      Container(
                        height: 120,
                        width: 110,
                        child: Column(
                          children: [
                            InkWell(
                              onTap: () {
                                scanQRCode();
                              },
                              child: Column(
                                children: [
                                  Container(
                                    height: 60,
                                    width: 100,
                                    decoration: BoxDecoration(
                                      color: Colors.white,
                                    ),
                                    child: Image.asset(
                                      'assets/scan.png',
                                    ),
                                  ),
                                  GestureDetector(
                                    child: Container(
                                      width: 100,
                                      padding: const EdgeInsets.all(10),
                                      decoration: BoxDecoration(
                                        color: Color.fromARGB(255, 0, 162, 255),
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
                                                  text: "Scaner QR\n"
                                                      .toUpperCase(),
                                                  style: Theme.of(context)
                                                      .textTheme
                                                      .button,
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
                        height: 120,
                        width: 120,
                        child: Column(
                          children: [
                            InkWell(
                              onTap: () {
                                launch(
                                    "https://msirepve.sep.gob.mx/validacionelectronica/publico/startCedulaElectronica!startWizard.action");
                              },
                              child: Column(
                                children: [
                                  Container(
                                    height: 60,
                                    width: 115,
                                    child: Image.asset(
                                      'assets/cedu.png',
                                    ),
                                    decoration: BoxDecoration(
                                      color: Colors.white,
                                    ),
                                  ),
                                  GestureDetector(
                                    child: Container(
                                      width: 115,
                                      padding: const EdgeInsets.all(10),
                                      decoration: BoxDecoration(
                                        color: Color.fromARGB(255, 0, 162, 255),
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
                                                  text: "Cedula Pro.\n"
                                                      .toUpperCase(),
                                                  style: Theme.of(context)
                                                      .textTheme
                                                      .button,
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
                        height: 120,
                        width: 110,
                        child: Column(
                          children: [
                            InkWell(
                              onTap: () {
                                launch(
                                    "http://www.utponiente.edu.mx/utp/index.php");
                              },
                              child: Column(
                                children: [
                                  Container(
                                    height: 60,
                                    width: 100,
                                    child: Image.asset(
                                      'assets/web.png',
                                    ),
                                    decoration: BoxDecoration(
                                      color: Colors.white,
                                    ),
                                  ),
                                  GestureDetector(
                                    child: Container(
                                      width: 100,
                                      padding: const EdgeInsets.all(10),
                                      decoration: BoxDecoration(
                                        color: Color.fromARGB(255, 0, 162, 255),
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
                                                  text: "Pag. Web\n"
                                                      .toUpperCase(),
                                                  style: Theme.of(context)
                                                      .textTheme
                                                      .button,
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
              ),
              SizedBox(
                height: 20,
              ),
            ],
          ),
        ),
      );

  Future<void> scanQRCode() async {
    try {
      final qrCode = await FlutterBarcodeScanner.scanBarcode(
        '#ff6666',
        'Cancel',
        true,
        ScanMode.QR,
      );

      if (!mounted) return;

      setState(() {
        this.qrCode = qrCode;
      });
    } on PlatformException {
      qrCode = 'Failed to get platform version.';
    }
  }
}
