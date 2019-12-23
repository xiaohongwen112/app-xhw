import 'package:flutter_swiper/flutter_swiper.dart';
import 'package:flutter/material.dart';

class SwiperDiy extends StatelessWidget {
  List<String> SwiperDataList = ['img1', 'img2'];
  // const SwiperDiy({Key key, this.SwiperDataList}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 170,
      child: Swiper(
        itemBuilder: (BuildContext context, int index) {
          return Image.asset("assets/images/${SwiperDataList[index]}.png");
        },
        itemCount: 2,
        pagination: new SwiperPagination(),
        autoplay: true
      ),
    );
  }
}