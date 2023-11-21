import '/backend/backend.dart';
import '/components/equipment_item_widget.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'equipment_checklist_widget.dart' show EquipmentChecklistWidget;
import 'package:smooth_page_indicator/smooth_page_indicator.dart'
    as smooth_page_indicator;
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter/services.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:percent_indicator/percent_indicator.dart';
import 'package:provider/provider.dart';

class EquipmentChecklistModel
    extends FlutterFlowModel<EquipmentChecklistWidget> {
  ///  Local state fields for this component.

  double progressValue = 1.0;

  int currentIndex = 0;

  ///  State fields for stateful widgets in this component.

  // State field(s) for PageView widget.
  PageController? pageViewController;

  int get pageViewCurrentIndex => pageViewController != null &&
          pageViewController!.hasClients &&
          pageViewController!.page != null
      ? pageViewController!.page!.round()
      : 0;
  // Model for EquipmentItem component.
  late EquipmentItemModel equipmentItemModel1;
  // Model for EquipmentItem component.
  late EquipmentItemModel equipmentItemModel2;
  // Model for EquipmentItem component.
  late EquipmentItemModel equipmentItemModel3;
  // Model for EquipmentItem component.
  late EquipmentItemModel equipmentItemModel4;
  // Model for EquipmentItem component.
  late EquipmentItemModel equipmentItemModel5;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    equipmentItemModel1 = createModel(context, () => EquipmentItemModel());
    equipmentItemModel2 = createModel(context, () => EquipmentItemModel());
    equipmentItemModel3 = createModel(context, () => EquipmentItemModel());
    equipmentItemModel4 = createModel(context, () => EquipmentItemModel());
    equipmentItemModel5 = createModel(context, () => EquipmentItemModel());
  }

  void dispose() {
    equipmentItemModel1.dispose();
    equipmentItemModel2.dispose();
    equipmentItemModel3.dispose();
    equipmentItemModel4.dispose();
    equipmentItemModel5.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
