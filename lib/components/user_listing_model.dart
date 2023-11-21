import '/backend/backend.dart';
import '/components/more_chevron_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'user_listing_widget.dart' show UserListingWidget;
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class UserListingModel extends FlutterFlowModel<UserListingWidget> {
  ///  State fields for stateful widgets in this component.

  // Model for MoreChevron component.
  late MoreChevronModel moreChevronModel;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    moreChevronModel = createModel(context, () => MoreChevronModel());
  }

  void dispose() {
    moreChevronModel.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
