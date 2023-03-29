import '/backend/backend.dart';
import '/components/dias_semana_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/custom_functions.dart' as functions;
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class AgendaProModel extends FlutterFlowModel {
  ///  State fields for stateful widgets in this page.

  // Model for DiasSemana component.
  late DiasSemanaModel diasSemanaModel;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    diasSemanaModel = createModel(context, () => DiasSemanaModel());
  }

  void dispose() {
    diasSemanaModel.dispose();
  }

  /// Additional helper methods are added here.

}
