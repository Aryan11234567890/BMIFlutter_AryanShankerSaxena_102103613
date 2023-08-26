import 'package:flutter/material.dart';
import 'package:flutter/services.dart';


class BD extends StatefulWidget {


  const BD({Key ?key}) : super(key: key);

  @override

  State<BD> createState() => _BDState();


}

class _BDState extends State<BD> {


  final age = TextEditingController();
  final weight = TextEditingController();
  final height = TextEditingController();
  final gender = TextEditingController();


  String msg='Your height, weight and age must be POSITIVE only...';

  @override

  Widget build(BuildContext context) {

    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);

    return Scaffold(
      backgroundColor: Colors.lightGreenAccent.shade700,

      appBar: AppBar(
        title: Text('Enter Body Details:->'),
        backgroundColor: Colors.lightBlue,
      ),


      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            SizedBox(height: 100.0),


            Padding(
              padding: const EdgeInsets.all(8.0),
              child:
              TextField(
                keyboardType:
                TextInputType.numberWithOptions(decimal: true),
                decoration: InputDecoration(labelText: 'AGE (yrs)'),
                controller: age,
              ),
            ),
            SizedBox(height: 10.0),

            Padding(
              padding: const EdgeInsets.all(8.0),
              child:
              TextField(
                keyboardType:
                TextInputType.numberWithOptions(decimal: true),
                decoration: InputDecoration(labelText: 'HEIGHT (m)',),
                controller: height,
              ),
            ),
            SizedBox(height: 10.0),

            Padding(
              padding: const EdgeInsets.all(8.0),
              child:
              TextField(
                keyboardType:
                TextInputType.numberWithOptions(decimal: true),
                decoration: InputDecoration(labelText: 'WEIGHT (kgs)'),
                controller: weight,
              ),
            ),
            SizedBox(height: 10.0),

            Padding(
              padding: const EdgeInsets.all(8.0),
              child:
              TextField(
                keyboardType:
                TextInputType.numberWithOptions(decimal: true),
                decoration: InputDecoration(labelText: 'GENDER (0 for male and 1 for female)'),
                controller: gender,
              ),
            ),
            SizedBox(height: 30.0),

            ElevatedButton.icon(onPressed: (){
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => answer(
                    v1: double.tryParse(height.value.text),//Converting string to double
                    v2: double.tryParse(weight.value.text),//Converting string to double
                    v3: double.tryParse(age.value.text),//Converting string to double
                    v4: double.tryParse(gender.value.text),//Converting string to double
                  ),
                ),
              );
            },
              label: Text('RESULTS'),
              icon: Icon(Icons.navigate_next),
            ),


            SizedBox(height: 30.0,),

            Text(msg, textAlign: TextAlign.center,),
            Text('AryanShankerSaxena_102103613'),

          ],
        ),
      ),
    );
  }


}







class answer extends StatefulWidget {

  final v1;
  final v2;
  final v3;
  final v4;


  answer({Key ?key, this.v1, this.v2, this.v3, this.v4}) : super(key: key);



  @override
  State<answer> createState() => _answerState();


}

class _answerState extends State<answer> {


  @override

  Widget build(BuildContext context) {

    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);

