import '/backend/schema/enums/enums.dart';
import '/backend/schema/structs/index.dart';
import '/components/game_card_widget.dart';
import '/components/main_drawer_widget.dart';
import '/components/nav_widget.dart';
import '/components/practice_card_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'home_widget.dart' show HomeWidget;
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class HomeModel extends FlutterFlowModel<HomeWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Model for gameCard component.
  late GameCardModel gameCardModel;
  // Model for practiceCard component.
  late PracticeCardModel practiceCardModel1;
  // Model for practiceCard component.
  late PracticeCardModel practiceCardModel2;
  // Model for Nav.
  late NavModel navModel;
  // Model for MainDrawer component.
  late MainDrawerModel mainDrawerModel;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    gameCardModel = createModel(context, () => GameCardModel());
    practiceCardModel1 = createModel(context, () => PracticeCardModel());
    practiceCardModel2 = createModel(context, () => PracticeCardModel());
    navModel = createModel(context, () => NavModel());
    mainDrawerModel = createModel(context, () => MainDrawerModel());
  }

  void dispose() {
    unfocusNode.dispose();
    gameCardModel.dispose();
    practiceCardModel1.dispose();
    practiceCardModel2.dispose();
    navModel.dispose();
    mainDrawerModel.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
