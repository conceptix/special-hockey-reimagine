// Automatic FlutterFlow imports
import '/backend/backend.dart';
import '/backend/schema/structs/index.dart';
import '/backend/schema/enums/enums.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom widgets
import '/custom_code/actions/index.dart'; // Imports custom actions
import '/flutter_flow/custom_functions.dart'; // Imports custom functions
import 'package:flutter/material.dart';
// Begin custom widget code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

import 'package:flutter_svg/flutter_svg.dart';
import 'package:audioplayers/audioplayers.dart';

class DragDropWidget extends StatefulWidget {
  const DragDropWidget({
    Key? key,
    this.width,
    this.height,
    required this.equipmentItems,
  }) : super(key: key);

  final double? width;
  final double? height;
  final List<EquipmentItemsRecord> equipmentItems;

  @override
  _DragDropWidgetState createState() => _DragDropWidgetState();
}

class _DragDropWidgetState extends State<DragDropWidget> {
  int currentItemIndex = 0;
  final AudioPlayer audioPlayer = AudioPlayer();

  @override
  void initState() {
    super.initState();
    playAudio(widget.equipmentItems[currentItemIndex].audioFile);
  }

  void playAudio(String url) async {
    await audioPlayer.play(UrlSource(url));
  }

  @override
  Widget build(BuildContext context) {
    var currentItem = widget.equipmentItems[currentItemIndex];
    var draggableImage = currentItem.draggableImage;
    var dropzoneImage = currentItem.dropzoneImage;
    var itemName = currentItem.name;
    int itemsLeft = widget.equipmentItems.length - currentItemIndex;

    return Container(
      width: widget.width,
      height: widget.height,
      child: Column(
        children: [
          // Custom styled drop zone
          DragTarget<EquipmentItemsRecord>(
            onWillAccept: (data) => true,
            onAccept: (data) {
              setState(() {
                currentItemIndex =
                    (currentItemIndex + 1) % widget.equipmentItems.length;
                playAudio(widget.equipmentItems[currentItemIndex].audioFile);
              });
              // Trigger animation and update page variable here
            },
            builder: (context, candidateData, rejectedData) => Align(
              alignment: AlignmentDirectional(0.00, -1.00),
              child: Container(
                width: double.infinity,
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(0, 80, 0, 0),
                      child: Container(
                        width: 200,
                        height: 200,
                        decoration: BoxDecoration(),
                        child: Opacity(
                          opacity: 0.5,
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(8),
                            child: Image.network(dropzoneImage,
                                fit: BoxFit.contain),
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(0, 24, 0, 0),
                      child: Text("$itemName - $itemsLeft Items Left!"),
                    ),
                  ],
                ),
              ),
            ),
          ),

          // Display one draggable item at a time with custom styling
          if (draggableImage != null)
            AnimatedSwitcher(
              duration: const Duration(milliseconds: 500),
              child: Draggable<EquipmentItemsRecord>(
                key: ValueKey(currentItemIndex),
                data: currentItem,
                child: Container(
                  width: 200,
                  height: 200,
                  child: Image.network(draggableImage, fit: BoxFit.contain),
                ),
                feedback: Container(
                  width: 200,
                  height: 200,
                  child: Image.network(draggableImage, fit: BoxFit.contain),
                ),
                childWhenDragging: Opacity(
                  opacity: 0.5,
                  child: Container(
                    width: 200,
                    height: 200,
                    child: Image.network(draggableImage, fit: BoxFit.contain),
                  ),
                ),
              ),
            ),
        ],
      ),
    );
  }

  @override
  void dispose() {
    audioPlayer.dispose();
    super.dispose();
  }
}
