import '/flutter_flow/flutter_flow_util.dart';
import 'contacto_widget.dart' show ContactoWidget;
import 'package:flutter/material.dart';

class ContactoModel extends FlutterFlowModel<ContactoWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}
