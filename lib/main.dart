// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter_svg/flutter_svg.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            SvgPicture.network(
                'http://upload.wikimedia.org/wikipedia/commons/0/02/SVG_logo.svg'),
            CarouselSlider(
              options: CarouselOptions(height: 400.0),
              items: ['emoji', 'image'].map((i) {
                return Builder(
                  builder: (BuildContext context) {
                    return Container(
                        width: MediaQuery.of(context).size.width,
                        margin: EdgeInsets.symmetric(horizontal: 5.0),
                        child: SvgPicture.asset('assets/images/$i.svg')
                    );
                  },
                );
              }).toList(),
            )
            //Image.network(
            //  'https://sun9-82.userapi.com/impg/RhT6TvXUzsKreMObXjbo4xpupAhHN_8Cz3NzPA/AZsO6abEYMI.jpg?size=1920x1150&quality=96&sign=6c6b37165a757f5621b08747e9b3555a&type=album')
          ],
        ),
      ),
    );
  }
}
