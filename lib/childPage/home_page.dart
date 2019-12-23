import 'package:flutter/material.dart';
// import '../widgets/Swiper.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build (BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('公司首页'),
        brightness: Brightness.dark,
      ),
      // body: Center(
      //   child: Text('3子公司页面'),
      // ),
      body: ListView(
        children: <Widget>[
          Image.asset(
            'assets/images/img4.png',
            height: 300.0,
            fit: BoxFit.contain,
          ),
          Text(
            '公司页面',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 30,
              color: Color.fromRGBO(0, 0, 0, 1)
            )
          ),
        ],
      )
    );
  }
}

// class ImgX extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return DecoratedBox(
//       decoration: BoxDecoration(
//         image: DecorationImage(
//           image: AssetImage('assets/images/img1.png')
//         )
//       ),
//     );
//   }
// }
// class SwiperPage extends StatefulWidget {
//   @override
//   SwiperPageState createState() => SwiperPageState();
// }

// class SwiperPageState extends State<SwiperPage> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       // appBar: AppBar(
//       //   title: Text('轮播组件'),
//       // ),
//       body: Container(
//           width: MediaQuery.of(context).size.width,
//           height: 200.0,
//           child: Swiper(
//             itemBuilder: _swiperBuilder,
//             itemCount: 3,
//             pagination: new SwiperPagination(
//                 builder: DotSwiperPaginationBuilder(
//               color: Colors.black54,
//               activeColor: Colors.white,
//             )),
//             control: new SwiperControl(),
//             scrollDirection: Axis.horizontal,
//             autoplay: true,
//             onTap: (index) => print('点击了第$index个'),
//           )),
//     );
//   }

//   Widget _swiperBuilder(BuildContext context, int index) {
//     return (Image.network(
//       "http://via.placeholder.com/350x150",
//       fit: BoxFit.fill,
//     ));
//   }
// }