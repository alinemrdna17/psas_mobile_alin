import 'package:flutter/material.dart';

class DashboardPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) { 
    return Scaffold(
      appBar: AppBar( 
        title: Text('Dashboard'),
      ),
      body: Center( 
        child: Text( 
          'selamat datang di dashboard',
          style: TextStyle(fontSize: 24),
        ),
      ),
    );
  }
}