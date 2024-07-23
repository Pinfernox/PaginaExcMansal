import '/flutter_flow/flutter_flow_util.dart';
import 'galeria_widget.dart' show GaleriaWidget;
import 'package:flutter/material.dart';

class GaleriaModel extends FlutterFlowModel<GaleriaWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}
