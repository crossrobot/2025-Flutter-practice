import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget { 
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context){


    return MaterialApp(
      home: Scaffold(
       appBar: AppBar(backgroundColor: Colors.white,title : TextButton.icon(onPressed: (){}, icon : Icon(Icons.arrow_drop_down), iconAlignment: IconAlignment.end, label: Text('금호동 3가', style : TextStyle(color : Colors.black))),
           actions : [IconButton(icon : Icon(Icons.search, color : Colors.black), onPressed: (){}),
            IconButton(icon : Icon(Icons.menu, color : Colors.black), onPressed: (){}),
            IconButton(icon : Icon(Icons.notifications, color : Colors.black), onPressed: (){}),
          ] ),
        body : Column(
          children: [
            Container(height : 200, decoration: BoxDecoration(border : Border.all(color : Color(0xf8b8888)), color : Colors.white), padding : EdgeInsets.all(10),
              child : Row(
                  children: [Image.asset('galaxy.png', height: 190, width : 190),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(crossAxisAlignment: CrossAxisAlignment.start ,
                          children : [
                            Text('갤럭시 Ultra', style : TextStyle(fontSize : 15)),
                            Text('대전지 유성구 어은동 * 끌올 10분 전', style : TextStyle(fontSize: 10)),
                            Text('210,000원'),
                            Row(mainAxisAlignment: MainAxisAlignment.end ,
                                children : [Icon(Icons.favorite), Text('4')])
                          ]),
                    ),
                  ]),
            ),
            Container(height : 200, decoration: BoxDecoration(border : Border.all(color : Color(0xf8b8888)), color : Colors.white), padding : EdgeInsets.all(10),
              child :
              Row(children: [Image.asset('iphone.png', height: 190, width : 190),
                Padding(
                padding: const EdgeInsets.all(8.0),
                  child:
                  Column(crossAxisAlignment: CrossAxisAlignment.start ,children : [
                    Text('아이폰 15 Pro', style: TextStyle(fontSize:15)),
                    Text('대전지 유성구 봉명동 * 끌올 7분 전', style : TextStyle(fontSize:10)),
                    Text('240,000원', textAlign: TextAlign.left),
                    Row(mainAxisAlignment: MainAxisAlignment.end,
                      children : [Icon(Icons.favorite), Text('4')])]
                  ),
                )
              ]),
            )]
      ),
      )
    );
  }
}