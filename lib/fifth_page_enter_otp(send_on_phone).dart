import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: OTPVerificationScreen(),
    );
  }
}

class OTPVerificationScreen extends StatefulWidget {
  @override
  _OTPVerificationScreenState createState() => _OTPVerificationScreenState();
}

class _OTPVerificationScreenState extends State<OTPVerificationScreen> {
  TextEditingController _otpController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('OTP Verification'),
      ),
      body: Padding(
        padding: EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container( width: 400,
              height: 300,
              child: Center(
                child: Image(
                  image:NetworkImage('https://thumbs.dreamstime.com/b/sign-page-abstract-concept-vector-illustration-enter-application-mobile-screen-user-login-form-website-interface-ui-new-profile-240972380.jpg'),
                ),
              ),
            ),

            Container(
              width: 400,
              height: 30
             ),

            Center(
              child: Text(
                'Enter the four-digit OTP sent to your mobile number or email:',
                style: TextStyle(fontSize: 16),
              ),
            ),
            SizedBox(height: 20),
            TextFormField(
              controller: _otpController,
              keyboardType: TextInputType.number,
              maxLength: 4,
              decoration: InputDecoration(
                labelText: 'OTP',
                prefixIcon: Icon(Icons.lock),
              ),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {

                String enteredOTP = _otpController.text;
                if (enteredOTP.length == 4) {
                  print('Entered OTP: $enteredOTP');

                } else {

                  print('Invalid OTP length');
                }
              },
              child: Text('Verify OTP'),
            ),
          ],
        ),
      ),
    );
  }

  @override
  void dispose() {
    _otpController.dispose();
    super.dispose();
  }
}