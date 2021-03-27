import 'package:flutter/material.dart';
import 'package:newproject/responsive_helper.dart';

class Homepage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Responsive"),
        centerTitle: true,
      ),
      body: SafeArea(
        child: ResponsiveWidget(
          mobile: Column(
            children: [
              buildBannerSlider(),
              buildIntroText(),
            ],
          ),
          tab: Row(
            children: [
              buildBannerSlider(),
              SizedBox(width: 24),
              Expanded(child: buildIntroText()),
            ],
          ),
        ),
        // child: LayoutBuilder(
        //   builder: (context, constraints) {
        //     if (constraints.maxWidth < 768) {
        // return Column(
        //   children: [
        //     buildBannerSlider(),
        //     buildIntroText(),
        //   ],
        // );
        //     } else {
        // return Row(
        //   children: [
        //     buildBannerSlider(),
        //     SizedBox(width: 24),
        //     Expanded(child: buildIntroText()),
        //   ],
        // );
        //     }
        //   },
      ),
    );
  }

  Text buildIntroText() {
    return Text(
      "Hey There! \n\nVisionx is an ecosystem of pratical resources for developers who want to build high-quality mobile apps.",
      style: TextStyle(fontSize: 22.0),
    );
  }

  Container buildBannerSlider() {
    return Container(
      width: 320,
      height: 180,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.centerLeft,
          end: Alignment.centerRight,
          colors: [
            Colors.red.withOpacity(0.7),
            Colors.pink.withOpacity(0.9),
          ],
        ),
        borderRadius: BorderRadius.circular(12.0),
      ),
    );
  }
}
