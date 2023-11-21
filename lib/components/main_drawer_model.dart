import '/admin/admin_nav_item/admin_nav_item_widget.dart';
import '/auth/firebase_auth/auth_util.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'main_drawer_widget.dart' show MainDrawerWidget;
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class MainDrawerModel extends FlutterFlowModel<MainDrawerWidget> {
  ///  State fields for stateful widgets in this component.

  // Model for adminNavItem component.
  late AdminNavItemModel adminNavItemModel1;
  // Model for adminNavItem component.
  late AdminNavItemModel adminNavItemModel2;
  // Model for adminNavItem component.
  late AdminNavItemModel adminNavItemModel3;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    adminNavItemModel1 = createModel(context, () => AdminNavItemModel());
    adminNavItemModel2 = createModel(context, () => AdminNavItemModel());
    adminNavItemModel3 = createModel(context, () => AdminNavItemModel());
  }

  void dispose() {
    adminNavItemModel1.dispose();
    adminNavItemModel2.dispose();
    adminNavItemModel3.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
