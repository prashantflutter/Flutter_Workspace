  //
  // 1 5 9  13
  // 2 6 10 14
  // 3 7 11 15
  // 4 8 12 16

  import 'dart:io';

void main(){

  print('Enter any Number');
  int num = int.parse(stdin.readLineSync().toString());
  int k;
  for(int i=1;i<=num;i++){
    k=i;
    for(int j=1;j<=num;j++){
      stdout.write(" $k ");
      k+=num;
    }
    print('');
    }
  }