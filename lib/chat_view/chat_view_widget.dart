import '/components/chat_user_widget.dart';
import '/components/main_drawer_widget.dart';
import '/components/nav_widget.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'chat_view_model.dart';
export 'chat_view_model.dart';

class ChatViewWidget extends StatefulWidget {
  const ChatViewWidget({Key? key}) : super(key: key);

  @override
  _ChatViewWidgetState createState() => _ChatViewWidgetState();
}

class _ChatViewWidgetState extends State<ChatViewWidget> {
  late ChatViewModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ChatViewModel());

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
        appBar: AppBar(
          backgroundColor: FlutterFlowTheme.of(context).primary,
          automaticallyImplyLeading: false,
          leading: FlutterFlowIconButton(
            borderColor: Colors.transparent,
            borderRadius: 30.0,
            borderWidth: 1.0,
            buttonSize: 60.0,
            icon: Icon(
              Icons.arrow_back_rounded,
              color: Colors.white,
              size: 30.0,
            ),
            onPressed: () async {
              context.pop();
            },
          ),
          title: Text(
            'All Members',
            style: FlutterFlowTheme.of(context).headlineMedium.override(
                  fontFamily: 'Barlow Condensed',
                  color: Colors.white,
                  fontSize: 22.0,
                ),
          ),
          actions: [],
          centerTitle: false,
          elevation: 2.0,
        ),
        body: Container(
          width: double.infinity,
          height: double.infinity,
          child: Stack(
            children: [
              Column(
                mainAxisSize: MainAxisSize.max,
                children: [
                  ListView(
                    padding: EdgeInsets.zero,
                    shrinkWrap: true,
                    scrollDirection: Axis.vertical,
                    children: [
                      wrapWithModel(
                        model: _model.chatUserModel1,
                        updateCallback: () => setState(() {}),
                        child: ChatUserWidget(),
                      ),
                      wrapWithModel(
                        model: _model.chatUserModel2,
                        updateCallback: () => setState(() {}),
                        child: ChatUserWidget(),
                      ),
                      wrapWithModel(
                        model: _model.chatUserModel3,
                        updateCallback: () => setState(() {}),
                        child: ChatUserWidget(),
                      ),
                      wrapWithModel(
                        model: _model.chatUserModel4,
                        updateCallback: () => setState(() {}),
                        child: ChatUserWidget(),
                      ),
                    ].divide(SizedBox(height: 4.0)),
                  ),
                ],
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
