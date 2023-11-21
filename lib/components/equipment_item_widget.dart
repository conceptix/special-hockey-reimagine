import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter/services.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:just_audio/just_audio.dart';
import 'package:provider/provider.dart';
import 'equipment_item_model.dart';
export 'equipment_item_model.dart';

class EquipmentItemWidget extends StatefulWidget {
  const EquipmentItemWidget({
    Key? key,
    this.equipmentList,
    int? currentIndex,
  })  : this.currentIndex = currentIndex ?? 0,
        super(key: key);

  final List<EquipmentItemsRecord>? equipmentList;
  final int currentIndex;

  @override
  _EquipmentItemWidgetState createState() => _EquipmentItemWidgetState();
}

class _EquipmentItemWidgetState extends State<EquipmentItemWidget>
    with TickerProviderStateMixin {
  late EquipmentItemModel _model;

  final animationsMap = {
    'containerOnActionTriggerAnimation': AnimationInfo(
      trigger: AnimationTrigger.onActionTrigger,
      applyInitialState: true,
      effects: [
        ScaleEffect(
          curve: Curves.easeIn,
          delay: 0.ms,
          duration: 1000.ms,
          begin: Offset(1.0, 1.0),
          end: Offset(1.2, 1.2),
        ),
        ShakeEffect(
          curve: Curves.easeIn,
          delay: 0.ms,
          duration: 1000.ms,
          hz: 4,
          offset: Offset(0.0, 0.0),
          rotation: 0.087,
        ),
        FadeEffect(
          curve: Curves.easeOut,
          delay: 1000.ms,
          duration: 400.ms,
          begin: 1.0,
          end: 0.0,
        ),
        ScaleEffect(
          curve: Curves.easeOut,
          delay: 1000.ms,
          duration: 400.ms,
          begin: Offset(1.0, 1.0),
          end: Offset(0.0, 0.0),
        ),
        MoveEffect(
          curve: Curves.easeOut,
          delay: 1000.ms,
          duration: 400.ms,
          begin: Offset(0.0, 0.0),
          end: Offset(0.0, -200.0),
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
    _model = createModel(context, () => EquipmentItemModel());

    // On component load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      _model.soundPlayer ??= AudioPlayer();
      if (_model.soundPlayer!.playing) {
        await _model.soundPlayer!.stop();
      }
      _model.soundPlayer!.setVolume(1.0);
      await _model.soundPlayer!
          .setUrl(widget.equipmentList![widget.currentIndex].audioFile)
          .then((_) => _model.soundPlayer!.play());
    });

    setupAnimations(
      animationsMap.values.where((anim) =>
          anim.trigger == AnimationTrigger.onActionTrigger ||
          !anim.applyInitialState),
      this,
    );

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

    return Align(
      alignment: AlignmentDirectional(0.00, 0.00),
      child: Container(
        width: 200.0,
        height: 200.0,
        decoration: BoxDecoration(),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(8.0),
              child: Image.network(
                widget.equipmentList![widget.currentIndex].draggableImage,
                width: 200.0,
                height: 200.0,
                fit: BoxFit.contain,
              ),
            ),
          ],
        ),
      ).animateOnActionTrigger(
        animationsMap['containerOnActionTriggerAnimation']!,
      ),
    );
  }
}
