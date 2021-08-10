import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int counter = 0;

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.amber,
        title: Text(
          'Azkari',
        ),
      ),
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/zosia-korcz-j5HQf4MpXZQ-unsplash.jpg"),
            fit: BoxFit.cover,
          ),
        ),
        child: Container(
          width: double.infinity,
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 50.0),
                child: Text(
                  '$counter',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 50.0,
                  ),
                ),
              ),
              Expanded(
                child: Container(
                  //color: Colors.black12,
                  width: double.infinity,
                  child: TextButton(
                      onPressed: (){
                        setState(() {
                          counter++;
                          if(counter==101){
                            counter = 0;
                          }
                        });
                      },
                      child: Padding(
                        padding: const EdgeInsets.all(50.0),
                        child: Container(
                          color: Colors.white54,
                          child: Text(
                            'سبحان الله وبحمده',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontSize: 65.0,
                              fontWeight: FontWeight.w900,
                              color: Colors.black,

                            ),
                          ),
                        ),
                      ),
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
