import 'package:app_banco/tela_boleto.dart';
import 'package:app_banco/tela_cartao.dart';
import 'package:app_banco/tela_pix.dart';
import 'package:flutter/material.dart';

class Tela2 extends StatelessWidget {
  const Tela2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(100),
        child: AppBar(
          automaticallyImplyLeading: false,  // tira a setinha de voltar
          flexibleSpace: Stack(  // permite personalizar a appBar
            children: [

              Container(
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(40),
                    bottomRight: Radius.circular(40),
                  ),
                  gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [
                      Color(0xFF0F7A4D),
                      Color(0xFF074E30),
                    ],
                  ),
                ),
              ),

              Padding(
                padding: const EdgeInsets.only(
                  left: 20,
                  right: 20,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [

                    Row(
                      children: [
                        Image.asset(
                          'images/user2.png',
                          width: 60,
                        ),

                       SizedBox(width: 10),

                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'Sua conta',
                              style: TextStyle(
                                color: Colors.white70,
                                fontSize: 14,
                              ),
                            ),
                            Text(
                              'Milena',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 20,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),

                    Container(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 20,
                        vertical: 10,
                      ),
                      decoration: BoxDecoration(
                        color: const Color.fromARGB(181, 15, 120, 85),
                        borderRadius: BorderRadius.circular(15),
                      ),

                      child: Text(
                        'R\$ 76,08',
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w600,
                          fontSize: 16,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),

      body: SingleChildScrollView(  // scroll com filho único
        child: Center(
          child: Column(
            children: [
              
              SizedBox(height: 100),
                
              // Pix
              TextButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const TelaPix(),
                    ),
                  );
                },
                style: TextButton.styleFrom(
                  padding: EdgeInsets.zero,
                  overlayColor: Colors.transparent,
                  splashFactory: NoSplash.splashFactory,
                ),
                child: Stack(
                  alignment: Alignment.center,
                  clipBehavior: Clip.none,  // não corta o que sair para fora
                  children: [

                    Image.asset(
                      'images/trapezio.png',
                      width: 300,
                    ),

                    Positioned(
                      top: -60,
                      child: Image.asset(
                        'images/pix.png',
                        width: 200,
                      ),
                    ),

                    Positioned(
                      bottom: 60,
                      child: Text(
                        'Pix',
                        style: TextStyle(
                          fontSize: 22,
                          fontWeight: FontWeight.w600,
                          color: Color(0xFF074E30)
                        ),
                      )
                    ),

                    Positioned(
                      bottom: -15,
                      child: TextButton(
                        style: TextButton.styleFrom(
                          backgroundColor: Colors.black,
                          minimumSize: const Size(80, 60),
                        ),
                        onPressed: () {
                          Navigator.push(
                            context, MaterialPageRoute(
                              builder: (context) => const TelaPix()
                            ),
                          );
                        }, 
                        child: Icon(
                          Icons.arrow_forward,
                          color: Colors.white,
                        )
                      )
                    )
                  ],
                ),
              ),

              SizedBox(height: 150),

              // Cartão
              TextButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const TelaCartao(),
                    ),
                  );
                },
                style: TextButton.styleFrom(
                  padding: EdgeInsets.zero,
                  overlayColor: Colors.transparent,
                  splashFactory: NoSplash.splashFactory,
                ),
                child: Stack(
                  alignment: Alignment.center,
                  clipBehavior: Clip.none,
                  children: [

                    Image.asset(
                      'images/trapezio.png',
                      width: 300,
                    ),

                    Positioned(
                      top: -80,
                      child: Image.asset(
                        'images/card.png',
                        width: 230,
                        fit: BoxFit.cover,
                      ),
                    ),

                    Positioned(
                      bottom: 60,
                      child: Text(
                        'Cartão',
                        style: TextStyle(
                          fontSize: 22,
                          fontWeight: FontWeight.w600,
                          color: Color(0xFF074E30)
                        ),
                      )
                    ),

                    Positioned(
                      bottom: -15,
                      child: TextButton(
                        style: TextButton.styleFrom(
                          backgroundColor: Colors.black,
                          minimumSize: const Size(80, 60),
                        ),
                        onPressed: () {
                          Navigator.push(
                            context, MaterialPageRoute(
                              builder: (context) => const TelaCartao(),
                            ),
                          );
                        }, 
                        child: Icon(
                          Icons.arrow_forward,
                          color: Colors.white,
                        )
                      )
                    )
                  ],
                ),
              ),

              SizedBox(height: 150),

              // Boleto
              TextButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const TelaBoleto(),
                    ),
                  );
                },
                style: TextButton.styleFrom(
                  padding: EdgeInsets.zero,
                  overlayColor: Colors.transparent,
                  splashFactory: NoSplash.splashFactory,
                ),
                child: Stack(
                  alignment: Alignment.center,
                  clipBehavior: Clip.none,
                  children: [

                    Image.asset(
                      'images/trapezio.png',
                      width: 300,
                    ),

                    Positioned(
                      top: -50,
                      child: Image.asset(
                        'images/bill.png',
                        width: 180,
                      ),
                    ),

                    Positioned(
                      bottom: 60,
                      child: Text(
                        'Boleto',
                        style: TextStyle(
                          fontSize: 22,
                          fontWeight: FontWeight.w600,
                          color: Color(0xFF074E30)
                        ),
                      )
                    ),

                    Positioned(
                      bottom: -15,
                      child: TextButton(
                        style: TextButton.styleFrom(
                          backgroundColor: Colors.black,
                          minimumSize: const Size(80, 60),
                        ),
                        onPressed: () {
                          Navigator.push(
                            context, MaterialPageRoute(
                              builder: (context) => const TelaBoleto(),
                            ),
                          );
                        }, 
                        child: Icon(
                          Icons.arrow_forward,
                          color: Colors.white,
                        )
                      )
                    )
                  ],
                ),
              ),

              SizedBox(height: 60,)
            ],
          ),
        ),
      ),
    );
  }
}