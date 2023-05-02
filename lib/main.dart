import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(useMaterial3: true),
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  DateTime dt = DateTime.now();
  String edDate = "";
  String edMonth = "";
  String edYear = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Age Calculator",
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
        backgroundColor: Colors.blue.shade700,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            Spacer(
              flex: 1,
            ),
            Expanded(
                flex: 3,
                child: Column(
                  children: [
                    Card(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(50)),
                      elevation: 8,
                      margin: EdgeInsets.all(8),
                      child: TextField(
                        readOnly: true,
                        decoration: InputDecoration(
                            hintText: "${dt.day}/${dt.month}/${dt.year}",
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(50))),
                      ),
                    ),
                  ],
                )),
            Expanded(
                flex: 3,
                child: Row(
                  children: [
                    Expanded(
                        child: Card(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(50)),
                      elevation: 8,
                      margin: EdgeInsets.all(10),
                      child: TextField(
                        onChanged: (value) {
                          edDate = value;
                        },
                        decoration: InputDecoration(
                            hintText: "${dt.day}",
                            labelText: "DD",
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(50))),
                      ),
                    )),
                    Expanded(
                        child: Card(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(50)),
                      elevation: 8,
                      margin: EdgeInsets.all(10),
                      child: TextField(
                        onChanged: (value) {
                          edMonth = value;
                        },
                        decoration: InputDecoration(
                            hintText: "${dt.month}",
                            labelText: "MM",
                            enabled: false,
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(50))),
                      ),
                    )),
                    Expanded(
                        child: Card(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(50)),
                      elevation: 8,
                      margin: EdgeInsets.all(10),
                      child: TextField(
                        onChanged: (value) {
                          edYear = value;
                        },
                        decoration: InputDecoration(
                            hintText: "${dt.year}",
                            labelText: "YYYY",
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(50))),
                      ),
                    ))
                  ],
                )),
            Expanded(
                flex: 3,
                child: Row(
                  children: [
                    Expanded(
                        child: Card(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(50)),
                      elevation: 8,
                      margin: EdgeInsets.all(10),
                      child: Container(
                        height: double.infinity,
                        width: double.infinity,
                        child: Text("Clear",
                            style:
                                TextStyle(fontSize: 18, color: Colors.black)),
                        alignment: Alignment.center,
                      ),
                    )),
                    Expanded(
                        child: Ink(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(50)),
                      child: InkWell(
                        splashColor: Colors.red.shade50,
                        onTap: () {},
                        borderRadius: BorderRadius.circular(50),
                        child: Card(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(50)),
                          elevation: 8,
                          color: Colors.blue.shade700,
                          margin: EdgeInsets.all(10),
                          child: Container(
                            height: double.infinity,
                            width: double.infinity,
                            child: Text("Calculate",
                                style: TextStyle(
                                    fontSize: 18, color: Colors.white)),
                            alignment: Alignment.center,
                          ),
                        ),
                      ),
                    )),
                  ],
                )),
            Expanded(
                flex: 7,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Expanded(
                      child: Text(
                        "         Present Age",
                        style: TextStyle(
                            color: Colors.black, fontWeight: FontWeight.bold),
                        textAlign: TextAlign.left,
                      ),
                    ),
                    Expanded(
                      flex: 10,
                      child: Card(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(50)),
                        elevation: 8,
                        color: Colors.blue.shade700,
                        margin: EdgeInsets.all(10),
                        child: Row(
                          children: [
                            Expanded(
                              child: Container(
                                height: double.infinity,
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text(
                                      "00",
                                      style: TextStyle(color: Colors.white),
                                    ),
                                    Text("YEAR",
                                        style: TextStyle(color: Colors.white))
                                  ],
                                ),
                              ),
                            ),
                            Expanded(
                              child: Container(
                                height: double.infinity,
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text(
                                      "00",
                                      style: TextStyle(color: Colors.white),
                                    ),
                                    Text("MM",
                                        style: TextStyle(color: Colors.white))
                                  ],
                                ),
                              ),
                            ),
                            Expanded(
                              child: Container(
                                height: double.infinity,
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text(
                                      "00",
                                      style: TextStyle(color: Colors.white),
                                    ),
                                    Text("DD",
                                        style: TextStyle(color: Colors.white))
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                )),
            Expanded(
                flex: 7,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Expanded(
                      child: Text(
                        "         Next Birthday",
                        style: TextStyle(
                            color: Colors.black, fontWeight: FontWeight.bold),
                        textAlign: TextAlign.left,
                      ),
                    ),
                    Expanded(
                      flex: 10,
                      child: Card(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(50)),
                        elevation: 8,
                        color: Colors.blue.shade700,
                        margin: EdgeInsets.all(10),
                        child: Row(
                          children: [
                            Spacer(),
                            Expanded(
                              child: Container(
                                height: double.infinity,
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text(
                                      "00",
                                      style: TextStyle(color: Colors.white),
                                    ),
                                    Text("MM",
                                        style: TextStyle(color: Colors.white))
                                  ],
                                ),
                              ),
                            ),
                            Spacer(),
                            Expanded(
                              child: Container(
                                height: double.infinity,
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text(
                                      "00",
                                      style: TextStyle(color: Colors.white),
                                    ),
                                    Text("DD",
                                        style: TextStyle(color: Colors.white))
                                  ],
                                ),
                              ),
                            ),
                            Spacer(),
                          ],
                        ),
                      ),
                    ),
                  ],
                )),
          ],
        ),
      ),
    );
  }
}
