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
