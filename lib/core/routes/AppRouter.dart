import 'package:flutter/material.dart';
import 'package:movieapp/core/routes/PageRouteNames.dart';

import '../../udateprofile/update_profile.dart';

abstract class Approuter {
  static Route<dynamic> onGenrateRoutes(RouteSettings settings){
    switch(settings.name){
      case Pageroutenames.updateScreen:
        return MaterialPageRoute(builder: (context)=>UpdateProfile(),settings: settings);
      default:
        return MaterialPageRoute(builder: (context)=>Placeholder());
    }
  }
}