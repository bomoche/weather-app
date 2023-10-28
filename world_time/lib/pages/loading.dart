import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class Loading extends StatefulWidget {
  const Loading({super.key});

  @override
  State<Loading> createState() => _LoadingState();
}

class _LoadingState extends State<Loading> {

  Future<void> getData () async {
    var response = http.get('https://jsonplaceholder.typicode.com/todos/1' as Uri);
    Map<String, dynamic> data = json.decode(response as String);
    print(data);
  }

  @override
  void initState() {
    super.initState();
    getData();
  }



  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Text(
        'loading screen'
      ),
    );
  }
}