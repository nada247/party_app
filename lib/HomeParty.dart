import 'package:flutter/material.dart';
import 'package:party_app/animation.dart';

class HomeParty extends StatefulWidget {
  const HomeParty({super.key});

  @override
  State<HomeParty> createState() => _HomePartyState();
}

class _HomePartyState extends State<HomeParty> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      appBar: AppBar(
        backgroundColor: Colors.grey[100],
        elevation: 0,
        leading: Icon(Icons.menu),
        actions: [Padding(
          padding: EdgeInsets.all(10),
          child: Stack(
              children: [Container(
                height: 35,
                width: 35,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    image: DecorationImage(image: AssetImage('assets/images/p2.jpeg') , fit: BoxFit.cover)
                ),
              ),
                Positioned(
                    top: -2,
                    right: -2,
                    child: Container(
                      height: 12,
                      width: 12,
                      decoration: BoxDecoration(
                          color: Colors.yellow,
                          shape: BoxShape.circle,
                          border: Border.all(color: Colors.white , width: 2)
                      ),
                    ))
              ]),)],
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          padding: EdgeInsets.all(20),
          scrollDirection: Axis.vertical,
          child:FadeAnimation(1,Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                padding:EdgeInsets.symmetric(vertical: 5),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    color: Colors.white
                ),
                child: FadeAnimation(1 ,
                  TextField(
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      prefixIcon: Icon(Icons.search , color: Colors.black87,),
                      hintText: "Search for Event",
                      hintStyle: TextStyle(color: Colors.grey , fontSize: 15),
                    ),
                  ),
                ),
              ),

              SizedBox(height: 25),
              FadeAnimation(1.2 ,  makePhoto(image: "assets/images/p1.jpeg" , date: 17 , title: "Cairokee 2026"),),
              SizedBox(height: 20,),
              FadeAnimation(1.2 ,  makePhoto(image: "assets/images/p3.jpeg" , date: 20 , title: "Amr Diab 2026"),),
              SizedBox(height: 20,),
              FadeAnimation(1.2 ,  makePhoto(image: "assets/images/p4.jpeg" , date: 22 , title: "Wegz 2026"),),
              SizedBox(height: 20,),
              FadeAnimation(1.2 ,  makePhoto(image: "assets/images/p5.jpeg" , date: 25 , title: "Angham 2026"),),
              SizedBox(height: 20,),
              FadeAnimation(1.2 ,  makePhoto(image: "assets/images/p2.jpeg" , date: 27 , title: "Wael jassar 2026"),),
              SizedBox(height: 20,),



            ],
          ),),
        ),
      ),
    );
  }
  Widget makePhoto({date,image , title}){
    return Row(
      children: [
        FadeAnimation(1, Container(
          width: 50,
          height: 200,
          child: Padding(padding: EdgeInsets.only(top: 10),
            child: Column(
              children: [
                Text(date.toString() , style: TextStyle(color: Colors.blue , fontWeight: FontWeight.bold , fontSize: 25),),
                Text("SEP" , style: TextStyle(color: Colors.black , fontWeight: FontWeight.bold , fontSize: 20),),
              ],
            ),
          ),
        ),),
        Expanded(child: Container(
          height: 200,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              image: DecorationImage(
                  image: AssetImage(image) , fit: BoxFit.cover)
          ),
          child: Container(
            padding: EdgeInsets.all(20),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                gradient: LinearGradient(colors: [Colors.black.withOpacity(.4) , Colors.black.withOpacity(.1)])
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text(title ,style: TextStyle(color: Colors.white , fontSize: 30 ,fontWeight: FontWeight.bold),),
                SizedBox(height: 10,),

                Row(
                  children: [
                    Icon(Icons.access_time , color: Colors.white,),
                    Text("19:00 PM " , style: TextStyle(color: Colors.white),)

                  ],
                )
              ],
            ),

          ),
        ),
        )
      ],
    );
  }
}
