//image format must be in : // {"asset": AssetImage("provide/local/image") or NetworkImage("provide/network/image"), "head": "The Fatty Bao", "body": "foodude has been here", "bodyColor": Colors.white, "headColor": Colors.white, "recommend": true},
//minimal format only image : // {"asset": AssetImage("provide/local/image") or NetworkImage("provide/network/image"), "head": "", "body": "", "recommend": false},
import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
class Carousel extends StatefulWidget{
  Carousel({@required this.images, this.height, @required this.curve, this.margin, this.padding}) : super();
  final List<Map<String, dynamic>> images;
  final double height;
  final Curve curve;
  final EdgeInsets margin;
  final EdgeInsets padding;
  @override
  _Carousel createState() => _Carousel();
}
class _Carousel extends State<Carousel>{
  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    List<Widget> list = List();
    Widget recommended(status){
      if(status){
        return Container(
          width: size.width * 0.45,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                margin: EdgeInsets.only(top: 2),
                padding: EdgeInsets.only(top: 2, bottom: 2, left: 7, right: 7),
                child: Text('RECOMMENDED', style: TextStyle(color: Colors.black, fontSize: 12),),
                decoration: BoxDecoration(
                    color: Colors.yellow,
                    borderRadius: BorderRadius.circular(100)
                ),
              )
            ],
          ),
        );
      } else {
        return Container(
          width: size.width * 0.45,
          height: widget.height,
        );
      }
    }
    Widget data(imageLists){
      for(int i = 0; i < imageLists.length; i++){
        list.add(
            Container(
              width: size.width,
              margin: (widget.margin != null) ? widget.margin : EdgeInsets.all(10),
              padding: (widget.padding != null) ? widget.padding : EdgeInsets.all(0),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20.0),
                image: DecorationImage(
                  image: AssetImage(imageLists[i]["imageUrl"]),
                  fit: BoxFit.cover,
                ),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: <Widget>[
                  recommended(imageLists[i]["recommend"]),
                  Container(
                    width: size.width * 0.45,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Text(imageLists[i]["head"],
                          style: TextStyle(
                              color: imageLists[i]["headColor"],
                              fontSize: 18.0
                          ),
                        ),
                        Text(imageLists[i]["body"],
                          style: TextStyle(
                              color: imageLists[i]["bodyColor"],
                              fontSize: 15.0
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            )
        );
      }
      return new CarouselSlider(
        items: list,
        /*height: 170.0,
        enlargeCenterPage: true,
        autoPlay: true,
        aspectRatio: 16/9,
        autoPlayCurve: Curves.easeInOutBack,
        enableInfiniteScroll: true,
        autoPlayAnimationDuration: Duration(milliseconds: 800),
        viewportFraction: 0.99,*/
        options: CarouselOptions(
          height: widget.height,
          enlargeCenterPage: true,
          autoPlay: true,
          aspectRatio: 16/9,
          autoPlayCurve: widget.curve,
          enableInfiniteScroll: true,
          autoPlayAnimationDuration: Duration(milliseconds: 800),
          viewportFraction: 0.99,
        ),
      );
    }
    return Container(
      child: data(widget.images),
    );
  }
}