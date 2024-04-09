import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar( title: Text('dozy'), backgroundColor: Colors.blue,
        ),
        body: Container(
          height: 150,
          padding: EdgeInsets.fromLTRB(20,20,20,20),
          child: Row(
            children: [
              Image.asset('dog.png', width: 150),
              Container(
                width: 300,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('도지팝니다',
                      style: TextStyle( color: Colors.blue, fontWeight: FontWeight.w900),),
                    Text('군포산본동'),
                    Text('1억5천'),
                    Row(
                    mainAxisAlignment: MainAxisAlignment.end,  
                    children: [
                      SizedBox(
                          child: TextButton( child: Icon(Icons.favorite), onPressed: (){},)
                      ),
                      Text('4'),
                    ],
                    )
                  ],
                )
              )
            ],
          )
        ),
        bottomNavigationBar: BottomAppBar( child: Text('@copyrights'),
        ),
      )
    );
  }
}
