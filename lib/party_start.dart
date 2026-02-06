import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:party_app/animation.dart';
import 'HomeParty.dart';

class StartPage extends StatefulWidget {
  const StartPage({super.key});

  @override
  State<StartPage> createState() => _StartPageState();
}

class _StartPageState extends State<StartPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(image: AssetImage('assets/images/p2.jpeg') ,
              fit: BoxFit.cover),
        ),
        child: Container(
          decoration: BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.bottomCenter,
                  colors: [
                    Colors.black.withOpacity(.9),
                    Colors.black.withOpacity(.8),
                    Colors.black.withOpacity(.2),])
          ),
          child: Padding(padding: EdgeInsets.all(20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                FadeAnimation(1,Text("Find the best locations for a good night" ,style: TextStyle(color: Colors.white , fontSize: 45 , fontWeight: FontWeight.bold),),),
                SizedBox(height: 20,),
                FadeAnimation(2,Text("Let us find you an event for your interest" ,
                  style: TextStyle(color: Colors.white , height: 1.4 , fontSize: 18),),),
                SizedBox(height: 100,),
                FadeAnimation(2.2 ,Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      gradient: LinearGradient(colors: [Colors.blueGrey,Colors.indigoAccent])
                  ),
                  child: MaterialButton(
                    minWidth: double.infinity,
                    onPressed: () {
                      Navigator.of(context).push(MaterialPageRoute(builder: (context) => HomeParty()));
                    },
                    child: FadeAnimation( 2.5 ,
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Text("Find Your Event" , style: TextStyle(color: Colors.white , fontWeight: FontWeight.bold),),
                            Icon(Icons.arrow_forward , color: Colors.white,)
                          ],
                        )

                    ),
                  ),
                ),),
                SizedBox(height: 30,),
              ],),
          ),
        ),
      ),
    );
  }
}
