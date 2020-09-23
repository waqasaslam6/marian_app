import 'package:flutter/material.dart';
import 'package:marian/pages/Login.dart';

class MyDrawerMenu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width*0.7,
      child: Drawer(
        child: Container(
          color: Color(0xff452321),
          child: Column(
            children: <Widget>[
              Expanded(
                flex: 1,
                child: ListView(
                  scrollDirection: Axis.vertical,
                  shrinkWrap: true,
                  padding: EdgeInsets.zero,
                  children: <Widget>[
                    SizedBox(height: 20,),
                    CircleAvatar(
                      child: Image.asset("assets/icons/MRCLOGOSideMenu.png"),
                      radius: 50,
                      backgroundColor: Colors.transparent,
                    ),
                    Container(
                      padding: EdgeInsets.only(top: 10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Text("MARIAN",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 16,
                            ),),
                        ],
                      ),
                    ),
                    Container(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Text("Retreat Center Anakkara",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 12
                            ),),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Expanded(
                flex: 2,
                child: ListView(
                  scrollDirection: Axis.vertical,
                  shrinkWrap: true,
                  padding: EdgeInsets.zero,
                  children: <Widget>[
                    ListTile(
                      leading: Image.asset("assets/icons/HomeD.png",scale: 2.0,),
                      title: Text("Home",
                      style: TextStyle(
                        color: Color(0xffCFAA76),
                        fontSize: 16
                      ),),
                    ),
                    ListTile(
                      leading: Image.asset("assets/icons/AboutD.png",scale: 2.0,),
                      title: Text("About Marian",
                        style: TextStyle(
                            color: Color(0xffCFAA76),
                            fontSize: 16
                        ),),
                    ),
                    ListTile(
                      leading: Image.asset("assets/icons/ContactD.png",scale: 2.0,),
                      title: Text("Contact",
                        style: TextStyle(
                            color: Color(0xffCFAA76),
                            fontSize: 16
                        ),),
                    ),
                    ListTile(
                      leading: Image.asset("assets/icons/NotificationsD.png",scale: 2.0,),
                      title: Text("Notifications",
                        style: TextStyle(
                            color: Color(0xffCFAA76),
                            fontSize: 16
                        ),),
                    ),
                    ListTile(
                      leading: Image.asset("assets/icons/GalleryD.png",scale: 2.0,),
                      title: Text("Photo Gallery",
                        style: TextStyle(
                            color: Color(0xffCFAA76),
                            fontSize: 16
                        ),),
                    ),
                    ListTile(
                      leading: Image.asset("assets/icons/EventsD.png",scale: 2.0,),
                      title: Text("Upcoming Events",
                        style: TextStyle(
                            color: Color(0xffCFAA76),
                            fontSize: 16
                        ),),
                    ),
                    ListTile(
                      leading: Image.asset("assets/icons/PrayerD.png",scale: 2.0,),
                      title: Text("Prayer Requests",
                        style: TextStyle(
                            color: Color(0xffCFAA76),
                            fontSize: 16
                        ),),
                    ),
                    ListTile(
                      leading: Image.asset("assets/icons/TermsD.png",scale: 2.0,),
                      title: Text("Terms of Services",
                        style: TextStyle(
                            color: Color(0xffCFAA76),
                            fontSize: 16
                        ),),
                    ),
                    ListTile(
                      leading: Image.asset("assets/icons/PrivacyD.png",scale: 2.0,),
                      title: Text("Privacy Policy",
                        style: TextStyle(
                            color: Color(0xffCFAA76),
                            fontSize: 16
                        ),),
                    ),
                    ListTile(
                      leading: Image.asset("assets/icons/SettingsD.png",scale: 2.0,),
                      title: Text("Settings",
                        style: TextStyle(
                            color: Color(0xffCFAA76),
                            fontSize: 16
                        ),),
                    ),
                    ListTile(
                      onTap: ()
                      {
                        Navigator.push(context, MaterialPageRoute(
                          builder: (context) => Login()
                        ));
                      },
                      leading: Image.asset("assets/icons/Close.png",scale: 1.2,),
                      title: Text("Logout",
                        style: TextStyle(
                            color: Color(0xffCFAA76),
                            fontSize: 16
                        ),),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      )
    );
  }
}
