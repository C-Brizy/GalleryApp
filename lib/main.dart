import 'package:flutter/cupertino.dart';
import 'package:flutter_image_stack/flutter_image_stack.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  
  // This widget is the root of your application.

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Gallery App',
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  @override
 List<String> _images = [
    'https://images.unsplash.com/photo-1593642532842-98d0fd5ebc1a?ixid=MXwxMjA3fDF8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=2250&q=80',
    'https://images.unsplash.com/photo-1612594305265-86300a9a5b5b?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=1000&q=80',
    'https://images.unsplash.com/photo-1612626256634-991e6e977fc1?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=1712&q=80',
    'https://images.unsplash.com/photo-1593642702749-b7d2a804fbcf?ixid=MXwxMjA3fDF8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=1400&q=80'
  ];

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Color.fromRGBO(245, 245, 245, 1),
          title: Text(
            'Gallery',
            style: TextStyle(color: Colors.black),
          ),
          actions: [
            IconButton(
                onPressed: () {},
                icon: Icon(
                  CupertinoIcons.camera,
                  color: Colors.blue,
                ))
          ],
          bottom: PreferredSize(
              preferredSize: Size.fromHeight(50),
              child: Align(
                  alignment: Alignment.centerLeft,
                  child: Padding(
                      padding: EdgeInsets.all(10),
                      child: Text(
                        'Today',
                        style: TextStyle(
                            fontSize: 32, fontWeight: FontWeight.bold),
                      ),
                      ),
                      ),
                      ),
                      ),
      body: SafeArea(
        child: ListView(
          padding: EdgeInsets.all(10),
          children: [
            Card(
              color: Colors.white,
              margin: EdgeInsets.fromLTRB(16, 10, 16, 0),
              child: Column(
                children: [
                  ListTile(
                    leading: CircleAvatar(
                        backgroundImage: NetworkImage(
                            'https://images.unsplash.com/photo-1585890483046-9461ebc1dace?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=80')),
                    title: Text('Briana',
                        style: TextStyle(
                            fontWeight: FontWeight.w600, fontSize: 17)),
                    subtitle: Row(
                      children: [
                        Icon(Icons.location_on, size: 14, color: Colors.blue),
                        Text('Accra, Ghana')
                      ],
                    ),
                  ),
                  Image.network(
                    'https://images.unsplash.com/photo-1631624729083-c64035648cfb?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=334&q=80',
                  height: 218,
                  width: MediaQuery.of (context).size.width,
                  fit: BoxFit.cover,
                 ),
                  SizedBox(
                    height: 10,
                  ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Material(
                              color: Colors.grey.withOpacity(0.1),
                              borderRadius: BorderRadius.circular(35),
                              child:Padding(
                                padding: EdgeInsets.all(10),
                                child: Row(
                                  children: [
                                    Icon(
                                      Icons.favorite,
                                      color: Colors.red,
                                    ),
                                    SizedBox(
                                      width:5,
                                      ),
                                      Text('233',
                                       style : TextStyle(fontSize: 14),
                                      ),
                                  ],
                                ),
                              ),
                            )
                          ],
                            ),
                            SizedBox(
                              width: 20,
                            ),
                           FlutterImageStack(
                             imageList: _images, 
                             showTotalCount: false,
                             totalCount: 4,
                             itemRadius: 35,
                             itemCount: 4,
                             itemBorderWidth: 2,
                             ),
                             Material(
                              color: Colors.grey.withOpacity(0.1),
                              borderRadius: BorderRadius.circular(35),
                              child:Padding(
                                padding: EdgeInsets.all(16),
                                child: Row(
                                  children: [
                                    Icon(
                                      CupertinoIcons.chat_bubble_fill,
                                      color: Colors.grey,
                                    ),
                                    SizedBox(
                                      width:5,
                                      ),
                                      Text('123',
                                       style : TextStyle(fontSize: 14),
                                      ),
                                  ],
                                 ),
                                 ),
                                ),
                          ],
                         ),
                      ],
                      ),
                   ),
                     Card(
                    color: Colors.white,
                     margin: EdgeInsets.fromLTRB(16, 10, 16, 0),
                     child: Column(
                     children: [
                  ListTile(
                    leading: CircleAvatar(
                        backgroundImage: NetworkImage(
                            'https://images.unsplash.com/photo-1583823129868-b59a5a9cbeb6?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=334&q=80',
                            ),

                            ),
                    title: Text('Roxie Graham',
                        style: TextStyle(
                            fontWeight: FontWeight.w600, fontSize: 17)),
                    subtitle: Row(
                      children: [
                        Icon(Icons.location_on, size: 14, color: Colors.blue),
                        Text('Adabraka, Ghana')
                      ],
                    ),
                  ),
                  Image.network(
                  'https://images.unsplash.com/photo-1624281678165-6c226f4eb559?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=400&q=80',
                  height: 218,
                  width: MediaQuery.of (context).size.width,
                  fit: BoxFit.cover,
                 ),
                  SizedBox(
                    height: 10,
                  ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Material(
                              color: Colors.grey.withOpacity(0.1),
                              borderRadius: BorderRadius.circular(35),
                              child:Padding(
                                padding: EdgeInsets.all(10),
                                child: Row(
                                  children: [
                                    Icon(
                                      Icons.favorite,
                                      color: Colors.red,
                                    ),
                                    SizedBox(
                                      width:5,
                                      ),
                                      Text('1K',
                                       style : TextStyle(fontSize: 14),
                                      ),
                                  ],
                                ),
                              ),
                            )
                          ],
                            ),
                            SizedBox(
                              width: 20,
                            ),
                           FlutterImageStack(
                             imageList: _images, 
                             showTotalCount: false,
                             totalCount: 4,
                             itemRadius: 35,
                             itemCount: 4,
                             itemBorderWidth: 2,
                             ),
                             Material(
                              color: Colors.grey.withOpacity(0.1),
                              borderRadius: BorderRadius.circular(35),
                              child:Padding(
                                padding: EdgeInsets.all(16),
                                child: Row(
                                  children: [
                                    Icon(
                                      CupertinoIcons.chat_bubble_fill,
                                      color: Colors.grey,
                                    ),
                                    SizedBox(
                                      width:5,
                                      ),
                                      Text('457',
                                       style : TextStyle(fontSize: 14),
                                      ),
                                  ],
                                 ),
                                 ),
                                ),
                          ],
                         ),
                      ],
                      ),
                   ),
                
                ],
            ),
           ),
          );
         }
          }
