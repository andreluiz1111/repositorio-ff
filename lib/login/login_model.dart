import '/auth/auth_util.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class LoginModel extends FlutterFlowModel {
  ///  State fields for stateful widgets in this page.

  // State field(s) for EmailLogin widget.
  TextEditingController? emailLoginController;
  String? Function(BuildContext, String?)? emailLoginControllerValidator;
  // State field(s) for SenhaLogin widget.
  TextEditingController? senhaLoginController;
  late bool senhaLoginVisibility;
  String? Function(BuildContext, String?)? senhaLoginControllerValidator;
  // State field(s) for Nome widget.
  TextEditingController? nomeController;
  String? Function(BuildContext, String?)? nomeControllerValidator;
  // State field(s) for Email widget.
  TextEditingController? emailController;
  String? Function(BuildContext, String?)? emailControllerValidator;
  // State field(s) for cpf widget.
  TextEditingController? cpfController;
  String? Function(BuildContext, String?)? cpfControllerValidator;
  // State field(s) for Whatsapp widget.
  TextEditingController? whatsappController;
  String? Function(BuildContext, String?)? whatsappControllerValidator;
  // State field(s) for Nascimento widget.
  TextEditingController? nascimentoController;
  String? Function(BuildContext, String?)? nascimentoControllerValidator;
  // State field(s) for DropDown widget.
  String? dropDownValue;
  FormFieldController<String>? dropDownController;
  // State field(s) for Senha widget.
  TextEditingController? senhaController;
  late bool senhaVisibility;
  String? Function(BuildContext, String?)? senhaControllerValidator;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    senhaLoginVisibility = false;
    senhaVisibility = false;
  }

  void dispose() {
    emailLoginController?.dispose();
    senhaLoginController?.dispose();
    nomeController?.dispose();
    emailController?.dispose();
    cpfController?.dispose();
    whatsappController?.dispose();
    nascimentoController?.dispose();
    senhaController?.dispose();
  }

  /// Additional helper methods are added here.

}
