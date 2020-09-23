import 'package:flutter/material.dart';
import 'package:marian/models/Event.dart';
import 'package:marian/models/Photo.dart';
import 'package:marian/widgets/MyAppBar.dart';
import 'package:marian/widgets/MyDrawerMenu.dart';

class UpcomingEvents extends StatefulWidget {
  @override
  _UpcomingEventsState createState() => _UpcomingEventsState();
}

class _UpcomingEventsState extends State<UpcomingEvents> {


  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    final orientation = MediaQuery.of(context).orientation;
    return Scaffold(
      drawer: MyDrawerMenu(),
      key: _scaffoldKey,
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              _body(context,orientation),
            ],
          ),
        ),
      ),
    );
  }
}
Widget _body(context,orientation)
{


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
  return Container(
    padding: EdgeInsets.only(left: 15,right: 15,top: 30,bottom: 3),
    margin: EdgeInsets.only(left: 30,right: 30),
    child: Column(
      children: <Widget>[
        Container(
          child: Text("Upcoming Events",
            style: TextStyle(
                color: Theme.of(context).primaryColor,
                fontSize: 30,
                fontWeight: FontWeight.bold
            ),),
        ),
        SizedBox(height: 10,),
        GridView.builder(
          physics: ScrollPhysics(),
          shrinkWrap: true,
          scrollDirection: Axis.vertical,
          itemCount: events.length,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: (orientation == Orientation.portrait) ? 3 : 6),
          itemBuilder: (BuildContext context, int index)
          {
            return Column(
              crossAxisAlignment: CrossAxisAlignment.center,
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
                    fontSize: 12,
                    fontWeight: FontWeight.w500,
                  ),),
                Text(events[index].time,
                  style: TextStyle(
                    fontSize: 8,
                    fontWeight: FontWeight.w500,
                  ),),
              ],
            );
          },
        ),

      ],
    ),
  );

}