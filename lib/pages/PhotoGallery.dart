import 'package:flutter/material.dart';
import 'package:marian/models/Photo.dart';
import 'package:marian/widgets/MyAppBar.dart';
import 'package:marian/widgets/MyDrawerMenu.dart';

class PhotoGallery extends StatefulWidget {
  @override
  _PhotoGalleryState createState() => _PhotoGalleryState();
}

class _PhotoGalleryState extends State<PhotoGallery> {
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

  List<Photo> photos = [
    Photo(
      image: "assets/images/5t.jpg"
    ),
    Photo(
        image: "assets/images/3t.jpg"
    ),
    Photo(
        image: "assets/images/1t.jpg"
    ),
    Photo(
        image: "assets/images/5t.jpg"
    ),

    Photo(
        image: "assets/images/3t.jpg"
    ),
    Photo(
        image: "assets/images/1t.jpg"
    ),
    Photo(
        image: "assets/images/5t.jpg"
    ),

  ];
  return Container(
    padding: EdgeInsets.only(left: 15,right: 15,top: 30,bottom: 3),
    margin: EdgeInsets.only(left: 30,right: 30),
    child: Column(
      children: <Widget>[
        Container(
          child: Text("Photo Gallery",
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
          itemCount: photos.length,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: (orientation == Orientation.portrait) ? 2 : 3),
          itemBuilder: (BuildContext context, int index)
          {
            return new Card(
              color: Theme.of(context).canvasColor,
                elevation: 0,
                child: new GridTile(
                    child: new Image.asset(photos[index].image,
                    fit: BoxFit.cover,), //just for testing, will fill with image later
            )
            );
          },
        ),

      ],
    ),
  );

}
