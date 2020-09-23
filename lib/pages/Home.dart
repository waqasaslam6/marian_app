import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:marian/models/Event.dart';
import 'package:marian/models/Photo.dart';
import 'package:marian/widgets/MyDrawerMenu.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {

  final List<String> imgList = [
     'assets/images/3t.jpg',
    'assets/images/5t.jpg',
    'assets/images/achan new selected copy.jpg',
  ];

  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
  }


  @override
  Widget build(BuildContext context) {
       return OrientationBuilder(
            builder: (context, orientation) {
              return orientation == Orientation.portrait
                  ? PortraitHome(context)

                  : LandscapeHome(context);

            }
        );

  }
}

Widget PortraitHome(context)
{

  List<Photo> photos = [
    Photo(
        image: "assets/images/5t.jpg",
        text: "Slide 1: Content of a page when looking at its layout"
    ),
    Photo(
        image: "assets/images/3t.jpg",
        text: "Slide 2: Content of a page when looking at its layout"
    ),
    Photo(
        image: "assets/images/1t.jpg",
        text: "Slide 3 : Content of a page when looking at its layout"

    ),

  ];

  List<Event> events =[
    Event(
        date: "Sep 8th",
        image: "assets/images/5t.jpg",
        time: "10:00 AM"
    ),
    Event(
        date: "Oct 4th",
        image: "assets/images/1t.jpg",
        time: "10:00 AM"
    ),
    Event(
        date: "Dec 12th",
        image: "assets/images/3t.jpg",
        time: "10:00 AM"
    ),
    Event(
        date: "Jan 18th",
        image: "assets/images/5t.jpg",
        time: "10:00 AM"
    ),
    Event(
        date: "Feb 20th",
        image: "assets/images/5t.jpg",
        time: "10:00 AM"
    ),
    Event(
        date: "March 25th",
        image: "assets/images/5t.jpg",
        time: "10:00 AM"
    ),
  ];
  return SingleChildScrollView(
    child: Container(
      child: Column(
        children: <Widget>[
          Stack(
            alignment: Alignment.bottomLeft,
            children: <Widget>[
              Builder(
                builder: (context) {
                  final double height = MediaQuery.of(context).size.height*0.77;
                  return CarouselSlider(
                    options: CarouselOptions(
                      autoPlay: true,
                      height: height,
                      viewportFraction: 1.0,
                      enlargeCenterPage: false,
                      // autoPlay: false,
                    ),
                    items: photos.map<Widget>((item) => Stack(
                      alignment: Alignment.bottomLeft,
                      children: [
                        Container(
                          child: Center(
                              child: Image.asset(item.image.toString(), fit: BoxFit.cover, height: height,)
                          ),
                        ),
                        Container(
                          constraints: BoxConstraints(
                              maxHeight: 220,
                              maxWidth: 250
                          ),
                          padding: EdgeInsets.all(20),
                          margin: EdgeInsets.only(
                              bottom: 150
                          ),
                          alignment: Alignment.bottomLeft,
                          width: MediaQuery.of(context).size.width*0.7,
                          color: Theme.of(context).primaryColor,
                          child: Center(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  Container(
                                    constraints: BoxConstraints(
                                        maxHeight: 200,
                                        maxWidth: 200
                                    ),
                                    child: Text(item.text.toString(),
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 22,
                                        fontWeight: FontWeight.bold,
                                      ),),
                                  ),
                                  SizedBox(height: 20,),
                                  MaterialButton(
                                    height: 25,
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.all(Radius.circular(8)),
                                    ),
                                    onPressed: (){},
                                    color: Color(0xffF08C00),
                                    child: Text("CLICK NOW",
                                      style: TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.white,
                                      ),),
                                  ),
                                ],
                              )),
                        ),
                      ],
                    )).toList(),
                  );
                },
              ),
              Container(
                height: 100,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  shrinkWrap: true,
                  itemCount: photos.length,
                  itemBuilder: (BuildContext context, int index)
                  {
                    return Row(
                      children: <Widget>[
                        Container(
                          width: 150,
                          child: ClipRRect(
                            borderRadius: BorderRadius.all(Radius.circular(30)),
                            child: new Card(
                              child: Stack(
                                alignment: Alignment.center,
                                children: <Widget>[
                                  Image.asset(photos[index].image,
                                    fit: BoxFit.fitWidth,),
                                  Container(
                                    color: Colors.black.withOpacity(0.2),
                                  ),
                                  Icon(Icons.play_arrow,color: Colors.white,
                                    size: 40,),
                                ],
                              ),
                            ),
                          ),
                        ),
                        SizedBox(width: 5,),
                      ],
                    );
                  },
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(left: 25,right: 25,bottom: 25,top: 10),
            child: Container(
              padding: EdgeInsets.only(left: 20,right: 20,top: 10),
              height: 300,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(10)),
                border: Border.all(
                    color: Colors.grey[300]
                ),
                color: Colors.white,
              ),
              child: Text("Incline Your ear, and come to me; listen, so that you may live",
                style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 30
                ),),
            ),
          ),
          Container(
            padding: EdgeInsets.only(
                left: 15,
                top: 15
            ),
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
              color: Colors.white,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text("UPCOMING EVENTS",
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                  ),),
                SizedBox(height: 10,),
                Container(
                  height: 180,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    shrinkWrap: true,
                    itemCount: events.length,
                    itemBuilder: (BuildContext context, int index)
                    {
                      return Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Container(
                            width: 150,
                            child: ClipRRect(
                              borderRadius: BorderRadius.all(Radius.circular(25)),
                              child: new Card(
                                child: Image.asset(events[index].image,
                                  fit: BoxFit.fill,),
                              ),
                            ),
                          ),
                          SizedBox(height: 5,),
                          Text(events[index].date,
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.w500,
                            ),),
                          SizedBox(height: 5,),
                          Text(events[index].time,
                            style: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.w500,
                            ),),
                        ],
                      );
                    },
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    ),
  );

}

