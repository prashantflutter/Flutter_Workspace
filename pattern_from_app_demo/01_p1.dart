  // * * * *
  // * * * *
  // * * * *
  //

  import 'dart:io';

void main(){
   int num;
   print("Enter the Eny numer to Print Pattern");
   num = int.parse(stdin.readLineSync().toString());

   for(int i=1;i<=num;i++){
     for(int j=1;j<=num;j++){
       stdout.write(' * ');
     }
     print("");
   }
  }