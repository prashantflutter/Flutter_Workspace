 //
 // I
 // I N
 // I N D
 // I N D I
 // I N D I A

import 'dart:io';

void main(){

  // First Method
  List name = ["I","N","D","I","A"];

  for(int i=0;i<name.length;i++){
    for(int j=0;j<=i;j++){
      stdout.write(" ${name[j]} ");
    }
    print("");
  }

  print("====================");


  // Second Method
  String word="I";

    for(int i=0;i<1;i++)
    {
      print(" $word ");
      word+=" N ";

      print(" $word ");
      word+=" D ";

      print(" $word ");
      word+=" I ";

      print(" $word ");
      word+=" A ";

      print(" $word ");

    }


}