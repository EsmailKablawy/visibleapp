import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Visibility Widget Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  // متغير لتحديد إذا كان الويجيت هيظهر أو لا
  bool _isVisible = true;

  // دالة لتغيير حالة الظهور
  void _toggleVisibility() {
    setState(() {
      _isVisible = !_isVisible; // لو هو ظاهر هيخفيه والعكس
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Visibility Widget Example'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            // هنا بنستخدم Visibility widget
            Visibility(
              visible: _isVisible, // لو true هيرجع يظهر الويجيت
              child: Container(
                width: 200,
                height: 200,
                color: Colors.blue,
                child: const Center(
                  child: Text(
                    'الويجيت ده ظاهر',
                    style: TextStyle(color: Colors.white, fontSize: 18),
                  ),
                ),
              ),
            ),
            const SizedBox(height: 20),
            // زرار لتغيير حالة الظهور
            ElevatedButton(
              onPressed: _toggleVisibility, // لما تضغط على الزرار هيتغير الوضع
              child: Text(_isVisible ? 'إخفاء الويجيت' : 'إظهار الويجيت'),
            ),
          ],
        ),
      ),
    );
  }
}
