import 'package:animation_wrappers/animation_wrappers.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import '../../post/post/create_post.dart';

class UploadPhotoTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Container(
      child: FadedSlideAnimation(
        beginOffset: Offset(0, 0.3),
        endOffset: Offset(0, 0),
        slideCurve: Curves.linearToEaseOut,
        child: Column(
          children: [
            Expanded(
              child: Stack(
                children: [
                  LayoutBuilder(
                    builder: (context, constraints) => Container(
                      height: constraints.maxHeight,
                      child: Image.asset(
                        'images/Layer884.png',
                        fit: BoxFit.fitHeight,
                      ),
                    ),
                  ),
                  const Positioned(
                    bottom: 10,
                    left: 10,
                    child: Icon(Icons.grid_on),
                  ),
                  const Positioned(
                    bottom: 10,
                    right: 10,
                    child: FaIcon(
                      FontAwesomeIcons.retweet,
                      size: 20,
                    ),
                  ),
                ],
              ),
            ),
            Container(
              height: 120,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Icon(
                    Icons.mic,
                    color: Colors.grey,
                    size: theme.primaryIconTheme.size,
                  ),
                  RawMaterialButton(
                    onPressed: () {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => CreatePostScreen()));
                    },
                    fillColor: theme.primaryColor,
                    shape: CircleBorder(),
                    padding: EdgeInsets.all(15),
                    child: Icon(
                      Icons.camera_alt,
                      size: 30,
                    ),
                  ),
                  Icon(
                    Icons.flash_off,
                    color: Colors.grey,
                    size: theme.primaryIconTheme.size,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
