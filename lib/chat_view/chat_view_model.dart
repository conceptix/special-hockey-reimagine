import '/components/chat_user_widget.dart';
import '/components/main_drawer_widget.dart';
import '/components/nav_widget.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'chat_view_widget.dart' show ChatViewWidget;
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class ChatViewModel extends FlutterFlowModel<ChatViewWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Model for chatUser component.
  late ChatUserModel chatUserModel1;
  // Model for chatUser component.
  late ChatUserModel chatUserModel2;
  // Model for chatUser component.
  late ChatUserModel chatUserModel3;
  // Model for chatUser component.
  late ChatUserModel chatUserModel4;
  // Model for Nav component.
  late NavModel navModel;
  // Model for MainDrawer component.
  late MainDrawerModel mainDrawerModel;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    chatUserModel1 = createModel(context, () => ChatUserModel());
    chatUserModel2 = createModel(context, () => ChatUserModel());
    chatUserModel3 = createModel(context, () => ChatUserModel());
    chatUserModel4 = createModel(context, () => ChatUserModel());
    navModel = createModel(context, () => NavModel());
    mainDrawerModel = createModel(context, () => MainDrawerModel());
  }

  void dispose() {
    unfocusNode.dispose();
    chatUserModel1.dispose();
    chatUserModel2.dispose();
    chatUserModel3.dispose();
    chatUserModel4.dispose();
    navModel.dispose();
    mainDrawerModel.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
