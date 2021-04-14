import 'dart:io';

main() {
  print('<----------------Convertor---------------->');
  stdout.writeln('Which Conversion you would like to proceed with?');
  printAllConversions();

  var mainConversion = stdin.readLineSync();

  switch (mainConversion) {
    case '1':
      handleLengthConversions();
      break;

    case '2':
      handleTemperatureConversions();
      break;

    case '3':
      handleAreaConversions();
      break;

    case '4':
      handleVolumeConversion();
      break;

    case '5':
      handleWeightConversion();
      break;

    case '6':
      handleTimeConversion();
      break;

    default:
      print('Input Error. Try Again');
      break;
  }
}

printAllConversions() {
  print('1. Length Conversion');
  print('2. Temperature Conversion');
  print('3. Area Conversion');
  print('4. Volume Conversion');
  print('5. Weight Conversion');
  print('6. Time Conversion');
}

firstUnitQuestion() {
  print('From what unit would you like to convert?');
}

secondUnitQuestion() {
  print('To what unit would you like to convert?');
}

inputInstruction() {
  print('------Provide Input Value------');
}

handleLengthConversions() {
  firstUnitQuestion();
  printAllLengthConversions();
  var firstUnit = stdin.readLineSync();
  secondUnitQuestion();
  printAllLengthConversions();
  var secondUnit = stdin.readLineSync();
  inputInstruction();
  String? stringInput = stdin.readLineSync();
  if (stringInput != null) {
    int inputValue = int.parse(stringInput);
    convertLength(inputValue, firstUnit, secondUnit);
  }
}

handleTemperatureConversions() {
  firstUnitQuestion();
  printAllTemperatureConversions();
  var firstUnit = stdin.readLineSync();
  secondUnitQuestion();
  printAllTemperatureConversions();
  var secondUnit = stdin.readLineSync();
  inputInstruction();
  String? stringInput = stdin.readLineSync();
  if (stringInput != null) {
    int inputValue = int.parse(stringInput);
    convertTemperature(inputValue, firstUnit, secondUnit);
  }
}

handleAreaConversions() {
  firstUnitQuestion();
  printAllAreaConversions();
  var firstUnit = stdin.readLineSync();
  secondUnitQuestion();
  printAllAreaConversions();
  var secondUnit = stdin.readLineSync();
  inputInstruction();
  String? stringInput = stdin.readLineSync();
  if (stringInput != null) {
    int inputValue = int.parse(stringInput);
    // convertArea(inputValue, firstUnit, secondUnit);
  }
}

handleVolumeConversion() {
  firstUnitQuestion();
  printAllVolumeConversion();
  var firstUnit = stdin.readLineSync();
  secondUnitQuestion();
  printAllVolumeConversion();
  var secondUnit = stdin.readLineSync();
  inputInstruction();
  String? stringInput = stdin.readLineSync();
  if (stringInput != null) {
    int inputValue = int.parse(stringInput);
    // convertVolume(inputValue, firstUnit, secondUnit);
  }
}

handleWeightConversion() {
  firstUnitQuestion();
  printAllWeightConversion();
  var firstUnit = stdin.readLineSync();
  secondUnitQuestion();
  printAllWeightConversion();
  var secondUnit = stdin.readLineSync();
  inputInstruction();
  String? stringInput = stdin.readLineSync();
  if (stringInput != null) {
    int inputValue = int.parse(stringInput);
    // convertWeight(inputValue, firstUnit, secondUnit);
  }
}

handleTimeConversion() {
  firstUnitQuestion();
  printAllTimeConversion();
  var firstUnit = stdin.readLineSync();
  secondUnitQuestion();
  printAllTimeConversion();
  var secondUnit = stdin.readLineSync();
  inputInstruction();
  String? stringInput = stdin.readLineSync();
  if (stringInput != null) {
    int inputValue = int.parse(stringInput);
    // convertTime(inputValue, firstUnit, secondUnit);
  }
}

convertLength(inputValue, firstUnit, secondUnit) {
  print('------Your Result------');
  if (firstUnit == secondUnit) {
    print(inputValue);
  } else if (firstUnit == '1' && secondUnit == '2') {
    inputValue = inputValue / 1000;
  } else if (firstUnit == '2' && secondUnit == '1') {
    inputValue = inputValue * 1000;
  }
  print(inputValue);
}

convertTemperature(inputValue, firstUnit, secondUnit) {
  print('------Your Result------');
  if (firstUnit == secondUnit) {
    print(inputValue);
  } else if (firstUnit == '1' && secondUnit == '2') {
    inputValue = inputValue + 273.15;
  } else if (firstUnit == '2' && secondUnit == '1') {
    inputValue = inputValue - 273.15;
  } else if (firstUnit == '1' && secondUnit == '3') {
    inputValue = (inputValue * 9 / 5) + 32;
  } else if (firstUnit == '3' && secondUnit == '1') {
    inputValue = (inputValue - 32) * 5 / 9;
  } else if (firstUnit == '2' && secondUnit == '3') {
    inputValue = (inputValue - 273.15) * 9 / 5 + 32;
  } else if (firstUnit == '3' && secondUnit == '2') {
    inputValue = (inputValue - 32) * 5 / 9 + 273.15;
  }
  print(inputValue);
}

printAllLengthConversions() {
  print('1. Meter');
  print('2. Kilometer');
  print('3. Millimeter');
  print('4. Micrometer');
  print('5. Nanometer');
  print('6. Mile');
  print('7. Yard');
  print('8. Foot');
  print('9. Inch');
  print('10. Light Year');
}

printAllTemperatureConversions() {
  print('1. Celsius');
  print('2. Kelvin');
  print('3. Fahrenheit');
}

printAllAreaConversions() {
  print('1. Square Meter');
  print('2. Square Kilometer');
  print('3. Square Centimeter');
  print('4. Square Millimeter');
  print('5. Square Micrometer');
  print('6. Hectare');
  print('7. Square Mile');
  print('8. Square Yard');
  print('9. Square Foot');
  print('10. Square Inch');
  print('11. Acre');
}

printAllVolumeConversion() {
  print('1. Cubic Meter');
  print('2. Cubic Kilometer');
  print('3. Cubic Centimeter');
  print('4. Liter');
  print('5. Milliliter');
  print('6. US Gallon');
  print('7. US Quart');
  print('8. US Pint');
  print('9. US Cup');
  print('10. US Fluid Ounce');
  print('11. US Table Spoon');
  print('12. US Tea Spoon');
  print('13. Imperial Gallon');
  print('14. Imperial Quart');
  print('15. Imperial Pint');
  print('16. Imperial Fluid Ounce');
  print('17. Imperial Table Spoon');
  print('18. Imperial Tea Spoon');
  print('19. Cubic Mile');
  print('20. Cubic Yard');
  print('21. Cubic Foot');
  print('22. Cubic Inch');
}

printAllWeightConversion() {
  print('1. Kilogram');
  print('2. Gram');
  print('3. Milligram');
  print('4. Metric Ton');
  print('5. Long Ton');
  print('6. Short Ton');
  print('7. Pound');
  print('8. Ounce');
  print('9. Carrat');
  print('10. Atomic Mass Unit');
}

printAllTimeConversion() {
  print('1. Second');
  print('2. Millisecond');
  print('3. Microsecond');
  print('4. Nanosecond');
  print('5. Picosecond');
  print('6. Minute');
  print('7. Hour');
  print('8. Day');
  print('9. Week');
  print('10. Month');
  print('11. Year');
}
