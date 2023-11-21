import '/backend/schema/enums/enums.dart';
import '/backend/schema/structs/index.dart';
import '/components/game_card_widget.dart';
import '/components/main_drawer_widget.dart';
import '/components/nav_widget.dart';
import '/components/practice_card_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'home_model.dart';
export 'home_model.dart';

class HomeWidget extends StatefulWidget {
  const HomeWidget({Key? key}) : super(key: key);

  @override
  _HomeWidgetState createState() => _HomeWidgetState();
}

class _HomeWidgetState extends State<HomeWidget> {
  late HomeModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => HomeModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    if (isiOS) {
      SystemChrome.setSystemUIOverlayStyle(
        SystemUiOverlayStyle(
          statusBarBrightness: Theme.of(context).brightness,
          systemStatusBarContrastEnforced: true,
        ),
      );
    }

    context.watch<FFAppState>();

    return GestureDetector(
      onTap: () => _model.unfocusNode.canRequestFocus
          ? FocusScope.of(context).requestFocus(_model.unfocusNode)
          : FocusScope.of(context).unfocus(),
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: FlutterFlowTheme.of(context).zinc950,
        drawer: Drawer(
          elevation: 16.0,
          child: wrapWithModel(
            model: _model.mainDrawerModel,
            updateCallback: () => setState(() {}),
            child: MainDrawerWidget(),
          ),
        ),
        body: SafeArea(
          top: true,
          child: Stack(
            children: [
              Container(
                width: double.infinity,
                height: double.infinity,
                decoration: BoxDecoration(
                  color: FlutterFlowTheme.of(context).primaryBackground,
                ),
                child: SingleChildScrollView(
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      SingleChildScrollView(
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Align(
                              alignment: AlignmentDirectional(0.00, 0.00),
                              child: Container(
                                width: double.infinity,
                                decoration: BoxDecoration(),
                              ),
                            ),
                            wrapWithModel(
                              model: _model.gameCardModel,
                              updateCallback: () => setState(() {}),
                              child: GameCardWidget(),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding:
                            EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 70.0),
                        child: ListView(
                          padding: EdgeInsets.symmetric(vertical: 2.0),
                          shrinkWrap: true,
                          scrollDirection: Axis.vertical,
                          children: [
                            wrapWithModel(
                              model: _model.practiceCardModel1,
                              updateCallback: () => setState(() {}),
                              child: PracticeCardWidget(
                                practice: PracticeStruct(
                                  startTime:
                                      DateTime.fromMicrosecondsSinceEpoch(
                                          1700917200000000),
                                  endTime: DateTime.fromMicrosecondsSinceEpoch(
                                      1700920800000000),
                                  teamDivision: TeamDivisions.C,
                                  date: DateTime.fromMicrosecondsSinceEpoch(
                                      1700888400000000),
                                ),
                              ),
                            ),
                            wrapWithModel(
                              model: _model.practiceCardModel2,
                              updateCallback: () => setState(() {}),
                              child: PracticeCardWidget(
                                practice: PracticeStruct(
                                  startTime:
                                      DateTime.fromMicrosecondsSinceEpoch(
                                          1700920800000000),
                                  endTime: DateTime.fromMicrosecondsSinceEpoch(
                                      1700924400000000),
                                  teamDivision: TeamDivisions.B,
                                  date: DateTime.fromMicrosecondsSinceEpoch(
                                      1700888400000000),
                                ),
                              ),
                            ),
                          ].divide(SizedBox(height: 2.0)),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Align(
                alignment: AlignmentDirectional(0.00, 1.00),
                child: wrapWithModel(
                  model: _model.navModel,
                  updateCallback: () => setState(() {}),
                  child: Hero(
                    tag: 'nav',
                    transitionOnUserGestures: true,
                    child: Material(
                      color: Colors.transparent,
                      child: NavWidget(),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
