
  // 4 5 12 13
  // 3 6 11 14
  // 2 7 10 15
  // 1 8 9  16

  import 'dart:io';

void main(){

  print("Enter any Number");
  int num = int.parse(stdin.readLineSync().toString());
  int k;
  for(int i=num;i>=1;i--){
    k=i;
    for(int j=1;j<=num;j++){
      stdout.write(' $k ');
      k+=num;
    }
    print("");
  }

  }