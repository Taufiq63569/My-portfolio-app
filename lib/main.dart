import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: HomePage(),
  ));
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool b = true;
  final ScrollController s = ScrollController();
  openURL(s) async {
    if (await canLaunch(s)) {
      await launch(s);
    } else {
      throw 'Could not launch the url';
    }
  }
  
  onTap(){
    s.animateTo(0, duration: Duration(milliseconds: 500), curve: Curves.easeInOut);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Container(
          padding: EdgeInsets.only(left: 13),
          child: Text('My Portfolio', style: TextStyle(color: Color.fromRGBO(161, 205, 255, 1),
            fontStyle: FontStyle.italic, fontSize:MediaQuery.of(context).size.width*.07, ),),
        ),
        //centerTitle: true,
        backgroundColor: Color.fromRGBO(0, 46, 107, 1),
        leading: Padding(
          padding: const EdgeInsets.all(8.0),
          child: ClipOval(
            child: Container(

              decoration: BoxDecoration(
                shape: BoxShape.circle,
                border: Border.all(width: 1, color: Colors.white),
                image: DecorationImage(
                  image: AssetImage("images/logo.png"),
                ),
              ),
              child: FlatButton(
                onPressed: () {
                  onTap(); 
                },
              ),
            ),
          ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(top: 8, bottom: 8, right: 15),
            child: FlatButton(
              onPressed: () {
                openURL('https://github.com/Taufiq63569/My-portfolio-app/blob/main/My%20CV/Resume%20Neloy.pdf?_pjax=%23repo-content-pjax-container');
              },
              child: Text(
                "Resume",
                style: TextStyle(
                  fontSize: MediaQuery.of(context).size.width*.045,
                ),
              ),
              color: Color.fromRGBO(0, 247, 243, 1),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(8))),
            ),
          ),
        ],
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          controller: s,
          child: Align(
            alignment: Alignment.center,
            child: Column(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.only(top: 30, bottom: 3),
                  child: Text(
                    "I am",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: MediaQuery.of(context).size.width*.07,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 50),
                  child: Text(
                    "Taufiq Ahommed Neloy",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: MediaQuery.of(context).size.width*.08,
                        fontStyle: FontStyle.italic),
                  ),
                ),
                Container(
                  padding: EdgeInsets.all(8),
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    border: Border.all(width: 2, color: Colors.white),
                  ),
                  child: CircleAvatar(
                    backgroundImage: AssetImage("images/profile.jpg"),
                    radius: 80,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 30),
                  child: Text(
                    'About',
                    style: TextStyle(
                      fontSize: MediaQuery.of(context).size.width*.1,
                      color: Color.fromRGBO(161, 205, 255, 1),
                      fontStyle: FontStyle.italic,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(30.0),
                  child: Text(
                    'As-salamualaikum. My Name is Taufiq Ahommed Neloy. I am a sutdent of Daffodil International University. My Department is Software Engineering. I have learned data structure, algorithm, SDLC. I love programming. I have learned Java and Dart. I have a great interest in mobile application development. I use flutter framework for design and firebase for backend for develop mobile application. I also love solving programming problems. I always try to develop myself every day by learing new things. I love to watch and play cricket, football, badminton. I also love regional games. I love my family and friends. I love my creator, Allah.',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: MediaQuery.of(context).size.width*.04,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 30),
                  child: Text(
                    'Skills',
                    style: TextStyle(
                      fontSize: MediaQuery.of(context).size.width*.1,
                      color: Color.fromRGBO(161, 205, 255, 1),
                      fontStyle: FontStyle.italic,
                    ),
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                Wrap(
                  spacing: 30,
                  runSpacing: 30,
                  alignment: WrapAlignment.center,
                  children: <Widget>[
                    Container(
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        border: Border.all(width: 2, color: Colors.white),
                        color: Colors.white,
                        image: DecorationImage(
                          image: AssetImage("images/java.png"),
                        ),
                      ),
                      child: FlatButton(
                        onPressed: () {
                          openURL('https://www.java.com/en/');
                        },
                      ),
                    ),
                    Container(
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        border: Border.all(width: 2, color: Colors.white),
                        color: Colors.white,
                        image: DecorationImage(
                          image: AssetImage("images/dart.png"),
                        ),
                      ),
                      child: FlatButton(
                        onPressed: () {
                          openURL('https://dart.dev/');
                        },
                      ),
                    ),
                    Container(
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        border: Border.all(width: 2, color: Colors.white),
                        color: Colors.white,
                        image: DecorationImage(
                          image: AssetImage("images/flutter.png"),
                        ),
                      ),
                      child: FlatButton(
                        onPressed: () {
                          openURL('https://flutter.dev/');
                        },
                      ),
                    ),
                    Container(
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        border: Border.all(width: 2, color: Colors.white),
                        color: Colors.white,
                        image: DecorationImage(
                          image: AssetImage("images/android.png"),
                        ),
                      ),
                      child: FlatButton(
                        onPressed: () {
                          openURL('https://developer.android.com/');
                        },
                      ),
                    ),
                    Container(
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        border: Border.all(width: 2, color: Colors.white),
                        color: Colors.white,
                        image: DecorationImage(
                          image: AssetImage("images/firebase.png"),
                        ),
                      ),
                      child: FlatButton(
                        onPressed: () {
                          openURL('https://firebase.google.com/');
                        },
                      ),
                    ),
                    Container(
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        border: Border.all(width: 2, color: Colors.white),
                        color: Colors.white,
                        image: DecorationImage(
                          image: AssetImage("images/mysql.png"),
                        ),
                      ),
                      child: FlatButton(
                        onPressed: () {
                          openURL('https://www.mysql.com/');
                        },
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 50,
                ),
                Text(
                  'Projects',
                  style: TextStyle(
                    fontSize: MediaQuery.of(context).size.width*.1,
                    color: Color.fromRGBO(161, 205, 255, 1),
                    fontStyle: FontStyle.italic,
                  ),
                ),
                SizedBox(
                  height: 50,
                ),
                Container(
                  height: 170,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: <Widget>[
                      promoCard('images/1.jpg'),
                      promoCard('images/2.jpg'),
                      promoCard('images/3.jpg'),
                      promoCard('images/4.jpg'),
                    ],
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
                Text(
                  "Weather App",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: MediaQuery.of(context).size.width*.06,
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25),
                  child: Text(
                    'This a simple application, where user can input a location name and get the weather result. Here use flutter framework for design, api for get the data of weather and dart programming language for logical statements.',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: MediaQuery.of(context).size.width*.04,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
                RaisedButton(
                  onPressed: () {
                    openURL('https://github.com/Taufiq63569/Weather-App');
                  },
                  child: Text(
                    "Project link",
                    style: TextStyle(fontSize: MediaQuery.of(context).size.width*.045),
                  ),
                  color: Color.fromRGBO(0, 247, 243, 1),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(8))),
                  padding: EdgeInsets.all(15),
                ),
                SizedBox(
                  height: 50,
                ),
                Container(
                  padding: EdgeInsets.only(left: 16),
                  height: 200,
                  child: AspectRatio(
                    aspectRatio: 1.5 / 2,
                    child: Container(
                      margin: EdgeInsets.only(right: 15.0),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        image: DecorationImage(
                            fit: BoxFit.cover,
                            image: AssetImage('images/cal.jpg')),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
                Text(
                  "Simple Calculator",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: MediaQuery.of(context).size.width*.06,
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25),
                  child: Text(
                    'This a simple calculator. Here use flutter framework for the design and dart programming language for logical statements.',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: MediaQuery.of(context).size.width*.04,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
                RaisedButton(
                  onPressed: () {
                    openURL(
                        'https://github.com/Taufiq63569/Simple-Calculator-in-flutter');
                  },
                  child: Text(
                    "Project link",
                    style: TextStyle(fontSize: MediaQuery.of(context).size.width*.045),
                  ),
                  color: Color.fromRGBO(0, 247, 243, 1),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(8))),
                  padding: EdgeInsets.all(15),
                ),
                SizedBox(
                  height: 50,
                ),
                Wrap(
                  children: <Widget>[
                    Container(
                      height: 200,
                      child: AspectRatio(
                        aspectRatio: 1.5 / 2,
                        child: Container(
                          margin: EdgeInsets.only(right: 15.0),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            image: DecorationImage(
                                fit: BoxFit.cover,
                                image: AssetImage('images/ui1.jpg')),
                          ),
                        ),
                      ),
                    ),
                    Container(
                      height: 200,
                      child: AspectRatio(
                        aspectRatio: 1.5 / 2,
                        child: Container(
                          margin: EdgeInsets.only(right: 15.0),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            image: DecorationImage(
                                fit: BoxFit.cover,
                                image: AssetImage('images/ui2.jpg')),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 15,
                ),
                Text(
                  "Simple UI design",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: MediaQuery.of(context).size.width*.06,
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25),
                  child: Text(
                    'This a simple UI design, create by using flutter framework.',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: MediaQuery.of(context).size.width*.04,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
                RaisedButton(
                  onPressed: () {
                    openURL(
                        'https://github.com/Taufiq63569/Simple-flutter-UI-1');
                  },
                  child: Text(
                    "Project link",
                    style: TextStyle(fontSize: MediaQuery.of(context).size.width*.045),
                  ),
                  color: Color.fromRGBO(0, 247, 243, 1),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(8))),
                  padding: EdgeInsets.all(15),
                ),
                SizedBox(
                  height: 50,
                ),


                Text(
                  'Explore more',
                  style: TextStyle(
                    fontSize: MediaQuery.of(context).size.width*.1,
                    color: Color.fromRGBO(161, 205, 255, 1),
                    fontStyle: FontStyle.italic,
                  ),
                ),

               Divider(
                 height: 40,
                 color: Colors.white,
                 indent: 30,
                 endIndent: 30,
               ),
                AnimatedCrossFade(
                    firstChild: Container(
                      decoration: BoxDecoration(
                        border: Border.all(width: 2, color: Colors.lightBlueAccent),
                        borderRadius: BorderRadius.all(Radius.circular(8)),
                      ),
                      child: RaisedButton(
                        onPressed: () {
                          setState(() {
                            b = false;
                          });
                        },
                        child: Text(
                          'Get in touch',
                          style: TextStyle(
                            fontSize: MediaQuery.of(context).size.width*.045,
                            color: Color.fromRGBO(161, 205, 255, 1),
                          ),
                        ),
                        color: Color.fromRGBO(0, 46, 107, 1),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.all(Radius.circular(8)),
                        ),
                        padding: EdgeInsets.all(15),
                      ),
                    ),
                    secondChild: Column(
                      children: <Widget> [
                        Wrap(
                          alignment: WrapAlignment.center,
                          spacing: 15,
                          children: <Widget>[
                            IconButton(
                                icon: Icon(FontAwesomeIcons.github, color: Colors.lightBlueAccent,),
                                iconSize: 40,
                                onPressed: () {
                                  openURL('https://github.com/Taufiq63569');
                                }),
                            IconButton(
                                icon: Icon(FontAwesomeIcons.linkedin, color: Colors.lightBlueAccent,),
                                iconSize: 40,
                                onPressed: () {
                                  openURL('https://www.linkedin.com/in/taufiq-ahommed-neloy-1421951a0/');
                                }),
                            IconButton(
                                icon: Icon(FontAwesomeIcons.twitter, color: Colors.lightBlueAccent,),
                                iconSize: 40,
                                onPressed: () {
                                  openURL('https://twitter.com/AhommedNeloy');
                                }),
                            IconButton(
                                icon: Icon(FontAwesomeIcons.facebook, color: Colors.lightBlueAccent,),
                                iconSize: 40,
                                onPressed: () {
                                  openURL('https://www.facebook.com/Shikkharthi.Neel/');
                                }),
                            SizedBox(height: 70,),
                            Center(
                              child: Column(
                                children: <Widget> [
                                  Text(
                                    'Phone: 01634-392437',
                                    style: TextStyle(
                                        fontSize: 13,
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold
                                    ),
                                  ),
                                  SizedBox(height: 8,),
                                  Text(
                                    'Mail: taufiq63569@gmail.com',
                                    style: TextStyle(
                                        fontSize: 13,
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                        Divider(
                          height: 30,
                          color: Colors.white,
                          indent: 50,
                          endIndent: 50,
                        ),
                        RaisedButton(onPressed: () {
                          setState(() {
                            b = true;
                          });
                        },
                          child: Text(
                            'Close',
                            style: TextStyle(
                              fontSize: MediaQuery.of(context).size.width*.045,
                            ),
                          ),
                          color: Color.fromRGBO(0, 247, 243, 1),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.all(Radius.circular(8))),
                          padding: EdgeInsets.all(15),),
                      ],
                    ),
                    crossFadeState: b
                        ? CrossFadeState.showFirst
                        : CrossFadeState.showSecond,
                    duration: Duration(milliseconds: 500)),

                Divider(
                  height: 30,
                  color: Colors.white,
                  indent: 50,
                  endIndent: 50,
                ),
                SizedBox(
                  height: 35,
                ),

                Text(
                  'Thank you very much.',
                  style: TextStyle(
                    fontSize: MediaQuery.of(context).size.width*.08,
                    color: Color.fromRGBO(161, 205, 255, 1),
                    fontStyle: FontStyle.italic,
                  ),
                ),

                SizedBox(
                  height: 20,
                ),


                Text(
                  'This app is developed by Taufiq Ahommed Neloy.',
                  style: TextStyle(
                    fontSize: MediaQuery.of(context).size.width*.035,
                    color: Color.fromRGBO(161, 205, 255, 1),
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
              ],
            ),
          ),
        ),
      ),
      backgroundColor: Color.fromRGBO(0, 46, 107, 1),
    );
  }

  Widget promoCard(image) {
    return AspectRatio(
      aspectRatio: 1.5 / 2,
      child: Container(
        margin: EdgeInsets.only(right: 15.0),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          image: DecorationImage(fit: BoxFit.cover, image: AssetImage(image)),
        ),
        child: Container(
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              gradient: LinearGradient(begin: Alignment.bottomRight, stops: [
                0.1,
                0.9
              ], colors: [
                Colors.black.withOpacity(.8),
                Colors.black.withOpacity(.1)
              ])),
        ),
      ),
    );
  }
}
