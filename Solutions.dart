/* PLEASE NOTE THAT THIS SECTION IS FOR RUNNING OF THE CODES ONLY. 
   THE ANSWERS ARE AT THE BOTTOM OF THE PAGE. THANK YOU. */

void main() {
  // Example 1
  int result = sum(3, 5);
  print("The sum is: $result"); // Output: The sum is: 8

  //Example 2
  int number = 5;
  int result = factorial(number);
  print("The factorial of $number is: $result"); // Output: The factorial of 5 is: 120

  //Example 3
  int num1 = 7;
  print("$num1 is ${isPrime(num1) ? 'a prime' : 'not a prime'} number"); // Output: 7 is a prime number
  

  //Example 4
  double celsiusTemperature = 20.0;
  double fahrenheitTemperature = celsiusToFahrenheit(celsiusTemperature);
  print("$celsiusTemperature°C is $fahrenheitTemperature°F"); // Output: 20.0°C is 68.0°F



  //Example 5
  String originalString = "Samuel, Chigozie";
  String reversedString = StringManipulator.reverseString(originalString);
  print("Original string: $originalString");
  print("Reversed string: $reversedString"); // Output: Original string: Samuel, Chigozie Reversed string: eizogihC ,leumaS

  //Example 6
  Person person1 = Person("Samuel", 26);
  person1.displayInfo(); // Output ->> Name: Samuel Age: 26




  // Example 7
  Rectangle rectangle = Rectangle(5.0, 3.0);
  double area = rectangle.calculateArea();
  print("Area of the rectangle: $area square units"); //Output --> Area of the rectangle: 15 square units

  // Example 8 
  Circle circle = Circle(5.0);
  double circumference = circle.calculateCircumference();
  print("Circumference of the circle: $circumference units"); //Output --> Circumference of the circle: 31.41592653589793 units

  
  // Example 9
  BankAccount account = BankAccount(1000.0);
    
  account.checkBalance(); // Output: Account Balance: 1000.0 units
    
  account.deposit(500.0); // Output: Deposited: 500.0 units
  account.checkBalance(); // Output: Account Balance: 1500.0 units
    
  account.withdraw(200.0); // Output: Withdrawn: 200.0 units
  account.checkBalance(); // Output: Account Balance: 1300.0 units
    
  account.withdraw(1500.0); // Output: Invalid withdrawal amount or insufficient funds


  // Example 10
  Student student1 = Student("Alice", 18, 85.0);
  print("${student1.name} ${student1.isPassed() ? 'passed' : 'failed'}"); // Output: Alice passed


  // Example 11
  Calculator calculator = Calculator();

  double resultAdd = calculator.add(5.0, 3.0);
  print("Addition: $resultAdd"); // Output: Addition: 8.0

  double resultSubtract = calculator.subtract(5.0, 3.0);
  print("Subtraction: $resultSubtract"); // Output: Subtraction: 2.0

  double resultMultiply = calculator.multiply(5.0, 3.0);
  print("Multiplication: $resultMultiply"); // Output: Multiplication: 15.0



// Example 12
Car car = Car();

car.start(); // Output: Car started
car.checkFuelLevel(); // Output: Fuel level: 0.0 liters

car.refuel(20.0); // Output: Refueled: 20.0 liters
car.checkFuelLevel(); // Output: Fuel level: 20.0 liters

car.stop(); // Output: Car stopped



// Example 13
List<int> numbers = [3, 7, 2, 8, 5];
int max = findMaxElement(numbers);
print("Maximum element in the list: $max"); // Output: Maximum element in the list: 8


// Example 14
Employee employee = Employee("Samuel Chigozie", 50000.0);
print("Original salary of ${employee.name}: ${employee.salary}"); // Output: Original salary of Samuel Chigozie: 50000.0
  
employee.giveBonus(5000.0); // Output: Samuel Chigozie received a bonus of 5000.0
print("Updated salary of ${employee.name}: ${employee.salary}"); // Output: Updated salary of Samuel Chigozie: 55000.0
  
employee.giveBonus(-2000.0); // Output: Invalid bonus amount

// Example 15
double base = 5.0;
double height = 3.0;
double area = calculateTriangleArea(base, height);
print("Area of the triangle with base $base and height $height: $area square units");
//Output -- > Area of the triangle with base 5 and height 3: 7.5 square units


// Example 16
double number = 25.0;
double squareRoot = findSquareRoot(number);
print("Square root of $number: $squareRoot"); // Output: Square root of 25.0: 5.0

// Example 17
 int limit = 50;
 List<int> fibonacciList = generateFibonacciNumbers(limit);
 print("Fibonacci numbers up to $limit: $fibonacciList");

 // Example 18
 int year1 = 2024;
  print("$year1 is ${isLeapYear(year1) ? 'a leap' : 'not a leap'} year"); // Output: 2024 is a leap year

  int year2 = 2023;
  print("$year2 is ${isLeapYear(year2) ? 'a leap' : 'not a leap'} year"); // Output: 2023 is not a leap year


  // Example 19
  int number = 5;
  int result = factorial(number);
  print("Factorial of $number is: $result"); // Output: Factorial of 5 is: 120


  // Example 20
  List<int> numbers = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10];
  List<int> evenNumbers = getEvenNumbers(numbers);
  print("Original list: $numbers");
  print("Even numbers: $evenNumbers"); // Output: Even numbers: [2, 4, 6, 8, 10]



}







//<-------------------------------------------- ANSWERS -------------------------------------------->
/* THIS IS THE ANSWERS SECTION. PLEASE REFERENCE THEIR CODE RUN EXAMPLE ABOVE. THANK YOU. */

// Answer No.1
int sum(int a, int b) {
  return a + b;
}

