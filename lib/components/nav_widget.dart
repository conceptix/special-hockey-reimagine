import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/custom_code/actions/index.dart' as actions;
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter/services.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'nav_model.dart';
export 'nav_model.dart';

class NavWidget extends StatefulWidget {
  const NavWidget({Key? key}) : super(key: key);

  @override
  _NavWidgetState createState() => _NavWidgetState();
}

class _NavWidgetState extends State<NavWidget> with TickerProviderStateMixin {
  late NavModel _model;

  final animationsMap = {
    'iconOnPageLoadAnimation': AnimationInfo(
      loop: true,
      trigger: AnimationTrigger.onPageLoad,
      effects: [
        ShakeEffect(
          curve: Curves.easeOut,
          delay: 10000.ms,
          duration: 600.ms,
          hz: 3,
          offset: Offset(2.0, 0.0),
          rotation: 0.087,
        ),
      ],
    ),
  };

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => NavModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return Container(
      width: double.infinity,
      height: 70.0,
      decoration: BoxDecoration(),
      child: Container(
        width: double.infinity,
        height: 70.0,
        child: Stack(
          children: [
            Column(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Expanded(
                  child: Material(
                    color: Colors.transparent,
                    elevation: 0.0,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(0.0),
                        bottomRight: Radius.circular(0.0),
                        topLeft: Radius.circular(20.0),
                        topRight: Radius.circular(20.0),
                      ),
                    ),
                    child: Container(
                      width: double.infinity,
                      height: 70.0,
                      decoration: BoxDecoration(
                        color: FlutterFlowTheme.of(context).zinc950,
                        boxShadow: [
                          BoxShadow(
                            blurRadius: 10.0,
                            color: Color(0x1A57636C),
                            offset: Offset(0.0, -10.0),
                            spreadRadius: 0.1,
                          )
                        ],
                        borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(0.0),
                          bottomRight: Radius.circular(0.0),
                          topLeft: Radius.circular(20.0),
                          topRight: Radius.circular(20.0),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                InkWell(
                  splashColor: Colors.transparent,
                  focusColor: Colors.transparent,
                  hoverColor: Colors.transparent,
                  highlightColor: Colors.transparent,
                  onTap: () async {
                    context.pushNamed(
                      'schedule',
                      extra: <String, dynamic>{
                        kTransitionInfoKey: TransitionInfo(
                          hasTransition: true,
                          transitionType: PageTransitionType.fade,
                          duration: Duration(milliseconds: 0),
                        ),
                      },
                    );

                    setState(() {
                      FFAppState().selectedNavIndex = 0;
                    });
                  },
                  child: Container(
                    decoration: BoxDecoration(),
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          width: 30.0,
                          height: 30.0,
                          decoration: BoxDecoration(),
                          child: Icon(
                            Icons.calendar_month,
                            color: FFAppState().selectedNavIndex == 0
                                ? FlutterFlowTheme.of(context).white
                                : FlutterFlowTheme.of(context).zinc400,
                            size: 24.0,
                          ),
                        ),
                        Text(
                          'Schedule',
                          style:
                              FlutterFlowTheme.of(context).labelMedium.override(
                                    fontFamily: 'Nunito',
                                    color: FFAppState().selectedNavIndex == 0
                                        ? FlutterFlowTheme.of(context).white
                                        : FlutterFlowTheme.of(context).zinc400,
                                  ),
                        ),
                      ].divide(SizedBox(height: 3.0)),
                    ),
                  ),
                ),
                InkWell(
                  splashColor: Colors.transparent,
                  focusColor: Colors.transparent,
                  hoverColor: Colors.transparent,
                  highlightColor: Colors.transparent,
                  onTap: () async {
                    context.pushNamed(
                      'teams',
                      extra: <String, dynamic>{
                        kTransitionInfoKey: TransitionInfo(
                          hasTransition: true,
                          transitionType: PageTransitionType.fade,
                          duration: Duration(milliseconds: 0),
                        ),
                      },
                    );

                    setState(() {
                      FFAppState().selectedNavIndex = 1;
                    });
                  },
                  child: Container(
                    decoration: BoxDecoration(),
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          width: 30.0,
                          height: 30.0,
                          decoration: BoxDecoration(),
                          child: Icon(
                            Icons.sports_hockey,
                            color: FFAppState().selectedNavIndex == 1
                                ? FlutterFlowTheme.of(context).white
                                : FlutterFlowTheme.of(context).zinc400,
                            size: 24.0,
                          ),
                        ),
                        Text(
                          'Teams',
                          style:
                              FlutterFlowTheme.of(context).bodyMedium.override(
                                    fontFamily: 'Nunito',
                                    color: FFAppState().selectedNavIndex == 1
                                        ? FlutterFlowTheme.of(context).white
                                        : FlutterFlowTheme.of(context).zinc400,
                                  ),
                        ),
                      ].divide(SizedBox(height: 3.0)),
                    ),
                  ),
                ),
                Align(
                  alignment: AlignmentDirectional(0.00, 0.00),
                  child: Container(
                    decoration: BoxDecoration(),
                    child: Align(
                      alignment: AlignmentDirectional(0.00, 0.00),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          FlutterFlowIconButton(
                            borderColor: Colors.transparent,
                            borderRadius: 25.0,
                            borderWidth: 1.0,
                            buttonSize: 60.0,
                            fillColor: FFAppState().selectedNavIndex == 2
                                ? FlutterFlowTheme.of(context).primary
                                : FlutterFlowTheme.of(context).zinc800,
                            icon: FaIcon(
                              FontAwesomeIcons.medal,
                              color: FFAppState().selectedNavIndex == 2
                                  ? FlutterFlowTheme.of(context).white
                                  : FlutterFlowTheme.of(context).zinc400,
                              size: 30.0,
                            ),
                            onPressed: () async {
                              context.pushNamed(
                                'home',
                                extra: <String, dynamic>{
                                  kTransitionInfoKey: TransitionInfo(
                                    hasTransition: true,
                                    transitionType: PageTransitionType.fade,
                                    duration: Duration(milliseconds: 0),
                                  ),
                                },
                              );

                              setState(() {
                                FFAppState().selectedNavIndex = 2;
                              });
                            },
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                InkWell(
                  splashColor: Colors.transparent,
                  focusColor: Colors.transparent,
                  hoverColor: Colors.transparent,
                  highlightColor: Colors.transparent,
                  onTap: () async {
                    context.pushNamed(
                      'chat',
                      extra: <String, dynamic>{
                        kTransitionInfoKey: TransitionInfo(
                          hasTransition: true,
                          transitionType: PageTransitionType.fade,
                          duration: Duration(milliseconds: 0),
                        ),
                      },
                    );

                    setState(() {
                      FFAppState().selectedNavIndex = 3;
                    });
                  },
                  child: Container(
                    decoration: BoxDecoration(),
                    child: Align(
                      alignment: AlignmentDirectional(0.00, 0.00),
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Stack(
                            alignment: AlignmentDirectional(0.0, 0.0),
                            children: [
                              Container(
                                width: 30.0,
                                height: 30.0,
                                decoration: BoxDecoration(),
                                child: Icon(
                                  Icons.chat,
                                  color: FFAppState().selectedNavIndex == 3
                                      ? FlutterFlowTheme.of(context).white
                                      : FlutterFlowTheme.of(context).zinc400,
                                  size: 24.0,
                                ),
                              ),
                              Align(
                                alignment: AlignmentDirectional(1.00, -1.00),
                                child: Container(
                                  width: 30.0,
                                  height: 30.0,
                                  decoration: BoxDecoration(),
                                  child: Align(
                                    alignment:
                                        AlignmentDirectional(1.00, -1.00),
                                    child: Icon(
                                      Icons.circle_rounded,
                                      color: FlutterFlowTheme.of(context).error,
                                      size: 12.0,
                                    ).animateOnPageLoad(animationsMap[
                                        'iconOnPageLoadAnimation']!),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          Text(
                            'Chat',
                            style: FlutterFlowTheme.of(context)
                                .labelMedium
                                .override(
                                  fontFamily: 'Nunito',
                                  color: FFAppState().selectedNavIndex == 3
                                      ? FlutterFlowTheme.of(context).white
                                      : FlutterFlowTheme.of(context).zinc400,
                                ),
                          ),
                        ].divide(SizedBox(height: 3.0)),
                      ),
                    ),
                  ),
                ),
                InkWell(
                  splashColor: Colors.transparent,
                  focusColor: Colors.transparent,
                  hoverColor: Colors.transparent,
                  highlightColor: Colors.transparent,
                  onTap: () async {
                    await actions.openDrawer(
                      context,
                    );
                  },
                  child: Container(
                    decoration: BoxDecoration(),
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          width: 30.0,
                          height: 30.0,
                          decoration: BoxDecoration(),
                          child: Icon(
                            Icons.keyboard_control_sharp,
                            color: FlutterFlowTheme.of(context).zinc400,
                            size: 24.0,
                          ),
                        ),
                        Text(
                          'Menu',
                          style: FlutterFlowTheme.of(context).labelMedium,
                        ),
                      ].divide(SizedBox(height: 3.0)),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
