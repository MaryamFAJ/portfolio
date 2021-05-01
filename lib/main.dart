import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(

        primarySwatch: Colors.blue,
      ),
      home: MyWidget(),
    );
  }
}

class MyWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
            child:Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,

                children: [
                  SizedBox(height:50),
                  SizedBox(width:50),

                  Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: Row(
                        children: [
                          CircleAvatar(
                              backgroundImage: NetworkImage('https://image.shutterstock.com/image-photo/headshot-guy-wearing-spectacles-looking-260nw-1450012283.jpg'),
                              radius: 50),
                          SizedBox(width: 20),
                          Padding(
                            padding: const EdgeInsets.all(12.0),
                            child: Column(
                                children: [
                                  Text('Titi Baker', style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold)),
                                  SizedBox(height: 5),
                                  Text('Flutter/Dart Developer', style: TextStyle(fontSize: 13, color: Colors.grey)),


                                ]),
                          ),

                        ]),
                  ),
                  SizedBox(height: 30),
                  Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: Text('With Over 5 weeks experience in dart programming language and flutter, i can build responsive mobile(android and ios) and web applications. i also have experience in data analytics', style: TextStyle(fontSize: 15, color: Colors.grey)),
                  ),
                  SizedBox(height:20),
                  Text('My SuperPowers -----', style: TextStyle(fontSize: 18, color: Colors.blue)),
                  SizedBox(height: 30,),
                  GridDashboard()

                ])));
  }
}


class GridDashboard extends StatefulWidget {

  @override
  _GridDashboardState createState() => _GridDashboardState();
}

class _GridDashboardState extends State<GridDashboard> {


  @override
  Widget build(BuildContext context) {


    return Flexible(
      child: GridView.count(
          shrinkWrap: true,
          childAspectRatio: 0.9,
          padding: EdgeInsets.only(left: 15, right: 15),
          crossAxisCount: 3,
          crossAxisSpacing: 0,
          mainAxisSpacing: 20,
          children: [

            MenuItem(icon: 'assets/Tableau.PNG',
              title: 'Tableau',

              ),

            MenuItem(icon: 'assets/dart.PNG',
              title: 'Dart',

              ),
            MenuItem(icon: 'assets/Flutter.PNG',
              title: 'Flutter',
              ),
            MenuItem(icon: 'assets/matlab.jfif',
              title: 'Matlab',
              ),

            MenuItem(icon: 'assets/r.jfif',
              title: 'R',
              ),
            MenuItem(icon: 'assets/python.jpg',
              title: 'Python',
            ),

          ]
      ),
    );
  }
}



class MenuItem extends StatelessWidget {
  final icon;
  final String title;

  const MenuItem({Key key, this.icon, this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return
      Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              height: 100,
              width: 100,
              decoration: BoxDecoration(
                  color: Color(0xffF2F2F2

                  ), borderRadius: BorderRadius.circular(10)),
              child:
              IconButton(
                icon: Image.asset(
                  icon,
                ),
              ),
            ),
            SizedBox(height: 5,),
            Container(
              child: new Text(title,
                style:  TextStyle(
                    color: Color(0xffAFAEAE),
                    fontSize: 14,
                    fontWeight: FontWeight.w400),
              ),
            )
          ]
      );
  }
}
