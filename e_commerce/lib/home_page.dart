import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  // Reference to Firestore collection
  CollectionReference users = FirebaseFirestore.instance.collection('users');
  CollectionReference products =
      FirebaseFirestore.instance.collection('products');

// Add a document to the collection
  // Future<void> addUser() async {
  //   return users
  //       .add({
  //         'name': 'ee vedeya',
  //         'email': 'john.doe@example.com',
  //       })
  //       .then((value) => print("User added"))
  //       .catchError((error) => print("Failed to add user: $error"));
  // }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            children: [
              // ElevatedButton(
              //     onPressed: () {
              //       addUser();
              //     },
              //     child: Text('test')),
              // Container(
              //   height: 300,
              //   child: StreamBuilder(
              //     stream: users.snapshots(),
              //     builder: (context, snapshot) {
              //       if (!snapshot.hasData) {
              //         return CircularProgressIndicator();
              //       }
              //       var userDocs = snapshot.data!.docs;
              //       return ListView.builder(
              //         itemCount: userDocs.length,
              //         itemBuilder: (context, index) {
              //           var userData =
              //               userDocs[index].data() as Map<String, dynamic>;
              //           return ListTile(
              //             title: Text(userData['name']),
              //             subtitle: Text(userData['email']),
              //           );
              //         },
              //       );
              //     },
              //   ),
              // ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Image.asset('assets/images/umah.png'),
                    Container(
                      height: 50,
                      width: 50,
                      child: Center(
                        child: Icon(Icons.shopping_basket),
                      ),
                      decoration: BoxDecoration(
                          color: Color.fromARGB(255, 239, 241, 244),
                          borderRadius: BorderRadius.all(Radius.circular(10)),
                          border: Border.all(
                            color: Colors.black,
                          )),
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                width: MediaQuery.sizeOf(context).width * 0.9,
                height: 100,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(15)),
                  color: Color(0xFF1D2A44),
                ),
              ),
              SizedBox(
                height: 15,
              ),
              Image.asset('assets/images/banner.png',
                  width: MediaQuery.sizeOf(context).width * 0.95),
              SizedBox(
                height: 15,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20, right: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Categories",
                      style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                      ),
                    ),
                    Text(
                      "view all > ",
                      style: TextStyle(
                        fontSize: 15,
                        color: Colors.orange,
                        decoration: TextDecoration.underline,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                height: 60,
                width: MediaQuery.sizeOf(context).width * 0.95,
                // Set the height of the container
                child: ListView(
                  scrollDirection:
                      Axis.horizontal, // Enable horizontal scrolling
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.only(right: 20),
                      child: Container(
                        height: 60,
                        width: 60,
                        child: Center(
                          child: Icon(Icons.table_bar),
                        ),
                        decoration: BoxDecoration(
                          color: Color.fromARGB(255, 239, 241, 244),
                          borderRadius: BorderRadius.all(Radius.circular(40)),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 20),
                      child: Container(
                        height: 60,
                        width: 60,
                        child: Center(
                          child: Icon(Icons.chair),
                        ),
                        decoration: BoxDecoration(
                          color: Color.fromARGB(255, 239, 241, 244),
                          borderRadius: BorderRadius.all(Radius.circular(40)),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 20),
                      child: Container(
                        height: 60,
                        width: 60,
                        child: Center(
                          child: Icon(Icons.chair),
                        ),
                        decoration: BoxDecoration(
                          color: Color.fromARGB(255, 239, 241, 244),
                          borderRadius: BorderRadius.all(Radius.circular(40)),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 20),
                      child: Container(
                        height: 60,
                        width: 60,
                        child: Center(
                          child: Icon(Icons.chair),
                        ),
                        decoration: BoxDecoration(
                          color: Color.fromARGB(255, 239, 241, 244),
                          borderRadius: BorderRadius.all(Radius.circular(40)),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 20),
                      child: Container(
                        height: 60,
                        width: 60,
                        child: Center(
                          child: Icon(Icons.chair),
                        ),
                        decoration: BoxDecoration(
                          color: Color.fromARGB(255, 239, 241, 244),
                          borderRadius: BorderRadius.all(Radius.circular(40)),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 20),
                      child: Container(
                        height: 60,
                        width: 60,
                        child: Center(
                          child: Icon(Icons.chair),
                        ),
                        decoration: BoxDecoration(
                          color: Color.fromARGB(255, 239, 241, 244),
                          borderRadius: BorderRadius.all(Radius.circular(40)),
                        ),
                      ),
                    ),
                    // Add more containers as needed
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20, right: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Products",
                      style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                      ),
                    ),
                    Text(
                      "view all > ",
                      style: TextStyle(
                        fontSize: 15,
                        color: Colors.orange,
                        decoration: TextDecoration.underline,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                height: 290,
                width: MediaQuery.sizeOf(context).width * 0.95,
                // Set the height of the container

                child: StreamBuilder(
                  stream: products.snapshots(),
                  builder: (context, snapshot) {
                    if (!snapshot.hasData) {
                      return CircularProgressIndicator();
                    }
                    var userDocs = snapshot.data!.docs;
                    return ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: userDocs.length,
                      itemBuilder: (context, index) {
                        var userData =
                            userDocs[index].data() as Map<String, dynamic>;
                        return Padding(
                          padding: const EdgeInsets.only(right: 20),
                          child: Container(
                            height: 60,
                            width: 200,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                    child: ClipRRect(
                                      borderRadius:
                                          BorderRadius.all(Radius.circular(20)),
                                      child: Image.network(
                                        '${userData["image"]}',
                                        width: 200,
                                        height: 180,
                                      ),
                                    ),
                                    decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius:
                                          BorderRadius.all(Radius.circular(20)),
                                    )),
                                SizedBox(
                                  height: 10,
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Text(
                                    '${userData["productName"]}',
                                    style: TextStyle(
                                        fontSize: 18,
                                        fontWeight: FontWeight.w500),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(
                                      left: 10, right: 15),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(
                                        "₹ ${userData["productPrice"]}",
                                        style: TextStyle(
                                            fontSize: 18,
                                            fontWeight: FontWeight.w500),
                                      ),
                                      Container(
                                        height: 40,
                                        width: 40,
                                        child: Center(
                                          child: Icon(
                                            Icons.add,
                                            color: Colors.white,
                                          ),
                                        ),
                                        decoration: BoxDecoration(
                                          color: Colors.orange,
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(10)),
                                        ),
                                      )
                                    ],
                                  ),
                                )
                              ],
                            ),
                            decoration: BoxDecoration(
                                color: Color.fromARGB(255, 233, 237, 243),
                                borderRadius:
                                    BorderRadius.all(Radius.circular(20)),
                                border:
                                    Border.all(color: Colors.black, width: 1)),
                          ),
                        );
                      },
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    ));
  }
}