Widget LandscapeHome(context)
{

  List<Photo> photos = [
    Photo(
        image: "assets/images/5t.jpg",
        text: "Slide 1: Content of a page when looking at its layout"
    ),
    Photo(
        image: "assets/images/3t.jpg",
        text: "Slide 2: Content of a page when looking at its layout"
    ),
    Photo(
        image: "assets/images/1t.jpg",
        text: "Slide 3 : Content of a page when looking at its layout"

    ),

  ];

  List<Event> events =[
    Event(
        date: "Sep 8th",
        image: "assets/images/5t.jpg",
        time: "10:00 AM"
    ),
    Event(
        date: "Oct 4th",
        image: "assets/images/1t.jpg",
        time: "10:00 AM"
    ),
    Event(
        date: "Dec 12th",
        image: "assets/images/3t.jpg",
        time: "10:00 AM"
    ),
    Event(
        date: "Jan 18th",
        image: "assets/images/5t.jpg",
        time: "10:00 AM"
    ),
    Event(
        date: "Feb 20th",
        image: "assets/images/5t.jpg",
        time: "10:00 AM"
    ),
    Event(
        date: "March 25th",
        image: "assets/images/5t.jpg",
        time: "10:00 AM"
    ),
  ];
  return SingleChildScrollView(
    child: Container(
      child: Column(
        children: <Widget>[
          Stack(
            alignment: Alignment.bottomLeft,
            children: <Widget>[
              Builder(
                builder: (context) {
                  final double height = MediaQuery.of(context).size.height*0.77;
                  return CarouselSlider(
                    options: CarouselOptions(
                      autoPlay: true,
                      height: height,
                      viewportFraction: 1.0,
                      enlargeCenterPage: false,
                      // autoPlay: false,
                    ),
                    items: photos.map<Widget>((item) => Stack(
                      alignment: Alignment.bottomLeft,
                      children: [
                        Container(
                          child: Center(
                              child: Image.asset(item.image.toString(), fit: BoxFit.cover, height: height,)
                          ),
                        ),
                        Container(
                          constraints: BoxConstraints(
                              maxHeight: 200,
                              maxWidth: MediaQuery.of(context).size.width/2
                          ),
                          padding: EdgeInsets.all(20),
                          margin: EdgeInsets.only(
                            bottom: 100
                          ),
                          alignment: Alignment.bottomLeft,
                          width: MediaQuery.of(context).size.width*0.7,
                          color: Theme.of(context).primaryColor,
                          child: Center(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  Expanded(
                                    child: Container(
                                      constraints: BoxConstraints(
                                          maxHeight: 200,
                                          maxWidth: 200
                                      ),
                                      child: Text(item.text.toString(),
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 22,
                                          fontWeight: FontWeight.bold,
                                        ),),
                                    ),
                                  ),
                                  SizedBox(height: 20,),
                                  MaterialButton(
                                    height: 25,
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.all(Radius.circular(8)),
                                    ),
                                    onPressed: (){},
                                    color: Color(0xffF08C00),
                                    child: Text("CLICK NOW",
                                      style: TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.white,
                                      ),),
                                  ),
                                ],
                              )),
                        ),
                      ],
                    )).toList(),
                  );
                },
              ),

              Container(
                height: 100,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  shrinkWrap: true,
                  itemCount: photos.length,
                  itemBuilder: (BuildContext context, int index)
                  {
                    return Row(
                      children: <Widget>[
                        Container(
                          width: 150,
                          child: ClipRRect(
                            borderRadius: BorderRadius.all(Radius.circular(30)),
                            child: new Card(
                              child: Stack(
                                alignment: Alignment.center,
                                children: <Widget>[
                                  Image.asset(photos[index].image,
                                    fit: BoxFit.fitWidth,),
                                  Container(
                                    color: Colors.black.withOpacity(0.2),
                                  ),
                                  Icon(Icons.play_arrow,color: Colors.white,
                                    size: 40,),
                                ],
                              ),
                            ),
                          ),
                        ),
                        SizedBox(width: 5,),
                      ],
                    );
                  },
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(left: 25,right: 25,bottom: 25,top: 10),
            child: Container(
              padding: EdgeInsets.only(left: 20,right: 20,top: 10),
              height: 300,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(10)),
                border: Border.all(
                    color: Colors.grey[300]
                ),
                color: Colors.white,
              ),
              child: Text("Incline Your ear, and come to me; listen, so that you may live",
                style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 30
                ),),
            ),
          ),
          Container(
            padding: EdgeInsets.only(
                left: 15,
                top: 15
            ),
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
              color: Colors.white,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text("UPCOMING EVENTS",
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                  ),),
                SizedBox(height: 10,),
                Container(
                  height: 180,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    shrinkWrap: true,
                    itemCount: events.length,
                    itemBuilder: (BuildContext context, int index)
                    {
                      return Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Container(
                            width: 150,
                            child: ClipRRect(
                              borderRadius: BorderRadius.all(Radius.circular(25)),
                              child: new Card(
                                child: Image.asset(events[index].image,
                                  fit: BoxFit.fill,),
                              ),
                            ),
                          ),
                          SizedBox(height: 5,),
                          Text(events[index].date,
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.w500,
                            ),),
                          SizedBox(height: 5,),
                          Text(events[index].time,
                            style: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.w500,
                            ),),
                        ],
                      );
                    },
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    ),
  );

}
