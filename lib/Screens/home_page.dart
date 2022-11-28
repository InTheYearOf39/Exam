import 'package:flutter/material.dart';
import 'package:location/Screens/location.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Center(child: const Text("Location Page"))),
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                Icons.location_pin,
                size: 46.0,
                color: Colors.blue,
              ),
              SizedBox(height: 10,),
              Text(
                  "Get user Location",
                  style: TextStyle(
                      fontSize: 26.0,fontWeight: FontWeight.bold)
              ),
              SizedBox(height: 10.0,),
              ElevatedButton(
                onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context) => const Location()));
                },
                child: const Text("Get Current Location"),
              ),
              SizedBox(height: 10,),
              Text(
                "CC https://github.com/InTheYearOf39",
                style: TextStyle(
                  fontSize: 10
                ) ,)
            ],
          ),
        ),
      ),
    );
  }
}
