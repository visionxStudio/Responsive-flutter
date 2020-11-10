import 'package:flutter/material.dart';

import '../../constants.dart';
import '../../size_config.dart';

class TitleText extends StatelessWidget {
  const TitleText({
    Key key,
    @required this.title,
  }) : super(key: key);

  final String title;

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    var defaultSize = SizeConfig.defaultSize;
    return Text(
      title,
      style: TextStyle(
        color: kTextColor,
        fontSize: defaultSize * 2,
        fontWeight: FontWeight.w600,
      ),
    );
  }
}
