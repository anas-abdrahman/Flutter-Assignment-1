import 'package:day_1/style/app_color.dart';
import 'package:day_1/widget/app_text_field.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;

    return Scaffold(
      body: SingleChildScrollView(
        child: Stack(
          children: [
            Container(
              height: screenSize.height,
              width: screenSize.width,
              color: AppColor.wihte,
            ),
            Container(
              height: screenSize.height * 0.3,
              color: AppColor.background,
            ),
            SafeArea(
              child: Padding(
                padding: const EdgeInsets.all(24.0),
                child: Column(
                  children: <Widget>[
                    topAppbar(),
                    SizedBox(height: 24),
                    slider(),
                    SizedBox(height: 14),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: List<Widget>.generate(5, (index) {
                        return circleButton(
                          icon: Icons.favorite_border,
                          onTap: () {},
                        );
                      }).toList(),
                    ),
                    SizedBox(
                      height: 23,
                    ),
                    mostPopular(),
                    SizedBox(
                      height: 23,
                    ),
                    dailyDiscover()
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget topAppbar() {
    return Row(
      children: [
        Expanded(
          child: Container(
            margin: EdgeInsets.only(right: 10),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.all(
                Radius.circular(5),
              ),
            ),
            child: AppTextField(
              hintText: 'Search product...',
              icon: Icon(Icons.search),
            ),
          ),
        ),
        IconButton(
          icon: Icon(Icons.shopping_cart),
          color: Colors.white,
          onPressed: () {},
        ),
        IconButton(
          icon: Icon(Icons.perm_identity),
          color: Colors.white,
          onPressed: () {},
        )
      ],
    );
  }

  Widget slider() {
    return Container(
      height: 200,
      decoration: BoxDecoration(
        color: Colors.grey[300],
        borderRadius: BorderRadius.all(
          Radius.circular(10),
        ),
      ),
    );
  }

  Widget dailyDiscover() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text(
          'Daily Discover',
          textAlign: TextAlign.left,
        ),
        SizedBox(
          height: 23,
        ),
        Row(
          children: <Widget>[
            Expanded(
              child: Container(
                height: 120,
                color: Colors.grey[300],
              ),
            ),
            SizedBox(width: 10),
            Expanded(
              child: Container(
                height: 120,
                color: Colors.grey[300],
              ),
            ),
            SizedBox(width: 10),
            Expanded(
              child: Container(
                height: 120,
                color: Colors.grey[300],
              ),
            ),
          ],
        ),
      ],
    );
  }

  Widget mostPopular() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text(
          'Most Popular',
          textAlign: TextAlign.left,
        ),
        SizedBox(
          height: 23,
        ),
        Row(
          children: <Widget>[
            Expanded(
              child: Container(
                height: 80,
                color: Colors.grey[300],
              ),
            ),
            SizedBox(width: 10),
            Expanded(
              child: Container(
                height: 80,
                color: Colors.grey[300],
              ),
            ),
          ],
        ),
        SizedBox(height: 10),
        Row(
          children: <Widget>[
            Expanded(
              child: Container(
                height: 80,
                color: Colors.grey[300],
              ),
            ),
            SizedBox(width: 10),
            Expanded(
              child: Container(
                height: 80,
                color: Colors.grey[300],
              ),
            ),
          ],
        ),
      ],
    );
  }

  Widget circleButton({GestureTapCallback onTap, IconData icon}) {
    double size = 50.0;
    return Column(
      children: <Widget>[
        InkResponse(
          onTap: onTap,
          child: new Container(
            width: size,
            height: size,
            decoration: new BoxDecoration(
              color: Colors.grey[300],
              shape: BoxShape.circle,
            ),
            child: new Icon(
              icon,
              color: Colors.white,
            ),
          ),
        ),
        SizedBox(height: 4),
        Text(
          'Text',
          style: TextStyle(color: Colors.grey, fontSize: 12),
        )
      ],
    );
  }
}
