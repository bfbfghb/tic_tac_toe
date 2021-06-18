import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import 'Widgets/Gesture_Widget.dart';

class Game extends StatefulWidget {
  const Game({ Key? key }) : super(key: key);

  @override
  _GameState createState() => _GameState();
}

class _GameState extends State<Game> {
  List<String> textos = ["","","","","","","","",""];
  var whostart;
  var random = Random();

  int oponente = 0; 

    void Verificar(){
      if(textos[0] != "" && textos[1] != "" && textos[2] != "" && textos[3] != "" && textos[4] != "" && textos[5] != "" && textos[6] != "" && textos[7] != "" && textos[8] != ""){
        //Restart();
      }
    }

    void Restart(){
      setState(() {
        textos = ["","","","","","","","",""];
      });
    }

    void oponenteFunc(){
      oponente = random.nextInt(9);
      while(textos[oponente] != "") {
        oponente = random.nextInt(9);
      }
      if(textos[oponente] == ""){
        setState(() {
          textos[oponente] = "O";
        });
      }
    }

    func1() {
      if(textos[0] == ""){ 
        setState((){ 
          textos[0] = "X";
          oponenteFunc();
        });
      }
    }
    func2() {
      if(textos[1] == ""){
        setState((){ 
          textos[1] = "X";
          oponenteFunc();
        });
      }
    }
    func3() {
      if(textos[2] == ""){
        setState((){ 
          textos[2] = "X";
          oponenteFunc();
        });
      }
    }
    func4() {
      if(textos[3] == ""){
        setState((){ 
          textos[3] = "X";
          oponenteFunc();
        });
      }
    }
    func5() {
      if(textos[4] == ""){
        setState((){ 
          textos[4] = "X";
          oponenteFunc();
        });
      }
    }
    func6() {
      if(textos[5] == ""){
        setState((){ 
          textos[5] = "X";
          oponenteFunc();
        });
      }
    }
    func7() {
      if(textos[6] == ""){
        setState((){ 
          textos[6] = "X";
          oponenteFunc();
        });
      }
    }
    func8() {
      if(textos[7] == ""){
        setState((){ 
          textos[7] = "X";
          oponenteFunc();
        });
      }
    }
    func9() {
      if(textos[8] == ""){
        setState((){ 
          textos[8] = "X";
          oponenteFunc();
        });
      }
    }
  @override
  void initState() {
      whostart = random.nextInt(2);
      if(whostart == 0){
        oponenteFunc();
      }
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(children:[
              Gesture_Widget(
                onTap: func1,
                texto: textos[0].toString(),
              ),
              SizedBox(width: 5, height: 5,),
              Gesture_Widget(
                onTap: func2,
                texto: textos[1].toString(),
              ),
              SizedBox(width: 5, height: 5,),
              Gesture_Widget(
                onTap: func3,
                texto: textos[2].toString(),
              ),
              SizedBox(width: 5, height: 5,),
            ],),
            SizedBox(width: 5, height: 5,),
            Row(children: [
              Gesture_Widget(
                onTap: func4,
                texto: textos[3].toString(),
              ),
              SizedBox(width: 5, height: 5,),
              Gesture_Widget(
                onTap: func5,
                texto: textos[4].toString(),
              ),
              SizedBox(width: 5, height: 5,),
              Gesture_Widget(
                onTap: func6,
                texto: textos[5].toString(),
              ),
              SizedBox(width: 5, height: 5,),
            ]),
            SizedBox(width: 5, height: 5,),
            Row(children: [
              Gesture_Widget(
                onTap: func7,
                texto: textos[6].toString(),
              ),
              SizedBox(width: 5, height: 5,),
              Gesture_Widget(
                onTap: func8,
                texto: textos[7].toString(),
              ),
              SizedBox(width: 5, height: 5,),
              Gesture_Widget(
                onTap: func9,
                texto: textos[8].toString(),
              ),
              SizedBox(width: 5, height: 5,),
            ]),
          SizedBox(height: 50),
          Center(child: ElevatedButton(onPressed: Restart, child: Text("Restart Game")))
        ]),
      ),
    );
  }
}