import 'package:assignment/contact.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Task Assignment',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Task Assignment Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  List<Contact>  contacts = getSortedContacts();

  static List<Contact> getSortedContacts() {
    //DateFormat.yMMMEd().format("30/6/2020")

    const contacts = [
      {
"user": "Chan Saw Lin",
"phone": "0152131113",
"checkIn": "2020-06-30 16:10:05",
},
{
"user": "Lee Saw Loy",
"phone": "0161231346",
"checkIn": "2020-07-11 15:39:59",
},
{
"user": "Khaw Tong Lin",
"phone": "0158398109",
"checkIn": "2020-08-19 11:10:18",
},
{
"user": "Lim Kok Lin",
"phone": "0168279101",
"checkIn": "2020-08-19 11:11:35",
},
{
"user": "Low Jun Wei",
"phone": "0112731912",
"checkIn": "2020-08-15 13:00:05",
},
{
"user": "Yong Weng Kai",
"phone": "0172332743",
"checkIn": "2020-07-31 18:10:11",
},
{
"user": "Jayden Lee",
"phone": "0191236439",
"checkIn": "2020-08-22 08:10:38",
},
{
"user": "Kong Kah Yan",
"phone": "0111931233",
"checkIn": "2020-07-11 12:00:00",
},
{
"user": "Jasmine Lau",
"phone": "0162879190",
"checkIn": "2020-08-01 12:10:05",
},
{
"user": "Chan Saw Lin",
"phone": "016783239",
"checkIn": "2020-08-23 11:59:05",
}
    ];

    List<Contact> sortedContacts = contacts.map<Contact>(Contact.fromJson).toList();
    sortedContacts.sort((a, b) => b.checkIn.compareTo(a.checkIn)); //sort by time descending order

    return sortedContacts;
  }

  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
      appBar: AppBar(
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text(widget.title),
      ),
      body: Container(
        // Center is a layout widget. It takes a single child and positions it
        // in the middle of the parent.
        child: Column(
          // Column is also a layout widget. It takes a list of children and
          // arranges them vertically. By default, it sizes itself to fit its
          // children horizontally, and tries to be as tall as its parent.
          //
          // Invoke "debug painting" (press "p" in the console, choose the
          // "Toggle Debug Paint" action from the Flutter Inspector in Android
          // Studio, or the "Toggle Debug Paint" command in Visual Studio Code)
          // to see the wireframe for each widget.
          //
          // Column has various properties to control how it sizes itself and
          // how it positions its children. Here we use mainAxisAlignment to
          // center the children vertically; the main axis here is the vertical
          // axis because Columns are vertical (the cross axis would be
          // horizontal).
          mainAxisAlignment: MainAxisAlignment.start,
          children: contacts.map((contact){
            return Container(
              child: ListTile(
                title: Text(contact.user),
                subtitle: Text(contact.phone + " " + contact.checkIn)
                //subtitle: Text(contact.checkIn)
              )
            );
          }).toList(),
      ),
      )
    );
  }
}
