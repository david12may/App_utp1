import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class Conocenos extends StatefulWidget {
  const Conocenos({Key? key}) : super(key: key);
// route de mi navegation

  @override
  State<Conocenos> createState() => _ConocenosState();
}

class _ConocenosState extends State<Conocenos> {
  GoogleMapController? _controller;

  @override
  void dispose() {
    // TODO: implement dispose
    _controller?.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color.fromARGB(255, 31, 31, 31),
        appBar: AppBar(
          automaticallyImplyLeading: false,
          title: const Text('Ubicacion'),
          leading: IconButton(
            icon: const Icon(Icons.add),
            onPressed: () {
              final CameraPosition cameraPosition = const CameraPosition(
                target: LatLng(20.578716280720275, -90.00771737855695),
                zoom: 15.5,
              );
              _controller?.animateCamera(
                  CameraUpdate.newCameraPosition(cameraPosition));
            },
          ),
          backgroundColor: Color.fromARGB(255, 13, 36, 80),
        ),
        body: ListView(
          children: [
            Container(
              height: 180,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage('assets/utp.jpg'), fit: BoxFit.cover)),
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
                          fontSize: 35,
                          fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    Container(
                      height: 50,
                      margin: EdgeInsets.symmetric(horizontal: 40),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.white),
                      child: Center(
                          child: Text(
                        "Maxcanu",
                        style: TextStyle(
                            color: Colors.grey[900],
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
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Container(
                height: 500,
                child: GoogleMap(
                  onMapCreated: (controller) {
                    _controller = controller;
                  },
                  initialCameraPosition: const CameraPosition(
                    target: LatLng(37.42796133580664, -122.085749655962),
                    zoom: 10.0,
                  ),
                ),
              ),
            ),
            Container(
              height: 500,
              width: 300,
              child: Column(
                children: <Widget>[
                  Container(
                    height: 120,
                    width: 300,
                    decoration: BoxDecoration(
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
                    child: Image.asset(
                      'assets/utp.jpg',
                      fit: BoxFit.cover,
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.fromLTRB(20, 20, 20, 20),
                    child: Column(
                      children: [
                        Text(
                          'UTP',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 18,
                          ),
                        ),
                        Text(
                          'La Universidad Tecnológica del Poniente (UTP), con domicilio en la calle 29 sin número Colonia Tres Cruces, en Maxcanú, Maxcanú, Yucatán, C.P. 97800, es responsable del tratamiento de los datos personales que nos proporcione, los cuales serán protegidos conforme a lo dispuesto por la Ley General de Protección de Datos Personales en Posesión de Sujetos Obligados, y demás normatividad que resulte aplicable.',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 18,
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ],
        ));
  }
}
