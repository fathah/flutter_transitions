library flutter_transitions;
import 'package:flutter/material.dart';


  class FlutterFadeRoute extends PageRouteBuilder {
    /// Fade Route Transition
    /// Add the Route class to the parameter 'page'
  final Widget page;
  FlutterFadeRoute({this.page})
      : super(
  pageBuilder: (
  BuildContext context,
  Animation<double> animation,
  Animation<double> secondaryAnimation,
  ) =>
  page,
  transitionsBuilder: (
  BuildContext context,
  Animation<double> animation,
  Animation<double> secondaryAnimation,
  Widget child,
  ) =>
  FadeTransition(
  opacity: animation,
  child: child,
  ),
  );
  }

  class FlutterScaleRoute extends PageRouteBuilder {
    /// Scale Route Transition
    /// Add the Route class to the parameter 'page'
  final Widget page;
  FlutterScaleRoute({this.page})
      : super(
  pageBuilder: (
  BuildContext context,
  Animation<double> animation,
  Animation<double> secondaryAnimation,
  ) =>
  page,
  transitionsBuilder: (
  BuildContext context,
  Animation<double> animation,
  Animation<double> secondaryAnimation,
  Widget child,
  ) =>
  ScaleTransition(
  scale: Tween<double>(
  begin: 0.0,
  end: 1.0,
  ).animate(
  CurvedAnimation(
  parent: animation,
  curve: Curves.fastOutSlowIn,
  ),
  ),
  child: child,
  ),
  );
  }

  class FlutterSizeRoute extends PageRouteBuilder {
    /// Size Route Transition
    /// Add the Route class to the parameter 'page'
  final Widget page;
  FlutterSizeRoute({this.page})
      : super(
  pageBuilder: (
  BuildContext context,
  Animation<double> animation,
  Animation<double> secondaryAnimation,
  ) =>
  page,
  transitionsBuilder: (
  BuildContext context,
  Animation<double> animation,
  Animation<double> secondaryAnimation,
  Widget child,
  ) =>
  Align(
  child: SizeTransition(
  sizeFactor: animation,
  child: child,
  ),
  ),
  );
  }


