
// 46. Create a program using List


import 'dart:io';

void main(){

  List country = ["I","N","D","I","A"];

  for(int i=0;i<country.length;i++){
    for(int j=0;j<=i;j++){
      stdout.write(" ${country[j]}");
    }
    print("");
  }

}