// bmi_cli.dart
import 'dart:io';
void main () {
  print("=== BMI Calculator ===");
  double? weight = _getDoubleInput("Enter your weight in kg: ");
  double? height = _getDoubleInput("Enter your height in meters: ");

  if (weight == null || height == null) {
    print ("Invlid input. Please enter numbers only");
    return;
  }

  double bmi = weight/(height * height);

  print("\nYour BMI is: ${bmi.toStringAsFixed(2)}");

  if (bmi < 18.5) {
    print ("Category: Underweight");
  } else if (bmi < 25) {
    print ("Category: Normal weight");
  } else if (bmi < 30) {
    print ("Category: Overweight");
 } else {
    print ("Category: Obese");
  }
}
  

 double? _getDoubleInput(String prompt) {
  print (prompt);
  String? input = stdin.readLineSync();

  try{
    return double.parse(input!);
  } catch (e) {
    return null;
  }
 }
