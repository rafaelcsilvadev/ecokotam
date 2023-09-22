import 'dart:convert';

import 'package:ecokotam/constants/local_storage.dart';
import 'package:ecokotam/views/theme/colors/colors.dart';
import 'package:ecokotam/views/widgets/app_bar_ecokotam.dart';
import 'package:ecokotam/views/widgets/check_box_ecokotam.dart';
import 'package:ecokotam/views/widgets/elevation_buttom_ecokotram.dart';
import 'package:ecokotam/views/widgets/layout.dart';
import 'package:flutter/material.dart';
import 'package:get_storage/get_storage.dart';

class Days extends StatefulWidget {
  const Days({Key? key}) : super(key: key);

  @override
  State<Days> createState() => _DaysState();
}

class _DaysState extends State<Days> {
  late List<dynamic> _checkList;
  final box = GetStorage();

  handleGetLocalStorage() {
    var result = box.read(LocalStorage.days);
    var json;

    if(result != null) {
      json = jsonDecode(result);
    }

    if (result != null && json["listDays"] != null) {
      return json["listDays"]  as List<dynamic>;
    } else {
      return [false, false, false, false, false, false];
    }
  }

  handleSaveLocalStorage() {
    Map<String, List<dynamic>> days = {
      "listDays": _checkList,
    };

    box.write(
      LocalStorage.days,
      jsonEncode(days),
    );

    handleGetLocalStorage();
  }

  handleCheck(int index) {
    _checkList[index] = !_checkList[index];

    setState(() {
      _checkList = _checkList;
    });

    handleSaveLocalStorage();
  }

  handleAllFalse() {
    setState(() {
      _checkList = [false, false, false, false, false, false];
    });

    handleSaveLocalStorage();
  }

  @override
  void initState() {
    _checkList = handleGetLocalStorage();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBarEcokotam(
          title: 'Dias',
          hasLeading: true,
        ),
        body: LayoutBuilder(
          builder: (BuildContext context, BoxConstraints constraints) {
            return Layout(
              height: constraints.maxHeight,
              width: constraints.maxWidth,
              widget: Column(
                children: [
                  Container(
                    margin: const EdgeInsets.only(top: 20),
                    child: RichText(
                      text: TextSpan(
                        children: [
                          TextSpan(
                            text: 'Bairro: ',
                            style: TextStyle(
                              fontFamily: 'Inter',
                              color: ColorsEcokotam.black,
                              fontSize: 20,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                          TextSpan(
                            text: 'Carvão',
                            style: TextStyle(
                              fontFamily: 'Inter',
                              color: ColorsEcokotam.black,
                              fontSize: 20,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.only(top: 20),
                    child: Column(
                      children: [
                        CheckBoxEcokotam(
                          text: 'Segunda-feira',
                          onChanged: () => handleCheck(0),
                          value: _checkList[0],
                        ),
                        CheckBoxEcokotam(
                          text: 'Terça-feira',
                          onChanged: () => handleCheck(1),
                          value: _checkList[1],
                        ),
                        CheckBoxEcokotam(
                          text: 'Quarta-feira',
                          onChanged: () => handleCheck(2),
                          value: _checkList[2],
                        ),
                        CheckBoxEcokotam(
                          text: 'Quinta-feira',
                          onChanged: () => handleCheck(3),
                          value: _checkList[3],
                        ),
                        CheckBoxEcokotam(
                          text: 'Sexta-feira',
                          onChanged: () => handleCheck(4),
                          value: _checkList[4],
                        ),
                        CheckBoxEcokotam(
                          text: 'Sábado',
                          onChanged: () => handleCheck(5),
                          value: _checkList[5],
                        ),
                        Container(
                          margin: const EdgeInsets.only(top: 20),
                          child: ElevationButtonEcokotram(
                            text: 'Limpar',
                            onPressed: () => handleAllFalse(),
                            width: constraints.maxWidth * 0.86,
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