    return Scaffold(
      backgroundColor: Colors.grey[850],
      appBar: AppBar(
        title: const Text('Results',
          style: TextStyle(
            fontWeight: FontWeight.bold,
          ),),
        backgroundColor: Colors.teal,
      ),

      body:
      Padding(
        padding: const EdgeInsets.all(20.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text('AryanShankerSaxena_102103613', style: TextStyle(color: Colors.white,),),
              SizedBox(height: 35.0,),


              //here i ran "flutter run --no-sound-null-safety" for the calculations to work...


              Text('-> Body Mass Index (BMI)', style: TextStyle(color: Colors.white,),),//CODE FOR CALCULATING BMI...
              SizedBox(height: 5.0,),
              Text("${((widget.v2)/((widget.v1)*(widget.v1)))}", style: TextStyle(color: Colors.amber, fontWeight: FontWeight.bold, fontSize: 24.0),),
              SizedBox(height: 20.0,),

              Text('-> Body Fat Percentage (BFP)', style: TextStyle(color: Colors.white,),),//CODE FOR CALCULATING BODY FAT PERCENTAGE...
              SizedBox(height: 5.0,),
              widget.v4==0 ? Text("${(((widget.v2)/((widget.v1)*(widget.v1))) * 1.2)+(0.23 * widget.v3)-16.2} %", style: TextStyle(color: Colors.blue, fontWeight: FontWeight.bold, fontSize: 24.0),) : Text("${(((widget.v2)/((widget.v1)*(widget.v1))) * 1.2)+(0.23 * widget.v3)-5.4} %", style: TextStyle(color: Colors.pink, fontWeight: FontWeight.bold, fontSize: 24.0),),
              SizedBox(height: 20.0,),

              Text('-> Body Water Percentage (BWP)', style: TextStyle(color: Colors.white,),),//CODE FOR CALCULATING BODY WATER PERCENTAGE...
              SizedBox(height: 5.0,),
              widget.v4==0 ? Text("${((2.447 - (0.09156 * widget.v3) + (.1074 * widget.v1 * 100)+(.3362 * widget.v2))/widget.v2) * 100} %", style: TextStyle(color: Colors.blue, fontWeight: FontWeight.bold, fontSize: 24.0),) : Text("${((-2.097 + (.1074 * widget.v1 * 100)+(.2466 * widget.v2))/widget.v2) * 100} %", style: TextStyle(color: Colors.pink, fontWeight: FontWeight.bold, fontSize: 24.0),),
              SizedBox(height: 50.0,),


              Text('Scroll down for intel to tally your results with and know the status of your body...', style: TextStyle(color: Colors.white, fontFamily: 'Times New Roman', fontWeight: FontWeight.bold),),
              SizedBox(height: 40.0,),


              Text('==> If your BMI is:', style: TextStyle(color: Colors.white, fontSize: 17.0),),
              SizedBox(height: 7.5,),
              Text('* Less than 18.5, you are underweight.', style: TextStyle(color: Colors.blue,),),
              SizedBox(height: 1.0,),
              Text('* Between 18.6 and 23, you are healthy.', style: TextStyle(color: Colors.lightGreenAccent[400],),),
              SizedBox(height: 1.0,),
              Text('* Greater than 23.1, you are overweight.', style: TextStyle(color: Colors.orange,),),
              SizedBox(height: 1.0,),
              Text('* Greater than 30, you are obese.', style: TextStyle(color: Colors.redAccent[700],),),
              SizedBox(height: 25.0,),


              Text('==> Body Fat percentage: ', style: TextStyle(color: Colors.white, fontSize: 17.0),),
              SizedBox(height: 7.5,),
              Image.asset('assets/bfp.png'),
              SizedBox(height: 25.0,),


              Text('==> Body Water Percentage: ', style: TextStyle(color: Colors.white, fontSize: 17.0),),
              SizedBox(height: 7.5, ),
              Image.asset('assets/bwp.png'),
              SizedBox(height: 4.0,),
              Text('* Red Bars indicates deficiency or excess of water whereas green bars indicate right amount of water in your body.', style: TextStyle(color: Colors.orange[700],),),
              SizedBox(height: 50.0,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  ElevatedButton(onPressed: () {
                    SystemNavigator.pop();
                  },
                      child: Text('Exit the app'),
                      style: ElevatedButton.styleFrom(
                        primary: Colors.orange,
                      )),
                  ElevatedButton(onPressed: (){
                    Navigator.of(context).pushNamedAndRemoveUntil('/home', (Route<dynamic> route) => false);
                  },
                      child: Text('Back to home')),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}