import 'package:bookly/core/util/assets.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CustomBookImage extends StatelessWidget {
  const CustomBookImage({
    super.key,
    this.image = AssetsData.Test,
  });

  final String image;

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 2.7 / 4,
      child: Stack(
        alignment: AlignmentDirectional.bottomEnd,
        children: [
          Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(16),
                color: Colors.red,
                image: const DecorationImage(
                    fit: BoxFit.fill, image: AssetImage(AssetsData.Test))),
          ),
          const Padding(
            padding: EdgeInsets.all(8.0),
            child: CircleAvatar(
              backgroundColor: Color(0x34FFFFFF),
              radius: 25,
              child: Icon(
                color: Colors.white,
                FontAwesomeIcons.caretRight,
                size: 25,
              ),
            ),
          )
        ],
      ),
    );
  }
}
