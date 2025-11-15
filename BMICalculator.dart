void main() {
  int mass = 57; // in kilograms
  String height = "1.75"; // in meters
  double heightInMeters = double.parse(height);
  double bmi = mass / (heightInMeters * heightInMeters);
  print("Your BMI is: $bmi");

  if (bmi <18.5){
    print("You are underweight");
  } else if (bmi < 25){
    print("Your weight is normal");
  } else {
    print("you are overweight");
  }
}