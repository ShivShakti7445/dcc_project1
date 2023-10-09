import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MobileNumberInputScreen(),
    );
  }
}

class MobileNumberInputScreen extends StatefulWidget {
  @override
  _MobileNumberInputScreenState createState() => _MobileNumberInputScreenState();
}

class _MobileNumberInputScreenState extends State<MobileNumberInputScreen> {
  TextEditingController _mobileController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Mobile Address Verification'),
      ),
      body: Padding(
        padding: EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container( width: 400,
              height: 220.8,
              child: Image(
                image:NetworkImage('https://cdni.iconscout.com/illustration/premium/thumb/otp-verification-5152137-4309037.png'),
              ),),
            Text(
              'Enter your mobile number for OTP verification:',
              style: TextStyle(fontSize: 16),
            ),
            SizedBox(height: 20),
            TextFormField(
              controller: _mobileController,
              keyboardType: TextInputType.phone,
              decoration: InputDecoration(
                labelText: 'Mobile Number',
                prefixText: '+91 ',
                prefixIcon: Icon(Icons.phone),
              ),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {

                String mobileNumber = _mobileController.text;
                print('Mobile Number Entered: $mobileNumber');
              },
              child: Text('Get OTP'),
            ),
          ],
        ),
      ),
    );
  }

  @override
  void dispose() {
    _mobileController.dispose();
    super.dispose();
  }
}