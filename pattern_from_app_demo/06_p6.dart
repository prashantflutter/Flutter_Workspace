  // 1 2 3 4
  // 5 6 7 8
  // 9 10 11 12
  // 13 14 15 16

  import 'dart:io';

void main(){

  print("enter Eny Number");
  int num = int.parse(stdin.readLineSync().toString());
  int k=1;
  for(int i=1;i<=num;i++){

    for(int j=1;j<=num;j++){
      stdout.write(" $k ");
      k++;
    }
    print('');
  }

  }