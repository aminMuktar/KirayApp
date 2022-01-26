import 'package:flutter/material.dart';
import '../slide.dart';


class SlideItem extends StatelessWidget {
  final int index;

  SlideItem(this.index);
  @override
  Widget build(BuildContext context) {

    return Container(

      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,

        children: <Widget>[
          Container(
            width: 200,
            height: 200,
            decoration: BoxDecoration(
                shape: BoxShape.circle,
                image: DecorationImage(
                    image:AssetImage('assets/images/ic_launcher.png'),
                    fit: BoxFit.cover
                )
            ),
          ),
          SizedBox(
            height: 80,
          ),
          Text('Org name',
            style: TextStyle(
                fontSize: 30,
                color: Colors.green
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Text(
            slideList[index].description,
            style: TextStyle(
              fontSize: 18,
              color: Colors.black,

            ),
            textAlign: TextAlign.center,
          )

        ],
      ),
    );
  }
}
