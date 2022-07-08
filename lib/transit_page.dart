import 'package:flutter/material.dart';

class TransitPage extends StatefulWidget {
  const TransitPage({Key? key}) : super(key: key);

  @override
  State<TransitPage> createState() => _TransitPageState();
}

class _TransitPageState extends State<TransitPage> {

  @override
  Widget build(BuildContext context) {
    return  Scaffold(body: Stack(children: [
      Image.asset(
        'assets/images/common/page.png',
        fit: BoxFit.cover,
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height
      ),
      Positioned(top: MediaQuery.of(context).padding.top + 10,
      right: 10,
      child: _clipButton(),
      )
    ],));
  }
  
  Widget _clipButton() {
    return Container(
      width: 50, 
      height: 50, 
      color: Colors.black, 
      child: Column(children: const [
        Text('跳过', style: TextStyle(color: Colors.white, fontSize: 14)),
        Text('6s', style: TextStyle(color: Colors.white, fontSize:12))
        ],)
    );
  }
}
