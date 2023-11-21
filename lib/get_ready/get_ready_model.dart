import '/components/coach_pep_talk_widget.dart';
import '/components/equipment_checklist_widget.dart';
import '/components/get_ready_visualization_widget.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/custom_code/widgets/index.dart' as custom_widgets;
import 'get_ready_widget.dart' show GetReadyWidget;
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter/services.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:just_audio/just_audio.dart';
import 'package:provider/provider.dart';

class GetReadyModel extends FlutterFlowModel<GetReadyWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  AudioPlayer? soundPlayer1;
  // State field(s) for GetReadyPageView widget.
  PageController? getReadyPageViewController;

  int get getReadyPageViewCurrentIndex => getReadyPageViewController != null &&
          getReadyPageViewController!.hasClients &&
          getReadyPageViewController!.page != null
      ? getReadyPageViewController!.page!.round()
      : 0;
  // Model for equipmentChecklist component.
  late EquipmentChecklistModel equipmentChecklistModel;
  AudioPlayer? soundPlayer2;
  // Model for GetReadyVisualization component.
  late GetReadyVisualizationModel getReadyVisualizationModel;
  // Model for CoachPepTalk component.
  late CoachPepTalkModel coachPepTalkModel;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    equipmentChecklistModel =
        createModel(context, () => EquipmentChecklistModel());
    getReadyVisualizationModel =
        createModel(context, () => GetReadyVisualizationModel());
    coachPepTalkModel = createModel(context, () => CoachPepTalkModel());
  }

  void dispose() {
    unfocusNode.dispose();
    equipmentChecklistModel.dispose();
    getReadyVisualizationModel.dispose();
    coachPepTalkModel.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
