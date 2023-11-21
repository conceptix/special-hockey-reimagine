import '/flutter_flow/flutter_flow_swipeable_stack.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:swipeable_card_stack/swipeable_card_stack.dart';
import 'get_ready_pep_talk_model.dart';
export 'get_ready_pep_talk_model.dart';

class GetReadyPepTalkWidget extends StatefulWidget {
  const GetReadyPepTalkWidget({Key? key}) : super(key: key);

  @override
  _GetReadyPepTalkWidgetState createState() => _GetReadyPepTalkWidgetState();
}

class _GetReadyPepTalkWidgetState extends State<GetReadyPepTalkWidget> {
  late GetReadyPepTalkModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => GetReadyPepTalkModel());

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
      height: double.infinity,
      decoration: BoxDecoration(
        color: FlutterFlowTheme.of(context).secondaryBackground,
      ),
      child: Container(
        width: double.infinity,
        height: 500.0,
        child: PageView(
          physics: const NeverScrollableScrollPhysics(),
          controller: _model.pageViewController ??=
              PageController(initialPage: 0),
          scrollDirection: Axis.horizontal,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(8.0),
              child: Image.network(
                'https://media.istockphoto.com/id/530228255/vector/ice-hockey-arena.jpg?s=1024x1024&w=is&k=20&c=l1ogw79tDLHjvaa-JrApcuZgzfL9E-hBQI1Bvsbc6uA=',
                fit: BoxFit.cover,
              ),
            ),
            FlutterFlowSwipeableStack(
              topCardHeightFraction: 0.72,
              middleCardHeightFraction: 0.68,
              bottomCardHeightFraction: 0.75,
              topCardWidthFraction: 0.9,
              middleCardWidthFraction: 0.85,
              bottomCardWidthFraction: 0.8,
              onSwipeFn: (index) {},
              onLeftSwipe: (index) {},
              onRightSwipe: (index) {},
              onUpSwipe: (index) {},
              onDownSwipe: (index) {},
              itemBuilder: (context, index) {
                return [][index]();
              },
              itemCount: 0,
              controller: _model.swipeableStackController,
              enableSwipeUp: false,
              enableSwipeDown: false,
            ),
            ClipRRect(
              borderRadius: BorderRadius.circular(8.0),
              child: Image.network(
                'https://picsum.photos/seed/428/600',
                width: 300.0,
                height: 200.0,
                fit: BoxFit.cover,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
