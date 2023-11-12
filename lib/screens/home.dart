import 'package:banking_app/utilis/colors.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
      ),
      body: Column(
        children: [
          Stack(
            children: [
              Stack(
                children: [
                  Container(
                    height: MediaQuery.of(context).size.height / 3,
                    decoration: const BoxDecoration(
                      color: CustomColors.tradewind,
                      borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(48),
                        bottomRight: Radius.circular(48),
                      ),
                    ),
                  ),
                  Transform.translate(
                    offset:
                        Offset(-MediaQuery.of(context).size.width / 1.4, -150),
                    child: RotationTransition(
                      turns: const AlwaysStoppedAnimation(50 / 360),
                      child: Container(
                        height: 400,
                        width: 500,
                        decoration: const BoxDecoration(
                          color: CustomColors.eden,
                          borderRadius: BorderRadius.only(
                            topRight: Radius.circular(48),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Transform.translate(
                    offset:
                        Offset(MediaQuery.of(context).size.width / 1.5, -200),
                    child: RotationTransition(
                      turns: const AlwaysStoppedAnimation(50 / 360),
                      child: Container(
                        height: 400,
                        width: 500,
                        decoration: const BoxDecoration(
                          color: CustomColors.funGreen,
                          borderRadius: BorderRadius.only(
                            bottomLeft: Radius.circular(48),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Transform.translate(
                    offset: const Offset(100, 200),
                    child: RotationTransition(
                      turns: const AlwaysStoppedAnimation(50 / 360),
                      child: Container(
                        height: 200,
                        width: 200,
                        decoration: const BoxDecoration(
                          color: CustomColors.dawnPink,
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(48),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              Transform.translate(
                offset: const Offset(0, 250),
                child: Column(
                  children: [
                    const SearchBar(
                      leading: Icon(Icons.search),
                      hintText: "Search for a service",),
                    Container(
                      color: Colors.white,
                      height: MediaQuery.of(context).size.height / 2.5,
                    ),
                  ]
                )
              ),
            ],
          )
        ],
      ),
    );
  }
}
