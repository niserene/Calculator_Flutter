import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:idproject/calc.dart';
void main() {
  runApp(MyApp());
}
class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  String st="0.0";

  Widget build(BuildContext context) {
    return new MaterialApp(
      home: Scaffold(
        body:
        Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: <Widget>[
              Expanded(
                child: Container(
                  color:Colors.grey[900],
                  child:Center(
                    child: Text(st,style:
                      TextStyle(fontSize:30,color: Colors.amber[700],fontWeight: FontWeight.bold,letterSpacing:2.0),),
                  )
                ),
              ),
              Expanded(
                child: Container(
                  color: Colors.black87,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[Row(
                      children: <Widget>[
                        SizedBox(width: 270,),
                        FlatButton.icon(
                          onPressed: (){
                            if(st!="0.0")
                            setState(() {
                              int len=st.length;
                              String s=st.substring(0,len-1);
                              if(s=="")s="0.0";
                              st=s;
                            });
                          },
                          icon: Icon(Icons.arrow_back,color: Colors.amber[900],),
                          label:Text(""),
                        )
                      ],
                    ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: <Widget>[
                        FlatButton(
                          onPressed: (){
                            setState(() {
                              if(st=="0.0")st="";
                              st+="1";
                            });
                          },
                          color: Colors.black,
                          child: Text("1",
                          style: TextStyle(color: Colors.white70,fontSize: 25),
                          ),
                          padding:EdgeInsets.all(15),
                        ),
                        FlatButton(
                          onPressed: (){
                            setState(() {
                              if(st=="0.0")st="";
                              st+="2";
                            });
                          },
                          color: Colors.black,
                          child: Text("2",
                            style: TextStyle(color: Colors.white70,fontSize: 25),
                          ),
                          padding:EdgeInsets.all(15),
                        ),
                        FlatButton(
                        onPressed: (){
                          setState(() {
                            if(st=="0.0")st="";
                            st+="3";
                          });
                        },
                        color: Colors.black,
                        child: Text("3",
                          style: TextStyle(color: Colors.white,fontSize: 25),
                        ),
                        padding:EdgeInsets.all(15),
                        ),
                        FlatButton(
                          onPressed: (){
                            setState(() {
                              if(st=="0.0")st="";
                              st+="+";
                            });
                          },
                          color: Colors.black,
                          child: Text("+",
                            style: TextStyle(color: Colors.white70,fontSize: 25),
                          ),
                          padding:EdgeInsets.all(15),
                        ),
                      ],
                    ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: <Widget>[
                          FlatButton(
                            onPressed: (){
                              setState(() {
                                if(st=="0.0")st="";
                                st+="4";
                              });
                            },
                            color: Colors.black,
                            child: Text("4",
                              style: TextStyle(color: Colors.white70,fontSize: 25),
                            ),
                            padding:EdgeInsets.all(15),
                          ),
                          FlatButton(
                            onPressed: (){
                              setState(() {
                                if(st=="0.0")st="";
                                st+="5";
                              });
                            },
                            color: Colors.black,
                            child: Text("5",
                              style: TextStyle(color: Colors.white70,fontSize: 25),
                            ),
                            padding:EdgeInsets.all(15),
                          ),
                          FlatButton(
                            onPressed: (){
                              setState(() {
                                if(st=="0.0")st="";
                                st+="6";
                              });
                            },
                            color: Colors.black,
                            child: Text("6",
                              style: TextStyle(color: Colors.white70,fontSize: 25),
                            ),
                            padding:EdgeInsets.all(15),
                          ),
                          FlatButton(
                            onPressed: (){
                              setState(() {
                                if(st=="0.0")st="";
                                st+="-";
                              });
                            },
                            color: Colors.black,
                            child: Text("-",
                              style: TextStyle(color: Colors.white70,fontSize: 25),
                            ),
                            padding:EdgeInsets.all(15),
                          ),
                        ],
                      ),Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: <Widget>[
                          FlatButton(
                            onPressed: (){
                              setState(() {
                                if(st=="0.0")st="";
                                st+="7";
                              });
                            },
                            color: Colors.black,
                            child: Text("7",
                              style: TextStyle(color: Colors.white70,fontSize: 25),
                            ),
                            padding:EdgeInsets.all(15),
                          ),
                          FlatButton(
                            onPressed: (){
                              setState(() {
                                if(st=="0.0")st="";
                                st+="8";
                              });
                            },
                            color: Colors.black,
                            child: Text("8",
                              style: TextStyle(color: Colors.white70,fontSize: 25),
                            ),
                            padding:EdgeInsets.all(15),
                          ),
                          FlatButton(
                            onPressed: (){
                              setState(() {
                                if(st=="0.0")st="";
                                st+="9";
                              });
                            },
                            color: Colors.black,
                            child: Text("9",
                              style: TextStyle(color: Colors.white70,fontSize: 25),
                            ),
                            padding:EdgeInsets.all(15),
                          ),
                          FlatButton(
                            onPressed: (){
                              setState(() {
                                if(st=="0.0")st="";
                                st+="*";
                              });
                            },
                            color: Colors.black,
                            child: Text("*",
                              style: TextStyle(color: Colors.white70,fontSize: 25),
                            ),
                            padding:EdgeInsets.all(15),
                          ),
                        ],
                      ),Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: <Widget>[
                          FlatButton(
                            onPressed: (){
                              setState(() {
                                st="0.0";
                              });
                            },
                            color: Colors.black,
                            child: Text("AC",
                              style: TextStyle(color: Colors.amber[900],fontSize: 25),
                            ),
                            padding:EdgeInsets.all(15),
                          ),
                          FlatButton(
                            onPressed: (){
                              setState(() {
                                if(st=="0.0")st="";
                                st+="0";
                              });
                            },
                            color: Colors.black,
                            child: Text("0",
                              style: TextStyle(color: Colors.white70,fontSize: 25),
                            ),
                            padding:EdgeInsets.all(15),
                          ),
                          FlatButton(
                            onPressed: (){
                              setState(() {
                                calc m=calc(st);
                                st=m.w;
                              });
                            },
                            color: Colors.amber[900],
                            child: Text("=",
                              style: TextStyle(color: Colors.white70,fontSize: 25),
                            ),
                            padding:EdgeInsets.all(15),
                          ),
                          FlatButton(
                            onPressed: (){
                              setState(() {
                                if(st=="0.0")st="";
                                st+="/";
                              });
                            },
                            color: Colors.black,
                            child: Text("/",
                              style: TextStyle(color: Colors.white70,fontSize: 25),
                            ),
                            padding:EdgeInsets.all(15),
                          ),
                        ],
                      ),

                    ]
                  ),
                ),
              )

            ],
          ),
        ),
      ),
    );
  }
}


