import 'package:flutter/material.dart';
import 'package:flutter/services.dart';


class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {

  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: Text(
          'Welcome user!!',
          style: TextStyle(
            color: Colors.amber,
          ),
        ),
        backgroundColor: Colors.teal,
        shadowColor: Colors.black,
      ),
      body: Column(
        children: <Widget>[
          SizedBox(height: 100.0, width: 60.0),
          Image.asset('assets/gym.jpg'),
          Text('AryanShankerSaxena_102103613', style: TextStyle(color: Colors.white),),
          SizedBox(height: 60.0),
          Center(
            child: Text('One app to know all facts about your body!!',
            style: TextStyle(
              color: Colors.white,
            ),),
          ),
          SizedBox(height: 60.0),
          Text('This app will let you know your:- ',
          style: TextStyle(
            color: Colors.white,
          ),),
          SizedBox(height: 15.0,),
          Text('-Body Fat Percentage (BFP)',
          style: TextStyle(
            color: Colors.white,
          ),),
          SizedBox(height: 5.0,),
          Text('-Body Water Percentage (BWP)',
            style: TextStyle(
              color: Colors.white,
            ),),
          SizedBox(height: 5.0,),
          Text('-Body Mass Index (BMI)',
            style: TextStyle(
              color: Colors.white,
            ),),
          SizedBox(height: 50.0),
          ElevatedButton.icon(onPressed: () {
            Navigator.pushNamed(context, '/BD');
          },
            icon: Icon(Icons.start),
            label: Text('START'),
          ),
        ],
      ),
    );
  }
}
