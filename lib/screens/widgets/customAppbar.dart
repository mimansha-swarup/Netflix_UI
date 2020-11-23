import 'package:flutter/material.dart';
import 'package:netflix_ui/assets.dart';

class customAppBar extends StatelessWidget {
  final double customScroll ;

  const customAppBar({Key key, this.customScroll = 0.0}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 24.0, vertical: 10.0),
      color: Colors.black.withOpacity((customScroll/350).clamp(0,1).toDouble()),
      child: SafeArea(
        child: Row(

          children: [
            Image.asset(Assets.netflixLogo0),
            const SizedBox(width: 12,),
            Expanded(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  _appBarHelper(
                    heading: 'Tv Shows',
                    onTap: () => print('Tv shows'),
                  ),
                  _appBarHelper(
                    heading: 'Movies',
                    onTap: () => print('Movies'),
                  ),
                  _appBarHelper(
                    heading: 'List',
                    onTap: () => print('List'),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

class _appBarHelper extends StatelessWidget {
  final String heading;
  final Function onTap;

  _appBarHelper({@required this.heading, @required this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Text(
        heading,
        style: TextStyle(
            color: Colors.white, fontSize: 16, fontWeight: FontWeight.w600),
      ),
    );
  }
}
