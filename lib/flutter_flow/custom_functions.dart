import 'dart:convert';
import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:timeago/timeago.dart' as timeago;
import 'lat_lng.dart';
import 'place.dart';
import '../backend/backend.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import '../../auth/auth_util.dart';

List<DateTime> diasDaSemana(DateTime? dataSelecionada) {
  if (dataSelecionada == null) {
    return [];
  }
  final List<DateTime> days = [];
  for (int i = -3; i <= 3; i++) {
    days.add(dataSelecionada.add(Duration(days: i)));
  }
  return days;
}

dynamic detalhesData(DateTime dataSelecionada) {
  var weekdays = ['', 'SEG', 'TER', 'QUA', 'QUI', 'SEX', 'SAB', 'DOM'];
  var months = [
    '',
    'Janeiro',
    'Fevereiro',
    'Março',
    'Abril',
    'Maio',
    'Junho',
    'Julho',
    'Agosto',
    'Setembro',
    'Outubto',
    'Novembro',
    'Dezembro'
  ];
  return {
    'dianumero': dataSelecionada.day.toInt(),
    'diasemana': weekdays[dataSelecionada.weekday],
    'mes': months[dataSelecionada.month]
  };
}

String? retornarDiaDaSemana(DateTime data) {
  switch (data.weekday) {
    case DateTime.monday:
      return 'SEGUNDA';

    case DateTime.tuesday:
      return 'TERÇA';

    case DateTime.wednesday:
      return 'QUARTA';

    case DateTime.thursday:
      return 'QUINTA';

    case DateTime.friday:
      return 'SEXTA';

    case DateTime.saturday:
      return 'SÁBADO';

    default:
      return 'DOMINGO';
  }
}
