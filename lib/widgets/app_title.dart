// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_pokedex/constants/UI_helper.dart';
import 'package:flutter_pokedex/constants/constants.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AppTitle extends StatefulWidget {
  const AppTitle({Key? key}) : super(key: key);

  @override
  State<AppTitle> createState() => _AppTitleState();
}

class _AppTitleState extends State<AppTitle> {
  String pokebollImage = 'images/pokeball.png';
  @override
  Widget build(BuildContext context) {
    return Container(
      height: UIHelper.getAppTitleWidgetHeight(),
      child: Stack(children: [
        Align(
          alignment: Alignment.topRight,
          child: Image.asset(
            pokebollImage,
            width: ScreenUtil().orientation == Orientation.portrait
                ? 0.2.sh
                : 0.2.sw,
            fit: BoxFit.fitWidth,
          ),
        ),
        Align(
            alignment: Alignment.centerLeft,
            child: Text(
              Constants.appTitle,
              style: Constants.appTitleStyle(),
            )),
      ]),
    );
  }
}
