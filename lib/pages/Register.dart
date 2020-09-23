import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:marian/pages/Login.dart';

class Register extends StatefulWidget {
  @override
  _RegisterState createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  @override
  Widget build(BuildContext context) {
   return OrientationBuilder(
        builder: (context, orientation) {
          return orientation == Orientation.portrait
              ? SafeArea(
              child: Scaffold(
                  body: PortraitMode(context)
              )
          )
              : LandscapeMode(context);
        }
    );
  }
}

Widget PortraitMode(context)
{

  return SafeArea(
    child: Container(
      decoration: BoxDecoration(
          color: Colors.black38,
          image: DecorationImage(
              image: AssetImage("assets/icons/RegisterPhoto.png"), fit: BoxFit.fitWidth)),
      child: Scaffold(
        bottomNavigationBar: BottomAppBar(
          child: Container(
            padding: EdgeInsets.only(left: 20,right: 20),
            height: 60,
            color: Color(0xffFEFFD6),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                Text("Already have an account?",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                  ),),
                FlatButton(
                  onPressed: ()
                  {
                    Navigator.push(context, MaterialPageRoute(
                        builder: (context) =>Login()
                    ));
                  },
                  child: Text("Login",
                    style: TextStyle(
                      color: Color(0xffF08C00),
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),),
                ),
              ],
            ),
          ),
        ),
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          actions: [
            IconButton(
              onPressed: (){},
              icon: Image.asset("assets/icons/x.png",
                scale: 2,),
            )
          ],
        ),
        backgroundColor: Colors.black26,
        body: Container(
          padding: EdgeInsets.only(
              top: 20,
              left: 40,
              right: 40,
              bottom: 30),
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Container(
                  height: 100,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage("assets/icons/Logo.png"))),
                ),
                SizedBox(height: 20,),
                TextFormField(
                  style: TextStyle(
                      color: Colors.white
                  ),
                  cursorColor: Colors.white,
                  decoration: InputDecoration(
                    hintText: "Username",
                    hintStyle: TextStyle(
                      color: Colors.white,
                    ),
                    focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.white),
                    ),
                    enabledBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.white),
                    ),

                  ),
                ),
                SizedBox(height: 20,),
                TextFormField(
                  style: TextStyle(
                      color: Colors.white
                  ),
                  cursorColor: Colors.white,
                  decoration: InputDecoration(
                    hintText: "Password",
                    hintStyle: TextStyle(
                      color: Colors.white,
                    ),
                    focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.white),
                    ),
                    enabledBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.white),
                    ),

                  ),
                ),
                SizedBox(height: 20,),
                TextFormField(
                  style: TextStyle(
                      color: Colors.white
                  ),
                  cursorColor: Colors.white,
                  decoration: InputDecoration(
                    hintText: "Phone",
                    hintStyle: TextStyle(
                      color: Colors.white,
                    ),
                    focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.white),
                    ),
                    enabledBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.white),
                    ),

                  ),
                ),
                SizedBox(height: 20,),
                TextFormField(
                  style: TextStyle(
                      color: Colors.white
                  ),
                  cursorColor: Colors.white,
                  decoration: InputDecoration(
                    hintText: "Email",
                    hintStyle: TextStyle(
                      color: Colors.white,
                    ),
                    focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.white),
                    ),
                    enabledBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.white),
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
                        child: Text("SIGN UP",
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 20,),
                Text("or sign up with",
                  style: TextStyle(
                    color: Color(0xffCFA976),
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),),
                SizedBox(height: 20,),
                Row(
                  children: <Widget>[
                    Expanded(
                      child: FlatButton(
                        onPressed: (){},
                        child: Image.asset("assets/icons/Facebook.png",
                          scale: 2,),
                      ),
                    ),
                    Expanded(
                      child: FlatButton(
                        onPressed: (){},
                        child: Image.asset("assets/icons/Google.png",
                          scale: 2,),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    ),
  );

}

Widget LandscapeMode(context)
{

  return SafeArea(
    child: Container(
      decoration: BoxDecoration(
          color: Colors.black38,
          image: DecorationImage(
              image: AssetImage("assets/icons/RegisterPhoto.png"), fit: BoxFit.fitWidth)),
      child: Scaffold(
        bottomNavigationBar: BottomAppBar(
          child: Container(
            padding: EdgeInsets.only(left: 20,right: 20),
            height: 60,
            color: Color(0xffFEFFD6),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                Text("Already have an account?",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                  ),),
                FlatButton(
                  onPressed: ()
                  {
                    Navigator.push(context, MaterialPageRoute(
                        builder: (context) =>Login()
                    ));
                  },
                  child: Text("Login",
                    style: TextStyle(
                      color: Color(0xffF08C00),
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),),
                ),
              ],
            ),
          ),
        ),
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          actions: [
            IconButton(
              onPressed: (){},
              icon: Image.asset("assets/icons/x.png",
                scale: 2,),
            )
          ],
        ),
        backgroundColor: Colors.black26,
        body: Container(
          padding: EdgeInsets.only(
              top: 10,
              left: 100,
              right: 100,
          ),
          child: SingleChildScrollView(
            child: Column(
              children: <Widget>[
                Container(
                  height: 60,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage("assets/icons/Logo.png"))),
                ),
                TextFormField(
                  style: TextStyle(
                      color: Colors.white
                  ),
                  cursorColor: Colors.white,
                  decoration: InputDecoration(
                    hintText: "Username",
                    hintStyle: TextStyle(
                      color: Colors.white,
                    ),
                    focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.white),
                    ),
                    enabledBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.white),
                    ),
                  ),
                ),
                SizedBox(height: 20,),
                TextFormField(
                  style: TextStyle(
                      color: Colors.white
                  ),
                  cursorColor: Colors.white,
                  decoration: InputDecoration(
                    hintText: "Password",
                    hintStyle: TextStyle(
                      color: Colors.white,
                    ),
                    focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.white),
                    ),
                    enabledBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.white),
                    ),
                  ),
                ),
                SizedBox(height: 20,),
                TextFormField(
                  style: TextStyle(
                      color: Colors.white
                  ),
                  cursorColor: Colors.white,
                  decoration: InputDecoration(
                    hintText: "Phone",
                    hintStyle: TextStyle(
                      color: Colors.white,
                    ),
                    focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.white),
                    ),
                    enabledBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.white),
                    ),

                  ),
                ),
                SizedBox(height: 20,),
                TextFormField(
                  style: TextStyle(
                      color: Colors.white
                  ),
                  cursorColor: Colors.white,
                  decoration: InputDecoration(
                    hintText: "Email",
                    hintStyle: TextStyle(
                      color: Colors.white,
                    ),
                    focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.white),
                    ),
                    enabledBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.white),
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
                        child: Text("SIGN UP",
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 20,),
                Text("or sign up with",
                  style: TextStyle(
                    color: Color(0xffCFA976),
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),),
                SizedBox(height: 20,),
                Row(
                  children: <Widget>[
                    Expanded(
                      child: FlatButton(
                        onPressed: (){},
                        child: Image.asset("assets/icons/Facebook.png",
                          scale: 2,),
                      ),
                    ),
                    Expanded(
                      child: FlatButton(
                        onPressed: (){},
                        child: Image.asset("assets/icons/Google.png",
                          scale: 2,),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    ),
  );

}



