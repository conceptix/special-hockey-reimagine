import '/components/restaurant_widget.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_audio_player.dart';
import '/flutter_flow/flutter_flow_expanded_image_view.dart';
import '/flutter_flow/flutter_flow_google_map.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'location_view_widget.dart' show LocationViewWidget;
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter/services.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:page_transition/page_transition.dart';
import 'package:provider/provider.dart';

class LocationViewModel extends FlutterFlowModel<LocationViewWidget> {
  ///  State fields for stateful widgets in this component.

  // State field(s) for Carousel widget.
  CarouselController? carouselController;

  int carouselCurrentIndex = 1;

  // State field(s) for GoogleMap widget.
  LatLng? googleMapsCenter;
  final googleMapsController = Completer<GoogleMapController>();
  // Model for restaurant component.
  late RestaurantModel restaurantModel1;
  // Model for restaurant component.
  late RestaurantModel restaurantModel2;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    restaurantModel1 = createModel(context, () => RestaurantModel());
    restaurantModel2 = createModel(context, () => RestaurantModel());
  }

  void dispose() {
    restaurantModel1.dispose();
    restaurantModel2.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
