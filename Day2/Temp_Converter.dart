import 'dart:io';
void main () {
  print ("=== Temperature Converter ===");
  int? celcius = getInput("Enter Degree in Celcius:");

  if (celcius == null) {
    print("Invalid input. Please enter numbers only");
    celcius = getInput("Enter Degree in Celcius:");
    return;}

  double fahrenheit = (celcius * 9/5) + 32; 
  print ( "Your degree in Fahrenheit is: ${fahrenheit.toStringAsFixed(2)} °F");
}
int? getInput(String prompt) {
  print (prompt);
  String? input = stdin.readLineSync();

try{
return int.parse(input!);
}catch (e) {
  return null;
}
}