  //
  // 1 3 5 7 9
  // 3 5 7 9 11
  // 5 7 9 11 13
  // 7 9 11 13 15
  // 9 11 13 15 17

  import 'dart:io';

void main(){

  print('Enter any Number');
  int num = int.parse(stdin.readLineSync().toString());
  int k;
  for(int i=1;i<=num;i++){
    k=i;
    for(int j=1;j<=num;j++){
      stdout.write(" ${(2*(i+j))-3} ");
         }
    print("");
  }

  }