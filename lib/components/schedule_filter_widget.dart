import '/flutter_flow/flutter_flow_choice_chips.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'schedule_filter_model.dart';
export 'schedule_filter_model.dart';

class ScheduleFilterWidget extends StatefulWidget {
  const ScheduleFilterWidget({Key? key}) : super(key: key);

  @override
  _ScheduleFilterWidgetState createState() => _ScheduleFilterWidgetState();
}

class _ScheduleFilterWidgetState extends State<ScheduleFilterWidget> {
  late ScheduleFilterModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ScheduleFilterModel());

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
      padding: EdgeInsetsDirectional.fromSTEB(0.0, 24.0, 0.0, 24.0),
      child: Container(
        width: double.infinity,
        decoration: BoxDecoration(),
        child: Column(
          mainAxisSize: MainAxisSize.max,
          children: [
            FlutterFlowDropDown<String>(
              controller: _model.dropDownValueController ??=
                  FormFieldController<String>(
                _model.dropDownValue ??= 'all',
              ),
              options: List<String>.from(['all', '234-234-234-2342']),
              optionLabels: ['All Clubs', 'Niagara Jr. Ice Dogs'],
              onChanged: null,
              width: 300.0,
              height: 50.0,
              textStyle: FlutterFlowTheme.of(context).bodyMedium,
              hintText: 'Filter By Club...',
              icon: Icon(
                Icons.keyboard_arrow_down_rounded,
                color: FlutterFlowTheme.of(context).secondaryText,
                size: 24.0,
              ),
              fillColor: FlutterFlowTheme.of(context).secondaryBackground,
              elevation: 2.0,
              borderColor: FlutterFlowTheme.of(context).alternate,
              borderWidth: 2.0,
              borderRadius: 8.0,
              margin: EdgeInsetsDirectional.fromSTEB(16.0, 4.0, 16.0, 4.0),
              hidesUnderline: true,
              isSearchable: false,
              isMultiSelect: true,
              onChangedForMultiSelect: (val) =>
                  setState(() => _model.dropDownValue = val),
            ),
            Align(
              alignment: AlignmentDirectional(0.00, 0.00),
              child: FlutterFlowChoiceChips(
                options: [
                  ChipData('Games'),
                  ChipData('Practices'),
                  ChipData('Events')
                ],
                onChanged: (val) =>
                    setState(() => _model.choiceChipsValues = val),
                selectedChipStyle: ChipStyle(
                  backgroundColor: FlutterFlowTheme.of(context).secondary,
                  textStyle: FlutterFlowTheme.of(context).bodyMedium.override(
                        fontFamily: 'Nunito',
                        color: FlutterFlowTheme.of(context).primaryText,
                      ),
                  iconColor: FlutterFlowTheme.of(context).primaryText,
                  iconSize: 18.0,
                  elevation: 4.0,
                  borderRadius: BorderRadius.circular(16.0),
                ),
                unselectedChipStyle: ChipStyle(
                  backgroundColor: FlutterFlowTheme.of(context).alternate,
                  textStyle: FlutterFlowTheme.of(context).bodyMedium.override(
                        fontFamily: 'Nunito',
                        color: FlutterFlowTheme.of(context).secondaryText,
                      ),
                  iconColor: FlutterFlowTheme.of(context).secondaryText,
                  iconSize: 18.0,
                  elevation: 0.0,
                  borderRadius: BorderRadius.circular(16.0),
                ),
                chipSpacing: 12.0,
                rowSpacing: 12.0,
                multiselect: true,
                initialized: _model.choiceChipsValues != null,
                alignment: WrapAlignment.start,
                controller: _model.choiceChipsValueController ??=
                    FormFieldController<List<String>>(
                  ['Games', 'Practices', 'Events'],
                ),
                wrapped: true,
              ),
            ),
          ].divide(SizedBox(height: 24.0)),
        ),
      ),
    );
  }
}
