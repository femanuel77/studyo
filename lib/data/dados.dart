import 'dart:convert';
import 'package:flutter/services.dart';
import '../models/modelo.dart';

class DataService {
  Future<List<Materia>> loadData() async {
    final String response = await rootBundle.loadString('assets/materias.json');
    final List<dynamic> data = json.decode(response);
    return data.map((item) => Materia.fromJson(item)).toList();
  }
}