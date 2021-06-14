import 'package:flutter/material.dart';
import 'OTP.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  TextEditingController _controller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('OTP Verification'),
      ),
      
      body: Padding(
        
        padding: EdgeInsets.all(10.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            buildImage('assets/images/4.png'), 
                        
                        Text(
                          ' Enter your mobile number we will send an OTP',
                          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                        ),
                        SizedBox(height: 40.0),
                       // Text('Format: [subscriber number]'),
                        SizedBox(height: 40.0),
                        
                        TextField(
                          cursorColor: Colors.black,
                          style: TextStyle(fontSize: 18.0, color: Colors.black),
                          maxLength: 10,
                          keyboardType: TextInputType.number,
                          controller: _controller,
                          decoration: InputDecoration(
                            fillColor: Colors.orange.withOpacity(0.1),
                            filled: true,
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.all(Radius.circular(20.0))),
                            labelText: 'Phone Number',
                            labelStyle: TextStyle(
                              fontSize: 16.0,
                            ),
                            prefixIcon: Icon(Icons.phone),
                            prefix: Padding(
                              padding: EdgeInsets.all(4),
                              child: Text('+91'),
                            ),
                          ),
                        ),
                        
                        SizedBox(height: 20.0),
                        RaisedButton(
                          onPressed: () {
                            Navigator.of(context).push(
                              MaterialPageRoute(
                                  builder: (context) => OtpPage(_controller.text)),
                            );
                          },
                          color: Colors.orange[800],
                          child: Text('Send OTP', style: TextStyle(fontSize: 17.0)),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20.0)),
                        ),
                      ],
                    ),
                  ),
                );
              }
            
              buildImage(String s) {}
}
