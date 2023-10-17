// 13. Write a program to find the Max number from the given three number using Nested If

void main(){
  int a=7,b=7,c=44;

  if(a >= b){
    if(a>=c){
      print("Three of Max Number is a = $a.");
    }else{
      print("Three of Max Number is c = $c.");
    }
  }else{
    if(b>=c){
      print("Three of Max Number is b = $b.");

    }else{
      print("Three of Max Number is c = $c.");

    }
  }

}