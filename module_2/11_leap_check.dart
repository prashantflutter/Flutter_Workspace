// 11. Write a Program to check the given year is leap year or not.


void main(){
  int year = 2023;
  if(((year%400==0)||(year%100!=0)) && year % 4 == 0 ){
    print(" $year is leap year.");
  }else{
    print("$year is not leap year.");
  }

  int year2 = 2000;

  if(((year2%400==0)||(year2%100!=0)) && year2 % 4 == 0 ){
    print("$year2 is leap year.");
  }else{
    print("$year2 is not leap year.");
  }
}