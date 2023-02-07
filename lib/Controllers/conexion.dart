class calif {
  final String nomalumno;
  final String nomgrupo;
  final String asignatura;
  final String momento;
  final String calificacion;
  final String calificacion_base;
  final String asistencia;
  calif({
    required this.nomalumno,
    required this.nomgrupo,
    required this.asignatura,
    required this.momento,
    required this.calificacion,
    required this.calificacion_base,
    required this.asistencia,
  });

  factory calif.fromJson(Map<String, dynamic> json) {
    return calif(
        nomalumno: json["nomalumno"],
        nomgrupo: json["nomgrupo"],
        asignatura: json["asignatura"],
        momento: json["momento"],
        calificacion: json["calificacion"],
        calificacion_base: json["calificacion_base"],
        asistencia: json["asistencia"]);
  }
}
