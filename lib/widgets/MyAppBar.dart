import 'package:flutter/material.dart';
import 'package:marian/widgets/MyDrawerMenu.dart';


class MyAppBar extends StatelessWidget {
  final GlobalKey<ScaffoldState> _scaffoldKey;
  MyAppBar(this._scaffoldKey);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.only(top: 15,left: 15,right: 15,bottom: 3),
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
          color: Theme.of(context).primaryColor,
        ),
        child: Center(
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              IconButton(
                icon: Image.asset("assets/icons/TermsD.png",
                  scale: 2,
                  color: Colors.white,),
                onPressed: (){
                      _scaffoldKey.currentState.openDrawer();
                },
              ),
              Container(
                  constraints: BoxConstraints(
                    maxHeight: 60,
                  ),
                  child: Image.asset("assets/icons/Logo.png")),
              IconButton(
                onPressed: (){},
                icon: Image.asset("assets/icons/NotificationSelected.png"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
