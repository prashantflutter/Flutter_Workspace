// 9. Write a Program to check the given year is leap year or not.


void main(){
  int year = 2023;
  if(year % 4 == 0 && year % 400 == 0 ){
    print(" $year is leap year.");
  }else{
    print("$year is not leap year.");
  }
}