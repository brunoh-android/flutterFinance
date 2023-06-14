import 'package:finance_app/screens/add.dart';
import 'package:finance_app/screens/home.dart';
import 'package:finance_app/screens/statics.dart';
import 'package:flutter/material.dart';

class Buttom extends StatefulWidget {
  const Buttom({super.key});

  @override
  State<Buttom> createState() => _ButtomState();
}

class _ButtomState extends State<Buttom> {
  int indexColor = 0;
  List screen = [
    const Home(),
    const Statistics(),
    const Home(),
    const Statistics()
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screen[indexColor],
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.of(context)
              .push(MaterialPageRoute(builder: (context) => const AddScreen()));
        },
        backgroundColor: const Color(0xff368983),
        child: const Icon(Icons.add),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomAppBar(
        shape: const CircularNotchedRectangle(),
        child: Padding(
          padding: const EdgeInsets.only(top: 7.5, bottom: 7.5),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              GestureDetector(
                onTap: () {
                  setState(() {
                    indexColor = 0;
                  });
                },
                child: Icon(
                  Icons.home,
                  size: 30,
                  color:
                      indexColor == 0 ? const Color(0xff368983) : Colors.grey,
                ),
              ),
              GestureDetector(
                onTap: () {
                  setState(() {
                    indexColor = 1;
                  });
                },
                child: Icon(
                  Icons.bar_chart_outlined,
                  size: 30,
                  color:
                      indexColor == 1 ? const Color(0xff368983) : Colors.grey,
                ),
              ),
              const SizedBox(width: 20),
              GestureDetector(
                onTap: () {
                  setState(() {
                    indexColor = 2;
                  });
                },
                child: Icon(
                  Icons.account_balance_wallet_outlined,
                  size: 30,
                  color:
                      indexColor == 2 ? const Color(0xff368983) : Colors.grey,
                ),
              ),
              GestureDetector(
                onTap: () {
                  setState(() {
                    indexColor = 3;
                  });
                },
                child: Icon(
                  Icons.person_outline,
                  size: 30,
                  color:
                      indexColor == 3 ? const Color(0xff368983) : Colors.grey,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
