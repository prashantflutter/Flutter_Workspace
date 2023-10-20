// 4. write a program you have to find the factorial of given number.

void main(){

  int num = 5,fect = 1;

  // Formula to Calculate Factorial : n! = n × (n - 1)!

  for(int i=1;i<=num;i++){
    fect = fect * i ;
  }
  print('--------------------------------------\nThe Factorial of given Number is $fect.\n--------------------------------------');


  // int i =0;
  // while(i<=10){
  //   fect = fect * i ;
  //   i++;
  // }
  // print('--------------------------------------\nThe Factorial of given Number is $fect.\n--------------------------------------');


}