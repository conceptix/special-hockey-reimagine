import '/backend/backend.dart';
import '/components/more_chevron_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'user_listing_model.dart';
export 'user_listing_model.dart';

class UserListingWidget extends StatefulWidget {
  const UserListingWidget({
    Key? key,
    required this.user,
  }) : super(key: key);

  final UsersRecord? user;

  @override
  _UserListingWidgetState createState() => _UserListingWidgetState();
}

class _UserListingWidgetState extends State<UserListingWidget> {
  late UserListingModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => UserListingModel());

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

    return Padding(
      padding: EdgeInsetsDirectional.fromSTEB(0.0, 8.0, 0.0, 8.0),
      child: Row(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Align(
            alignment: AlignmentDirectional(0.00, 0.00),
            child: Stack(
              alignment: AlignmentDirectional(0.0, 0.0),
              children: [
                Container(
                  width: 70.0,
                  height: 70.0,
                  decoration: BoxDecoration(
                    color: FlutterFlowTheme.of(context).white,
                    shape: BoxShape.circle,
                    border: Border.all(
                      color: FlutterFlowTheme.of(context).primary,
                      width: 2.0,
                    ),
                  ),
                  child: Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(2.0, 2.0, 2.0, 2.0),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(40.0),
                      child: Image.network(
                        widget.user!.photoUrl,
                        width: 70.0,
                        height: 7.0,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
                if ((String role) {
                  return role == 'player';
                }(widget.user!.role))
                  Align(
                    alignment: AlignmentDirectional(0.00, 0.00),
                    child: Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(50.0, 50.0, 0.0, 0.0),
                      child: Container(
                        width: 30.0,
                        height: 30.0,
                        constraints: BoxConstraints(
                          maxHeight: 30.0,
                        ),
                        decoration: BoxDecoration(
                          color: FlutterFlowTheme.of(context).primary,
                          borderRadius: BorderRadius.circular(100.0),
                        ),
                        alignment: AlignmentDirectional(0.00, 0.00),
                        child: Align(
                          alignment: AlignmentDirectional(0.00, 0.00),
                          child: Text(
                            valueOrDefault<String>(
                              widget.user?.number?.toString(),
                              '0',
                            ),
                            textAlign: TextAlign.center,
                            style: FlutterFlowTheme.of(context).titleSmall,
                          ),
                        ),
                      ),
                    ),
                  ),
                if ((String role) {
                  return role == 'coach';
                }(widget.user!.role))
                  Align(
                    alignment: AlignmentDirectional(0.00, 0.00),
                    child: Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(50.0, 50.0, 0.0, 0.0),
                      child: Container(
                        width: 30.0,
                        height: 30.0,
                        constraints: BoxConstraints(
                          maxHeight: 30.0,
                        ),
                        decoration: BoxDecoration(
                          color: FlutterFlowTheme.of(context).warning,
                          borderRadius: BorderRadius.circular(100.0),
                        ),
                        alignment: AlignmentDirectional(0.00, 0.00),
                        child: Icon(
                          Icons.stars_sharp,
                          color: FlutterFlowTheme.of(context).white,
                          size: 24.0,
                        ),
                      ),
                    ),
                  ),
              ],
            ),
          ),
          Expanded(
            child: Padding(
              padding: EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 0.0, 0.0),
              child: Column(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Builder(
                    builder: (context) {
                      if ((String role) {
                        return role == 'player';
                      }(widget.user!.role)) {
                        return Column(
                          mainAxisSize: MainAxisSize.max,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              valueOrDefault<String>(
                                widget.user?.nickname,
                                'Speedy',
                              ),
                              textAlign: TextAlign.center,
                              style: FlutterFlowTheme.of(context).headlineSmall,
                            ),
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  0.0, 0.0, 12.0, 0.0),
                              child: Text(
                                '${widget.user?.firstName} ${widget.user?.lastName}',
                                textAlign: TextAlign.start,
                                style: FlutterFlowTheme.of(context).labelLarge,
                              ),
                            ),
                          ],
                        );
                      } else if ((String role) {
                        return role == 'coach';
                      }(widget.user!.role)) {
                        return Column(
                          mainAxisSize: MainAxisSize.max,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              valueOrDefault<String>(
                                widget.user?.nickname,
                                'Speedy',
                              ),
                              textAlign: TextAlign.center,
                              style: FlutterFlowTheme.of(context).headlineSmall,
                            ),
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  0.0, 0.0, 12.0, 0.0),
                              child: Text(
                                '${widget.user?.title} ${widget.user?.firstName} ${widget.user?.lastName}',
                                textAlign: TextAlign.start,
                                style: FlutterFlowTheme.of(context).labelLarge,
                              ),
                            ),
                          ],
                        );
                      } else {
                        return Column(
                          mainAxisSize: MainAxisSize.max,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              '${widget.user?.firstName} ${widget.user?.lastName}',
                              textAlign: TextAlign.center,
                              style: FlutterFlowTheme.of(context).headlineSmall,
                            ),
                          ],
                        );
                      }
                    },
                  ),
                ],
              ),
            ),
          ),
          wrapWithModel(
            model: _model.moreChevronModel,
            updateCallback: () => setState(() {}),
            child: MoreChevronWidget(),
          ),
        ],
      ),
    );
  }
}
