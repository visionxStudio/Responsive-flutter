import 'package:flutter/material.dart';
import 'package:responsiveDesign/Homepage/components/title_text.dart';
import 'package:responsiveDesign/constants.dart';
import 'package:responsiveDesign/size_config.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    var defaultSize = SizeConfig.defaultSize;
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.all(defaultSize * 2),
            child: TitleText(title: "Browse by Categories"),
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: defaultSize * 2),
              child: Row(
                children: [
                  CategoryCard(
                    item: 100,
                    imageUrl:
                        "https://www.pngkey.com/png/full/534-5349268_paladin-z350-gaming-pc-w-intel-i9-9900k.png",
                    title: "paladin",
                  ),
                  SizedBox(
                    width: defaultSize * 4,
                  ),
                  CategoryCard(
                    item: 50,
                    imageUrl:
                        "https://www.scan.co.uk/images/infopages/antec/nx500/topimage.png",
                    title: "Antec",
                  ),
                  SizedBox(
                    width: defaultSize * 4,
                  ),
                  CategoryCard(
                    item: 120,
                    imageUrl:
                        "https://www.avadirect.com/Pictures/500/12635833_1.png",
                    title: "DP301M",
                  ),
                  SizedBox(
                    width: defaultSize * 4,
                  ),
                  CategoryCard(
                    item: 20,
                    imageUrl:
                        "https://www.antec.com/product/case/images/da601-pdt01.png",
                    title: "Antec",
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class CategoryCard extends StatelessWidget {
  const CategoryCard({
    Key key,
    @required this.item,
    @required this.title,
    @required this.imageUrl,
  }) : super(key: key);
  final int item;
  final String title, imageUrl;

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    var defaultSize = SizeConfig.defaultSize;
    return SizedBox(
      height: defaultSize * 20.5,
      child: AspectRatio(
        aspectRatio: 0.83,
        child: Stack(
          alignment: Alignment.bottomCenter,
          children: [
            ClipPath(
              clipper: CategoryCustomShaper(),
              child: AspectRatio(
                aspectRatio: 1.025,
                child: Container(
                  color: kSecondaryColor,
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.all(defaultSize * 1),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  TitleText(title: title),
                  SizedBox(
                    height: defaultSize,
                  ),
                  Text(
                    "$item+ Products",
                    style: TextStyle(
                      color: kTextColor.withOpacity(0.6),
                    ),
                  )
                ],
              ),
            ),
            Positioned(
              top: 0,
              left: 0,
              right: 0,
              child: AspectRatio(
                aspectRatio: 1.15,
                child: FadeInImage.assetNetwork(
                  placeholder: "assets/spinner.gif",
                  image: imageUrl,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

class CategoryCustomShaper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path = Path();
    double height = size.height;
    double width = size.width;
    double cornerSize = 30;
    path.lineTo(0, height - cornerSize);
    path.quadraticBezierTo(0, height, cornerSize, height);
    path.lineTo(width - cornerSize, height);
    path.quadraticBezierTo(width, height, width, height - cornerSize);
    path.lineTo(width, cornerSize);
    path.quadraticBezierTo(width, 0, width - cornerSize, 0);
    path.lineTo(cornerSize, cornerSize * 0.75);
    path.quadraticBezierTo(0, cornerSize, 0, cornerSize * 2);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return true;
  }
}
