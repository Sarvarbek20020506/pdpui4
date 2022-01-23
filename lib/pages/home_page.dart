import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:pdpui4/pages/notification.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);
static final String id="home_page";
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Cars",
        style: TextStyle(
          color: Colors.red,
          fontSize: 25,
        ),),
        elevation: 0,
        backgroundColor: Colors.transparent,
        brightness: Brightness.light,
        actions: [
          IconButton(
            icon: Icon(Icons.notifications_outlined,color: Colors.red,),
            onPressed:(){Navigator.pushReplacementNamed(context,  NotificationPage.id);},
          ),
          IconButton(
            icon: Icon(Icons.shopping_cart,color: Colors.red,),
            onPressed:(){Navigator.pushReplacementNamed(context,  NotificationPage.id);},
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.all(20),
          child: Column(
            children: [
              //#listtegs
              Container(
                height: 40,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    singleTab(true,"All"),
                    singleTab(false,"Red"),
                    singleTab(false,"Green"),
                    singleTab(false,"Blue"),
                    singleTab(false,"Grey"),
                  ],
                ),
              ),
              SizedBox(height: 20,),
              //#products
              Column(
                children: [
                  makeItem("assets/images/bmw.jpeg","BMW","gasoline","85 000 \$"),
                  SizedBox(height: 20,),
                  makeItem("assets/images/gelik.png","Gelandewagen","gasoline"," 200 000\$"),
                  SizedBox(height: 20,),
                  makeItem("assets/images/hundaisonata.jpeg","Sonata","gasoline","45 000 \$"),
                  SizedBox(height: 20,),
                  makeItem("assets/images/icar.webp","iCar","Electric","85000 \$"),
                  SizedBox(height: 20,),
                  makeItem("assets/images/tayota.jpeg","Land Cruiser","gasoline","150 000 \$"),
                  SizedBox(height: 20,),
                  makeItem("assets/images/teslamodels.webp","Model S","Electric","90 000 \$"),
                ],
              ),
            ],
          ),
        ),
      )
    );
  }
  Widget singleTab(bool type,String text){
    return AspectRatio(
        aspectRatio:2.2/1,
      child: Container(
       margin:EdgeInsets.only(right: 10),
       decoration: BoxDecoration(
         color: type? Colors.redAccent:Colors.white,
         borderRadius: BorderRadius.circular(16),
       ),
        child:Center(
          child:  Text(text,style: TextStyle(
            fontSize: type?20:17,

          ),),
        ),
      ),
    );
  }
  Widget makeItem(String image,String NameCar,String fueltype,String Price){
    return Container(
      height: 250,
      width: double.infinity,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        image: DecorationImage(
          image: AssetImage(image),
        ),
        boxShadow: [
          BoxShadow(
            color: Colors.grey,
            blurRadius: 10,
            offset: Offset(0,10),
          ),
    ],
      ),

      child: Container(
        padding: EdgeInsets.all(20),
    decoration: BoxDecoration(
    borderRadius: BorderRadius.circular(20),
    gradient: LinearGradient(
      begin: Alignment.bottomRight,
      colors: [
        Colors.black.withOpacity(0.9),
        Colors.black.withOpacity(0.6),
        Colors.black.withOpacity(0.3),
        Colors.black.withOpacity(0.1),
      ],
    ),
    ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Text(NameCar,style: TextStyle(color: Colors.white,fontSize: 25,),),
                SizedBox(width: 10,),
                Text(fueltype,style: TextStyle(color: Colors.red,fontSize: 20,),),
              ],
            ),
            Text(Price,style: TextStyle(color: Colors.white,fontSize: 20,),),
            Expanded(
              child: Container(
              ),
            ),
            Container(
              height: 35,
              width: 35,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.red,
              ),
              child: Icon(Icons.favorite_border_outlined,color: Colors.white,),
            ),

          ],
        ),
      ),
    );
  }
}
