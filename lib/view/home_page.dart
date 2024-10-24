import 'package:flutter/material.dart';
import 'package:responsive_framework/responsive_framework.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        foregroundColor: Color(0xFFCFCFCF),
        title: Text(
          'Andrey Alencar Quadros',
          style: TextStyle(color: Color(0xFF808080), fontSize: 16),
        ),
        backgroundColor: Color(0xFF232323),
        actions: [
          ElevatedButton(
            style: ButtonStyle(
              backgroundColor: WidgetStateProperty.all(Color(0xFF232323)),
              shape: WidgetStateProperty.all(
                RoundedRectangleBorder(
                  side: BorderSide(
                    color: Color(0xFF808080), // Cor da borda
                    width: 1,
                  ), // Espessura da borda,
                  borderRadius:
                      BorderRadius.circular(7), // Defina o valor desejado aqui
                ),
              ),
            ),
            onPressed: () {},
            child: Text(
              'Contato',
              style: TextStyle(color: Color(0xFF808080), fontSize: 16),
            ),
          ),
          SizedBox(
            width: 24,
          )
        ],
      ),
      backgroundColor: Color(0xFF232323),
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            ResponsiveVisibility(
                visible: false,
                visibleConditions: [Condition.largerThan(name: MOBILE)],
                child: Image.asset('images/header.png')),
            ResponsiveVisibility(
                visible: false,
                visibleConditions: [Condition.equals(name: MOBILE)],
                child: Text('VISÍVEL APENAS NO MOBILE',style: TextStyle(color: Colors.white),)),
          ],
        ),
      ),
    );
  }
}
