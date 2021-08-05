import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:untitled/screens/splash/splash_screen.dart';

void main() {
  runApp(MyApp());
}


class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        appBarTheme: AppBarTheme(
          backgroundColor: Colors.white,
          elevation: 0,
          centerTitle: true,
        )
      ) ,
      home: SplashScreen(),
    );
  }
}





























































// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//         home: Scaffold(
//             appBar: AppBar(
//               title: Text('AppTitle'),
//             actions: [
//               IconButton(icon: Icon(Icons.search), onPressed: (){}),
//               IconButton(icon: Icon(Icons.more_vert), onPressed: (){})
//
//             ],
//             ),
//             floatingActionButton: FloatingActionButton(
//               onPressed: () => { print('xxx')},
//               backgroundColor: Colors.blue,
//               child: Icon(Icons.apps),
//             ),
//             bottomNavigationBar: BottomNavigationBar(
//               currentIndex: 0,
//               items: [
//                 BottomNavigationBarItem(icon: Icon(Icons.people), label: ('People')),
//                 BottomNavigationBarItem(icon: Icon(Icons.weekend), label: ('Weekend')),
//                 BottomNavigationBarItem(icon: Icon(Icons.message), label: ('Message')),
//               ],
//               fixedColor: Colors.blue,
//               onTap: (int buttonIndex){ print("Current value is: ${buttonIndex.toString()}"); },
//             ),
//             drawer: Drawer(
//                 child: ListView(
//               padding: EdgeInsets.zero,
//               children: [
//                 DrawerHeader(
//                   decoration: BoxDecoration(
//                     image: DecorationImage(
//                       image: NetworkImage(
//                         'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQRdvI3iBsuXA_UnzPUQqKfq-2tcVMqxLJiIA&usqp=CAU',
//                       ),
//                       fit: BoxFit.cover,
//                     ),
//                   ),
//                 ),
//                 InkWell(
//                   onTap: (){},
//                   child: Chip(
//                     avatar: CircleAvatar(backgroundColor: Colors.green,),
//                       backgroundColor: Colors.grey.shade300,
//                     label: Text('Active Status'),
//                   ),
//                 ),
//                 ListTile(leading: CircleAvatar(backgroundImage: NetworkImage('https://i.pinimg.com/originals/29/92/0c/29920c6165f47736a998d5b9e6b1a4c0.jpg'),
//                 ),
//                 title: Text('Abeer Rady'),
//                   subtitle: Text('abeerrady@gmail.com'),
//                   trailing: PopupMenuButton(
//                     onSelected: (String result) { print(result);},
//                     itemBuilder: (BuildContext context) => [
//                       PopupMenuItem(value: "1", child: Text('CopyInfo'),),
//                       PopupMenuItem(value: "2", child: Text('Details'),),
//                       PopupMenuItem(value: "3", child: Text('Edit'),),
//                     ],
//                   ),
//                 ),
//                 ListTile(
//                   leading: Icon(Icons.home),
//                   title: Text('Main '),
//                   onTap: () {},
//                 ),
//                 ListTile(
//                   leading: Icon(Icons.format_list_bulleted_outlined),
//                   title: Text(' Item 2'),
//                   onTap: () {},
//                 ),
//               ],
//             )),
//             body: Column(
//               children: [
//                 Card(
//                   margin: EdgeInsets.all(10),
//                   color: Colors.grey,
//                   child: Center(
//                       heightFactor: 4,
//                       child: Text(
//                         'Exam!',
//                         style: TextStyle(color: Colors.white, fontSize: 20),
//                       )),
//                 ),
//                 Builder(builder: (context)
//                 {
//                   final _question = const [
//                     {
//                       'questionText' : '1- what\'s your favourit color?',
//                       'answer' : [
//                         { 'text' : 'Black' , 'score' : 10 },
//                         { 'text' : 'Red' , 'score' : 5 },
//                         { 'text' : 'Green' , 'score' : 3 },
//                         { 'text' : 'White' , 'score' : 1 },
//                       ]
//                     }
//                   ];
//                   List answers = _question[0]['answers'] as List;
//                  List QA=[_question[0] ['questionText'].toString(),
//                   ...answers.map((answer) { return answer['text'].toString();}) ];
//                 return SizedBox(height: 100,
//                  child:  ListView.builder(
//                    itemCount: QA.length,
//                    itemBuilder: (context , index){
//                      return Text(QA[index]);
//                    }
//                  ),
//                 );
//                 }
//                 ),
//               ],
//             )));
//   }
// }
