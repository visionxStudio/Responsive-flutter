import 'package:flutter/material.dart';

class ResponsiveWidget extends StatelessWidget {
  // final Widget mobile = Container();
  // final Widget tab = Container();
  // final Widget desktop = Container();
  final Widget mobile;
  final Widget tab;
  const ResponsiveWidget({Key key, this.mobile, this.tab});
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      if (constraints.maxWidth < 768) {
        return mobile;
      } else {
        return tab;
      }
    });
  }
}