// Answer No.2
int factorial(int n) {
  if (n == 0 || n == 1) {
    return 1;
  } else {
    return n * factorial(n - 1);
  }
}

// Answer No.3
bool isPrime(int number) {
  if (number <= 1) return false; // 0 and 1 are not prime

  for (int i = 2; i * i <= number; i++) {
    if (number % i == 0) return false; // If divisible by any number up to sqrt(number), it's not prime
  }

  return true;
}

// Answer No.4
double celsiusToFahrenheit(double celsius) {
  return (celsius * 9 / 5) + 32;
}

// Answer No.5
class StringManipulator {
  static String reverseString(String inputString) {
    List<String> characters = inputString.split('');
    characters = characters.reversed.toList();
    return characters.join('');
  }
}

//Answer No.6
class Person {
  String name;
  int age;

  Person(this.name, this.age);

  void displayInfo() {
    print("Name: $name");
    print("Age: $age");
  }
}

// Answer No.7
class Rectangle {
  double length;
  double width;

  Rectangle(this.length, this.width);

  double calculateArea() {
    return length * width;
  }
}

// Answer No.8
import 'dart:math';

class Circle {
  double radius;

  Circle(this.radius);

  double calculateCircumference() {
    return 2 * pi * radius;
  }
}


// Answer No.9
class BankAccount {
  double balance;

  BankAccount(this.balance);

  void deposit(double amount) {
    if (amount > 0) {
      balance += amount;
      print("Deposited: $amount units");
    } else {
      print("Invalid deposit amount");
    }
  }

  void withdraw(double amount) {
    if (amount > 0 && amount <= balance) {
      balance -= amount;
      print("Withdrawn: $amount units");
    } else {
      print("Invalid withdrawal amount or insufficient funds");
    }
  }

  void checkBalance() {
    print("Account Balance: $balance units");
  }
}


//Answer No.10
class Student {
  String name;
  int age;
  double grade;

  Student(this.name, this.age, this.grade);

  bool isPassed() {
    return grade >= 60.0;
  }
}


// Answer No.11
class Calculator {
  double add(double num1, double num2) {
    return num1 + num2;
  }

  double subtract(double num1, double num2) {
    return num1 - num2;
  }

  double multiply(double num1, double num2) {
    return num1 * num2;
  }

  double divide(double num1, double num2) {
    if (num2 != 0) {
      return num1 / num2;
    } else {
      print("Error: Division by zero");
      return double.nan; // return NaN (Not a Number) for division by zero
    }
  }
}


// Answer No.12
class Car {
  bool _isStarted = false;
  double _fuelLevel = 0.0; // Fuel level in liters

  void start() {
    if (!_isStarted) {
      _isStarted = true;
      print("Car started");
    } else {
      print("Car is already started");
    }
  }

  void stop() {
    if (_isStarted) {
      _isStarted = false;
      print("Car stopped");
    } else {
      print("Car is already stopped");
    }
  }

  void checkFuelLevel() {
    print("Fuel level: $_fuelLevel liters");
  }

  void refuel(double amount) {
    if (amount > 0) {
      _fuelLevel += amount;
      print("Refueled: $amount liters");
    } else {
      print("Invalid fuel amount");
    }
  }
}


// Answer No.13
int findMaxElement(List<int> numbers) {
  if (numbers.isEmpty) {
    throw ArgumentError("List is empty");
  }
  
  int maxElement = numbers[0]; // Initialize maxElement with the first element
  
  for (int i = 1; i < numbers.length; i++) {
    if (numbers[i] > maxElement) {
      maxElement = numbers[i]; // Update maxElement if a larger element is found
    }
  }
  
  return maxElement;
}

// Answer No.14
class Employee {
  String name;
  double salary;

  Employee(this.name, this.salary);

  void giveBonus(double bonusAmount) {
    if (bonusAmount > 0) {
      salary += bonusAmount;
      print("$name received a bonus of $bonusAmount");
    } else {
      print("Invalid bonus amount");
    }
  }
}


// Answer No.15
class Triangle {
  double base;
  double height;

  Triangle(this.base, this.height);

  double calculateArea() {
    return 0.5 * base * height; // Formula to calculate the area of a triangle
  }
}

double calculateTriangleArea(double base, double height) {
  Triangle triangle = Triangle(base, height);
  return triangle.calculateArea();
}


// Answer No.16
import 'dart:math';

double findSquareRoot(double number) {
  return sqrt(number);
}


// Answer No.17
List<int> generateFibonacciNumbers(int limit) {
  List<int> fibonacciNumbers = [];
  
  int a = 0, b = 1;
  while (a <= limit) {
    fibonacciNumbers.add(a);
    int temp = a + b;
    a = b;
    b = temp;
  }
  
  return fibonacciNumbers;
}

// Answer No.18
bool isLeapYear(int year) {
  if (year % 4 == 0) {
    if (year % 100 == 0) {
      if (year % 400 == 0) {
        return true; // If the year is divisible by 400, it is a leap year
      } else {
        return false; // If the year is divisible by 100 but not by 400, it is not a leap year
      }
    } else {
      return true; // If the year is divisible by 4 but not by 100, it is a leap year
    }
  } else {
    return false; // If the year is not divisible by 4, it is not a leap year
  }
}


// Answer No.19
int factorial(int n) {
  if (n == 0 || n == 1) {
    return 1; // Base case: factorial of 0 and 1 is 1
  } else {
    return n * factorial(n - 1); // Recursive call to compute factorial
  }
}


// Answer No.20
List<int> getEvenNumbers(List<int> numbers) {
  List<int> evenNumbers = [];
  
  for (int number in numbers) {
    if (number % 2 == 0) {
      evenNumbers.add(number);
    }
  }
  
  return evenNumbers;
}





