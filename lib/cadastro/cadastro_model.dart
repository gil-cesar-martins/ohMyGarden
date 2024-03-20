import '/flutter_flow/flutter_flow_util.dart';
import 'cadastro_widget.dart' show CadastroWidget;
import 'package:flutter/material.dart';

class CadastroModel extends FlutterFlowModel<CadastroWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for TabBar widget.
  TabController? tabBarController;
  int get tabBarCurrentIndex =>
      tabBarController != null ? tabBarController!.index : 0;

  // State field(s) for emailAddressLogin widget.
  FocusNode? emailAddressLoginFocusNode;
  TextEditingController? emailAddressLoginController;
  String? Function(BuildContext, String?)? emailAddressLoginControllerValidator;
  // State field(s) for passwordLogin widget.
  FocusNode? passwordLoginFocusNode;
  TextEditingController? passwordLoginController;
  late bool passwordLoginVisibility;
  String? Function(BuildContext, String?)? passwordLoginControllerValidator;
  // State field(s) for emailCadastro widget.
  FocusNode? emailCadastroFocusNode;
  TextEditingController? emailCadastroController;
  String? Function(BuildContext, String?)? emailCadastroControllerValidator;
  // State field(s) for senhaCadastro1 widget.
  FocusNode? senhaCadastro1FocusNode;
  TextEditingController? senhaCadastro1Controller;
  late bool senhaCadastro1Visibility;
  String? Function(BuildContext, String?)? senhaCadastro1ControllerValidator;
  // State field(s) for senhaCadastro2 widget.
  FocusNode? senhaCadastro2FocusNode;
  TextEditingController? senhaCadastro2Controller;
  late bool senhaCadastro2Visibility;
  String? Function(BuildContext, String?)? senhaCadastro2ControllerValidator;

  /// Initialization and disposal methods.

  @override
  void initState(BuildContext context) {
    passwordLoginVisibility = false;
    senhaCadastro1Visibility = false;
    senhaCadastro2Visibility = false;
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    tabBarController?.dispose();
    emailAddressLoginFocusNode?.dispose();
    emailAddressLoginController?.dispose();

    passwordLoginFocusNode?.dispose();
    passwordLoginController?.dispose();

    emailCadastroFocusNode?.dispose();
    emailCadastroController?.dispose();

    senhaCadastro1FocusNode?.dispose();
    senhaCadastro1Controller?.dispose();

    senhaCadastro2FocusNode?.dispose();
    senhaCadastro2Controller?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
