import 'package:flutter/material.dart';

class TelaBoleto extends StatelessWidget {
  const TelaBoleto({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        backgroundColor: Colors.transparent,
      ),
        
      body: Column(
        children: [

          SizedBox(height: 20),

          Align(
            alignment: Alignment.centerLeft,
            child: Text(
              'Pagar boleto',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
            
          SizedBox(height: 30),

          Image.asset(
            '../images/boleto.png',
            width: 260,
          ),

          SizedBox(height: 30),

          Text(
            'Leia o código de barras do seu boleto',
            style: TextStyle(
              color: Color(0xFF074E30),
              fontSize: 22,
            ),
          ),

          Spacer(),

          TextButton(
            style: TextButton.styleFrom(
              backgroundColor: Color(0xFF074E30),
              minimumSize: const Size(300, 80),
              shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(40),
                  topRight: Radius.circular(40)
                )
              )
            ),
            onPressed: () {},
            child: Text(
              'Prosseguir',
              style: TextStyle(
                color: Colors.white,
                fontSize: 18,
              ),
            ),
          ),
        ],
      )
    );
  }
}