import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:marian/widgets/MyAppBar.dart';
import 'package:marian/widgets/MyDrawerMenu.dart';

class PrayerRequest extends StatefulWidget {
  @override
  _PrayerRequestState createState() => _PrayerRequestState();
}

class _PrayerRequestState extends State<PrayerRequest> {

  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
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
              _body(context),
            ],
          ),
        ),
      ),
    );
  }
}



Widget _body(context)
{
  return Container(
    padding: EdgeInsets.only(left: 15,right: 15,top: 30,bottom: 3),
    margin: EdgeInsets.only(left: 30,right: 30),
    child: Column(
      children: <Widget>[
        Container(
          child: Text("Prayer Request",
          style: TextStyle(
            color: Theme.of(context).primaryColor,
            fontSize: 30,
            fontWeight: FontWeight.bold
          ),),
        ),
        SizedBox(height: 5,),
        Container(
          child: Text("Please fill out the form below",
            style: TextStyle(
                color: Theme.of(context).primaryColor,
                fontSize: 16,
            ),),
        ),
        SizedBox(height: 15,),
        Container(
        padding: EdgeInsets.only(left: 15,right: 15),
         decoration: BoxDecoration(
           borderRadius: BorderRadius.all(Radius.circular(15)),
           color: Colors.white,
            border: Border.all(
              color: Colors.grey[300]
            )
         ),
          child: TextFormField(
            decoration: InputDecoration(
              hintText: "Name",
              hintStyle: TextStyle(
                color: Colors.black
              ),
              border: InputBorder.none,
              focusedBorder: InputBorder.none,
              enabledBorder: InputBorder.none,
              errorBorder: InputBorder.none,
              disabledBorder: InputBorder.none,
            ),
          ),
        ),
        SizedBox(height: 20,),
        Container(
          padding: EdgeInsets.only(left: 15,right: 15),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(15)),
              color: Colors.white,
              border: Border.all(
                  color: Colors.grey[300]
              )
          ),
          child: TextFormField(
            decoration: InputDecoration(
              hintText: "Email",
              hintStyle: TextStyle(
                  color: Colors.black
              ),
              border: InputBorder.none,
              focusedBorder: InputBorder.none,
              enabledBorder: InputBorder.none,
              errorBorder: InputBorder.none,
              disabledBorder: InputBorder.none,
            ),
          ),
        ),
        SizedBox(height: 20,),
        Container(
          padding: EdgeInsets.only(left: 15,right: 15),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(15)),
              color: Colors.white,
              border: Border.all(
                  color: Colors.grey[300]
              )
          ),
          child: TextFormField(
            keyboardType: TextInputType.number,
            decoration: InputDecoration(
              hintText: "Phone Number",
              hintStyle: TextStyle(
                  color: Colors.black
              ),
              border: InputBorder.none,
              focusedBorder: InputBorder.none,
              enabledBorder: InputBorder.none,
              errorBorder: InputBorder.none,
              disabledBorder: InputBorder.none,
            ),
          ),
        ),
        SizedBox(height: 20,),
        Container(
          padding: EdgeInsets.only(left: 15,right: 15),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(15)),
              color: Colors.white,
              border: Border.all(
                  color: Colors.grey[300]
              )
          ),
          child: TextFormField(
            minLines: 5,
            maxLines: 6,
            keyboardType: TextInputType.text,
            decoration: InputDecoration(
              hintText: "Type your payer request here...",
              hintStyle: TextStyle(
                  color: Colors.black
              ),
              border: InputBorder.none,
              focusedBorder: InputBorder.none,
              enabledBorder: InputBorder.none,
              errorBorder: InputBorder.none,
              disabledBorder: InputBorder.none,
            ),
          ),
        ),
        SizedBox(height: 20,),
        Row(
          children: <Widget>[
            Expanded(
              child: MaterialButton(
                height: 50,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(8)),
                ),
                onPressed: (){},
                color: Color(0xffF08C00),
                child: Text("SUBMIT",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),),
              ),
            ),
          ],
        ),

      ],
    ),
  );

}