import 'package:flutter/material.dart';
import 'package:emoji/main.dart';
class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height,
      width: double.infinity,
      child: Stack(
        children: <Widget>[
          //container for top data
          Container(
            margin: EdgeInsets.symmetric(horizontal:32,vertical:32),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Wrap(
               // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                Text("\$2589.90",style: TextStyle(color: Colors.white, fontSize: 36,fontWeight: FontWeight.w400),),
                Container(
                  child:Wrap( 
                    children: <Widget>[
                      Icon(Icons.notifications,color:Colors.lightBlue[100],),
                      SizedBox(width: 16,),
                      CircleAvatar(
                        radius: 25,
                        backgroundColor: Colors.white,
                        child: ClipOval( 
                          child: Image.asset("assets/contact.jpg",fit:BoxFit.contain),
                        ),
                      ),
                    ],
                  ),
                ),
                Text("Available Balance",style: TextStyle(fontWeight: FontWeight.w700, fontSize: 16,color: Colors.blue[100]),),
                SizedBox(height: 24,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Container(
                      child:Column(
                        children: <Widget>[
                          Container(
                            decoration:BoxDecoration(
                              color: Color.fromRGBO(243, 245, 248, 1),
                              borderRadius: BorderRadius.all(Radius.circular(18)) 
                              ),
                              child: Icon(Icons.date_range, color:Colors.blue[900], size:30,),
                              padding: EdgeInsets.all(12),
                          ),
                          SizedBox(
                            height: 4,
                          ),
                          Text("Send",style: TextStyle(fontWeight: FontWeight.w700, fontSize: 14,color: Colors.blue[100]),),

                        ],
                       )
                     ),

                      Flexible(
                      child:Column(
                        children: <Widget>[
                          Container(
                            decoration:BoxDecoration(
                              color: Color.fromRGBO(243, 245, 248, 1),
                              borderRadius: BorderRadius.all(Radius.circular(18)) 
                              ),
                              child: Icon(Icons.public, color:Colors.blue[900], size:30,),
                              padding: EdgeInsets.all(12),
                          ),
                            SizedBox(
                            height: 4,
                          ),
                          Text("Request",style: TextStyle(fontWeight: FontWeight.w700, fontSize: 14,color: Colors.blue[100]),),

                        ],
                       )
                     ),

                      Flexible(
                      child:Column(
                        children: <Widget>[
                          Container(
                            decoration:BoxDecoration(
                              color: Color.fromRGBO(243, 245, 248, 1),
                              borderRadius: BorderRadius.all(Radius.circular(18)) 
                              ),
                              child: Icon(Icons.attach_money, color:Colors.blue[900], size:30,),
                              padding: EdgeInsets.all(12),
                          ),
                            SizedBox(
                            height: 4,
                          ),
                          Text("Loan",style: TextStyle(fontWeight: FontWeight.w700, fontSize: 14,color: Colors.blue[100]),),

                        ],

                       )
                     ),

                      Flexible(
                      child:Column(
                        children: <Widget>[
                          Container(
                            decoration:BoxDecoration(
                              color: Color.fromRGBO(243, 245, 248, 1),
                              borderRadius: BorderRadius.all(Radius.circular(18)) 
                              ),
                              child: Icon(Icons.trending_down, color:Colors.blue[900], size:30,),
                              padding: EdgeInsets.all(12),
                          ),
                            SizedBox(
                            height: 4,
                          ),
                          Text("Topup",style: TextStyle(fontWeight: FontWeight.w700, fontSize: 14,color: Colors.blue[100]),),

                        ],

                       )
                     ),


                     
                   ],
                 )
                ],
              ),
              ]
           )
          ),
       

       //draggable sheet

       DraggableScrollableSheet(
         builder:(context,scrollController){
           return Container(
            decoration: BoxDecoration(
              color: Color.fromRGBO(243, 245, 248, 1),
              borderRadius: BorderRadius.only(topLeft:Radius.circular(40), topRight: Radius.circular(40))
            ),
            child: SingleChildScrollView(
              child:Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[


                  SizedBox(height: 24,),
                  Container(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        
                        Text("Recent Transactions",style: TextStyle(fontWeight: FontWeight.w900, fontSize: 24,color: Colors.black),),
                        Text("See all",style: TextStyle(fontWeight: FontWeight.w900, fontSize: 16,color: Colors.grey[800]),),
                      ],
                    ),
                    padding: EdgeInsets.symmetric(horizontal: 32),
                  ),
                  
                  
                  
           SizedBox(height: 16,),
          //container for button
          Container(
            padding: EdgeInsets.symmetric(horizontal:5),
            child: Row(
              children: <Widget>[
                Container(
                  child: Text("All",style:TextStyle(fontWeight: FontWeight.w700, fontSize: 14 , color: Colors.grey[900]),),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.all(Radius.circular(20)),
                    boxShadow: [BoxShadow(color: Colors.grey[200],blurRadius: 10.0,spreadRadius: 4.5)]
                  ),
                  padding: EdgeInsets.symmetric(horizontal:20,vertical:10),
                ),
             
             
             SizedBox(width: 16,),
               Container(
                  child: Row(
                    children: <Widget>[
                      CircleAvatar(
                        radius: 8,
                        backgroundColor: Colors.green,
                      ),
                      SizedBox(width: 8,
                      ),

                      Text("Income",style:TextStyle(fontWeight: FontWeight.w700, fontSize: 14 , color: Colors.grey[900]),),
                    ],

                  ),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.all(Radius.circular(20)),
                    boxShadow: [BoxShadow(color: Colors.grey[200],blurRadius: 10.0,spreadRadius: 4.5)]
                  ),
                  padding: EdgeInsets.symmetric(horizontal:20,vertical:10),
                ),


                SizedBox(width: 16,),
                 Container(
                  child:  Wrap(
                    children: <Widget>[
                      CircleAvatar(
                        radius: 8,
                        backgroundColor: Colors.orange,
                      ),
                      SizedBox(width: 8,
                      ),

                      Text("Expenses",style:TextStyle(fontWeight: FontWeight.w700, fontSize: 14 , color: Colors.grey[900]),),
                    ],
                  ),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.all(Radius.circular(20)),
                    boxShadow: [BoxShadow(color: Colors.grey[200],blurRadius: 10.0,spreadRadius: 4.5)]
                  ),
                  padding: EdgeInsets.symmetric(horizontal:20,vertical:10),
                ),
                


                
                SizedBox(height: 16,),
                //container ListView for Expressand iconns
                Container(
                  child: Wrap(children: <Widget>[
                     Text("TODAY",style: TextStyle(fontSize:15,fontWeight:FontWeight.w700,color:Colors.green[500]),),
                  //padding: EdgeInsets.symmetric(horizontal: 32),

                  ],
                  ),
                ),
              
                SizedBox(height: 16,),
               ListView.builder(
                 itemBuilder: (context,index){
                   return Container(
                     margin: EdgeInsets.symmetric(horizontal:32),
                     padding: EdgeInsets.all(16),
                     decoration: BoxDecoration(
                       color: Colors.white,
                       borderRadius: BorderRadius.all(Radius.circular(20))
                     ),
                     child: Wrap(
                       direction: Axis.vertical,
                       children: <Widget>[
                         Container(
                           decoration: BoxDecoration(
                       color: Colors.grey[100],
                       borderRadius: BorderRadius.all(Radius.circular(18))
                     ),
                     child: Icon(Icons.date_range,color:Colors.lightBlue[900],),
                     padding: EdgeInsets.all(12),

                         )
                       ],
                     ),
                   );
               },
               shrinkWrap: true,
               itemCount: 2,
               ) 
              ],
            ),
          ),
                ],

              ),
            ),
           );

         }
       ),
        ],
      ),
    );
  }
}