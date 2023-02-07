import 'dart:html';

import 'package:app_utp1/Camera/camera_page.dart';
import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
      title: 'usando la camara',
      home: CameraPage(),
      theme: ThemeData(
        brightness: Brightness.dark,
        primaryColor: Colors.red,
        accentColor: Colors.blue,
      ),
    ));
