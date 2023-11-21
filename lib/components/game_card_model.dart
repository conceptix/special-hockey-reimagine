import '/components/location_view_widget.dart';
import '/components/team_logo_widget.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/custom_functions.dart' as functions;
import 'game_card_widget.dart' show GameCardWidget;
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter/services.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class GameCardModel extends FlutterFlowModel<GameCardWidget> {
  ///  Local state fields for this component.

  bool going = true;

  ///  State fields for stateful widgets in this component.

  // Model for TeamLogo component.
  late TeamLogoModel teamLogoModel;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    teamLogoModel = createModel(context, () => TeamLogoModel());
  }

  void dispose() {
    teamLogoModel.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
