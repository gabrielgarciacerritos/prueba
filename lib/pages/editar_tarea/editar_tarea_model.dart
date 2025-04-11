import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'editar_tarea_widget.dart' show EditarTareaWidget;
import 'package:flutter/material.dart';

class EditarTareaModel extends FlutterFlowModel<EditarTareaWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for txtTituloTareas widget.
  FocusNode? txtTituloTareasFocusNode;
  TextEditingController? txtTituloTareasTextController;
  String? Function(BuildContext, String?)?
      txtTituloTareasTextControllerValidator;
  // State field(s) for txtDescripcion widget.
  FocusNode? txtDescripcionFocusNode;
  TextEditingController? txtDescripcionTextController;
  String? Function(BuildContext, String?)?
      txtDescripcionTextControllerValidator;
  DateTime? datePicked;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    txtTituloTareasFocusNode?.dispose();
    txtTituloTareasTextController?.dispose();

    txtDescripcionFocusNode?.dispose();
    txtDescripcionTextController?.dispose();
  }
}
