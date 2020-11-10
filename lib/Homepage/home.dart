import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:responsiveDesign/constants.dart';
import 'package:responsiveDesign/size_config.dart';

import 'components/body.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    final defaultSize = SizeConfig.defaultSize;
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: SvgPicture.asset(
            "assets/icons/menu.svg",
            height: defaultSize * 2,
          ),
          onPressed: () {},
        ),
        actions: [
          IconButton(
            icon: SvgPicture.asset(
              "assets/icons/scan.svg",
              height: defaultSize * 2.4,
            ),
            onPressed: () {},
          ),
          Center(
            child: Text(
              "Scan",
              style: TextStyle(
                color: kTextColor,
                fontSize: defaultSize * 1.6,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          SizedBox(
            width: defaultSize,
          )
        ],
      ),
      body: Body(),
    );
  }
}
