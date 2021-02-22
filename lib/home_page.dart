import 'package:flutter/material.dart';
import 'package:nintendo_switch_ui/action_circle_buttom_widget.dart';
import 'package:nintendo_switch_ui/circular_buttom_widget.dart';
import 'package:nintendo_switch_ui/directional_circle_widget.dart';
import 'package:nintendo_switch_ui/less_icon_widget.dart';
import 'package:nintendo_switch_ui/plus_icon_widget.dart';
import 'package:nintendo_switch_ui/small_circle_container_widget.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          decoration: BoxDecoration(color: Colors.grey[700]),
          child: Column(
            children: [
              Flexible(
                flex: 2,
                child: Container(
                  margin: EdgeInsets.all(25),
                  decoration: BoxDecoration(
                    color: Colors.black,
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Center(
                    child: Image.asset(
                      'assets/images/logo.jpg',
                    ),
                  ),
                ),
              ),
              Flexible(
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  child: Row(
                    children: [
                      Flexible(
                        child: Container(
                          padding: EdgeInsets.all(10),
                          decoration: BoxDecoration(
                              color: Colors.lightBlue[300],
                              borderRadius: BorderRadius.only(
                                  topRight: Radius.circular(100))),
                          child: Stack(
                            children: [
                              Align(
                                alignment: Alignment.topLeft,
                                child: LessIcon(),
                              ),
                              Positioned(
                                right: 20,
                                top: 30,
                                child: CircularButtom(),
                              ),
                              Positioned(
                                right: 40,
                                bottom: 110,
                                child: DirectionalCircle(
                                  icon: Icons.arrow_drop_up,
                                ),
                              ),
                              Positioned(
                                right: 5,
                                bottom: 75,
                                child: DirectionalCircle(
                                  icon: Icons.arrow_right,
                                ),
                              ),
                              Positioned(
                                right: 40,
                                bottom: 45,
                                child: DirectionalCircle(
                                  icon: Icons.arrow_drop_down,
                                ),
                              ),
                              Positioned(
                                right: 75,
                                bottom: 75,
                                child: DirectionalCircle(
                                  icon: Icons.arrow_left,
                                ),
                              ),
                              Align(
                                alignment: Alignment.bottomLeft,
                                child: Container(
                                  height: 25,
                                  width: 25,
                                  decoration: BoxDecoration(
                                      boxShadow: [
                                        BoxShadow(
                                            offset: Offset(0, 0),
                                            blurRadius: 1,
                                            color: Colors.grey[800],
                                            spreadRadius: 1)
                                      ],
                                      gradient: LinearGradient(
                                          colors: [
                                            Colors.grey[600],
                                            Colors.grey[800]
                                          ],
                                          tileMode: TileMode.clamp,
                                          begin: Alignment.topCenter,
                                          end: Alignment.bottomCenter)),
                                  child: Center(
                                    child: Container(
                                      height: 20,
                                      width: 20,
                                      decoration: BoxDecoration(
                                          shape: BoxShape.circle,
                                          color: Colors.black),
                                    ),
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                      Flexible(
                        child: Container(
                          margin: EdgeInsets.symmetric(horizontal: 15),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Column(
                                    children: [
                                      SmallCircleContainer(
                                        isChecked: true,
                                      ),
                                      SmallCircleContainer(),
                                      SmallCircleContainer(),
                                      SmallCircleContainer(),
                                    ],
                                  ),
                                  Image.asset(
                                    'assets/images/logo.png',
                                    width: 60,
                                  ),
                                  Column(
                                    children: [
                                      SmallCircleContainer(),
                                      SmallCircleContainer(),
                                      SmallCircleContainer(),
                                      SmallCircleContainer(),
                                    ],
                                  )
                                ],
                              )
                            ],
                          ),
                        ),
                      ),
                      Flexible(
                        child: Container(
                          padding: EdgeInsets.all(10),
                          decoration: BoxDecoration(
                              color: Colors.red[400],
                              borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(100))),
                          child: Stack(
                            children: [
                              Align(
                                alignment: Alignment.topRight,
                                child: PlusIcon(),
                              ),
                              Positioned(
                                top: 40,
                                left: 40,
                                child: ActionCircleButtom(
                                  buttom: 'X',
                                ),
                              ),
                              Positioned(
                                top: 110,
                                left: 40,
                                child: ActionCircleButtom(
                                  buttom: 'B',
                                ),
                              ),
                              Positioned(
                                top: 75,
                                left: 5,
                                child: ActionCircleButtom(
                                  buttom: 'Y',
                                ),
                              ),
                              Positioned(
                                top: 75,
                                left: 75,
                                child: ActionCircleButtom(
                                  buttom: 'A',
                                ),
                              ),
                              Positioned(
                                bottom: 40,
                                left: 25,
                                child: CircularButtom(),
                              ),
                              Align(
                                alignment: Alignment.bottomRight,
                                child: Container(
                                  height: 25,
                                  width: 25,
                                  decoration: BoxDecoration(
                                      boxShadow: [
                                        BoxShadow(
                                            offset: Offset(0, 0),
                                            blurRadius: 1,
                                            color: Colors.grey[800],
                                            spreadRadius: 1)
                                      ],
                                      gradient: LinearGradient(
                                          colors: [
                                            Colors.grey[600],
                                            Colors.grey[800]
                                          ],
                                          tileMode: TileMode.clamp,
                                          begin: Alignment.topCenter,
                                          end: Alignment.bottomCenter)),
                                  child: Center(
                                    child: Icon(
                                      Icons.home,
                                      color: Colors.black,
                                      size: 25,
                                    ),
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                flex: 1,
              )
            ],
          ),
        ),
      ),
    );
  }
}
