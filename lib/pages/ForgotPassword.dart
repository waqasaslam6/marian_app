import 'package:flutter/material.dart';
import 'package:marian/Dashboard.dart';

class ForgotPassword extends StatefulWidget {
  @override
  _ForgotPasswordState createState() => _ForgotPasswordState();
}

class _ForgotPasswordState extends State<ForgotPassword> {
  @override
  Widget build(BuildContext context) {
   return OrientationBuilder(
        builder: (context, orientation) {
          return orientation == Orientation.portrait
              ? SafeArea(
              child: Scaffold(
                  body: ForgotPortraitMode(context)
              )
          )
              : ForgotLandscapeMode(context);

        }
    );
  }
}

Widget ForgotPortraitMode(context)
{


  return SafeArea(
    child: Container(
      decoration: BoxDecoration(
          color: Colors.black38,
          image: DecorationImage(
              image: AssetImage("assets/icons/LoginPhoto.png"), fit: BoxFit.fitWidth)),
      child: Scaffold(
        bottomNavigationBar: BottomAppBar(
          child: Container(
            padding: EdgeInsets.only(left: 20,right: 20),
            height: 60,
            color: Color(0xffFEFFD6),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                Text("Remember Password?",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                  ),),
                FlatButton(
                  onPressed: ()
                  {
                    Navigator.pop(context);

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
        resizeToAvoidBottomPadding: false,
        appBar: AppBar(
          leading: Container(height: 0,),
          backgroundColor: Colors.transparent,
          elevation: 0,
          actions: [
            IconButton(
              onPressed: (){
                Navigator.pop(context);
              },
              icon: Image.asset("assets/icons/x.png",
                scale: 2,),
            )
          ],
        ),
        backgroundColor: Colors.black54,
        body: Container(
          padding: EdgeInsets.only(
              top: 20,
              left: 40,
              right: 40,
              bottom: 30),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.end,
            children: <Widget>[
              Container(
                height: 100,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage("assets/icons/Logo.png"))),
              ),
              SizedBox(height: 70,),
              Text("Forgot your password?",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                  fontWeight: FontWeight.w700,
                ),),
              SizedBox(height: 20,),
              Container(
                constraints: BoxConstraints(
                    maxWidth: MediaQuery.of(context).size.width/2
                ),
                child: Text("Confirm your email and we'll send you the instructions",
                  style: TextStyle(
                    color: Color(0xffCFA976),
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                  ),),
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
              SizedBox(height: 50,),
              Row(
                children: <Widget>[
                  Expanded(
                    child: MaterialButton(
                      height: 50,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(8)),
                      ),
                      onPressed: (){
                        Navigator.push(context, MaterialPageRoute(
                            builder: (context)=>Dashboard()
                        ));
                      },
                      color: Color(0xffF08C00),
                      child: Text("RESET PASSWORD",
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
        ),
      ),
    ),
  );


}

Widget ForgotLandscapeMode(context)
{
  return SafeArea(
    child: Container(
      decoration: BoxDecoration(
          color: Colors.black38,
          image: DecorationImage(
              image: AssetImage("assets/icons/LoginPhoto.png"), fit: BoxFit.fitWidth)),
      child: Scaffold(
        bottomNavigationBar: BottomAppBar(
          child: Container(
            padding: EdgeInsets.only(left: 20,right: 20),
            height: 60,
            color: Color(0xffFEFFD6),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                Text("Remember Password?",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                  ),),
                FlatButton(
                  onPressed: ()
                  {
                    Navigator.pop(context);

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
          leading: Container(height: 0,),
          backgroundColor: Colors.transparent,
          elevation: 0,
          actions: [
            IconButton(
              onPressed: (){
                Navigator.pop(context);
              },
              icon: Image.asset("assets/icons/x.png",
                scale: 2,),
            )
          ],
        ),
        backgroundColor: Colors.black54,
        body: SingleChildScrollView(
          child: Container(
            padding: EdgeInsets.only(
                top: 20,
                left: 40,
                right: 40,
                bottom: 30),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.end,
              children: <Widget>[
                Container(
                  height: 100,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage("assets/icons/Logo.png"))),
                ),
                SizedBox(height: 70,),
                Text("Forgot your password?",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 24,
                    fontWeight: FontWeight.w700,
                  ),),
                SizedBox(height: 20,),
                Container(
                  constraints: BoxConstraints(
                      maxWidth: MediaQuery.of(context).size.width/2
                  ),
                  child: Text("Confirm your email and we'll send you the instructions",
                    style: TextStyle(
                      color: Color(0xffCFA976),
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                    ),),
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
                SizedBox(height: 50,),
                Row(
                  children: <Widget>[
                    Expanded(
                      child: MaterialButton(
                        height: 50,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.circular(8)),
                        ),
                        onPressed: (){
                          Navigator.push(context, MaterialPageRoute(
                              builder: (context)=>Dashboard()
                          ));
                        },
                        color: Color(0xffF08C00),
                        child: Text("RESET PASSWORD",
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
          ),
        ),
      ),
    ),
  );

}



