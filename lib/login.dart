import 'package:flutter/material.dart';
import 'dashboard.dart';

class LoginPage extends StatelessWidget {
  final TextEditingController usernameController =TextEditingController();
  final TextEditingController passwordController =TextEditingController();
  final GlobalKey<FormState> _formkey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar( 
        title: Text('halaman login'),
      ),
      body:Padding( 
        padding: const EdgeInsets.all(16.0),
        child: Form(
          key: _formkey,
          child: Column( 
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[ 
              TextFormField( 
                controller: usernameController,
                decoration: InputDecoration( 
                  labelText: 'Usename',
                  border: OutlineInputBorder(),
                ),
                validator: (value) {
                  { 
                    return 'masukan usename';
                  }
                  return null;
                },
              ),
              SizedBox(height:16.0),
              ElevatedButton( 
                onPressed: () {
                  {

                    Navigator.pushReplacement(
                      context,
                    MaterialPageRoute(builder: (context) => DashboardPage()),
                    );
                  }
                },
                child: Text('login'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}