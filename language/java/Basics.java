//Main
public class Main{
  public static void main(String[] args) {
    System.out.println("hello world");
  }
}

//boolean
public class Main{
  public static void main(String[] args) {
    boolean isJavaFun = true;
    boolean isFishTasty = false;
    System.out.println(isJavaFun);
  }
}

//Type casting
public class Main{
  public static void main(String[] args) {
    int myNum =5;
    double myDouble = myNum;
    System.out.println(myDouble);
  }
}

// narrowing casting
public class Main {
  public static void main(String[] args) {
    double myDouble = 9.78d;
    int myInt = (int) myDouble; // Manual casting: double to int

    System.out.println(myDouble);   // Outputs 9.78
    System.out.println(myInt);      // Outputs 9
  }
}

// length of sting 
txt.length();

//to upper case
txt.toUpperCase();

// to find index of first occurance of character in a string
txt.indexOf("hello");

// to concat string
String firstName = "John";
String lastName = "Doe";
System.out.println(firstName + " " + lastName);
System.out.println(firstName.concat(lastName));

//concatacation of string and number
String x = "10";
int y = 20;
String z = x + y;  // z will be 1020 (a String)

//writing quote as a sting
String txt = "We are the so-called \"Vikings\" from the north.";


// maths functions Math.abs(arg),sqrt(arg),random(),

//if else if and else
if (20 > 18) {
  System.out.println("20 is greater than 18");
}


if (condition) {

} else {

}

if (condition1) {
} else if (condition2) {
} else {
}

// short hand if else ternary
int time = 20;
String result = (time < 18) ? "Good day." : "Good evening.";
System.out.println(result);

//switch case
int day = 4;
switch (day) {
  case 1:
    System.out.println("Monday");
    break;
  case 2:
    System.out.println("Tuesday");
    break;
  case 3:
    System.out.println("Wednesday");
    break;
  case 4:
    System.out.println("Thursday");
    break;
  case 5:
    System.out.println("Friday");
    break;
  case 6:
    System.out.println("Saturday");
    break;
  case 7:
    System.out.println("Sunday");
    break;

// default keyword

int day = 4;
switch (day) {
  case 6:
    System.out.println("Today is Saturday");
    break;
  case 7:
    System.out.println("Today is Sunday");
    break;
  default:
    System.out.println("Looking forward to the Weekend");


//while loop to Print i as long as i is less than 6.
  int i = 1;
 while (i < 6) {
  System.out.println(i);
  i++;
}

//Use the do/while loop to print i as long as i is less than 6.
int i = 1;
do
 {
  System.out.println(i);
  i++;
}
while (i < 6);



 //Use a for loop to print "Yes" 5 times:

for(int i = 0; i < 5; i++) {
 System.out.println("Yes");
}

//Loop through the items in the cars array.
String[] cars = {"Volvo", "BMW", "Ford"};
 for(String i : cars) {
  System.out.println(i);
}

//Stop the loop if i is 5. 
for (int i = 0; i < 10; i++) {
  if (i == 5) {
    break; //if continue instead of break it will skip when i==5 
  }
  System.out.println(i);
}

//creating string cars
String[] cars ={"volvo","mercedes"};

//array length
String[] cars = {"Volvo", "BMW", "Ford", "Mazda"};
System.out.println(cars.length);

// 2D array
int[][] a={ {1, 2, 3, 4}, 
              {5, 6, 7} };


//looping through multi dimensional array
public class Main {
  public static void main(String[] args) {
    int[][] myNumbers = { {1, 2, 3, 4}, {5, 6, 7} };
    for (int i = 0; i < myNumbers.length; ++i) {
      for(int j = 0; j < myNumbers[i].length; ++j) {
        System.out.println(myNumbers[i][j]);
      }
    }
  }
}


