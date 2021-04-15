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
      handleWeightConversion();
      break;

    case '5':
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
    convertArea(inputValue, firstUnit, secondUnit);
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
    convertWeight(inputValue, firstUnit, secondUnit);
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
    convertTime(inputValue, firstUnit, secondUnit);
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
  } else if (firstUnit == '1' && secondUnit == '3') {
    inputValue = inputValue * 1000;
  } else if (firstUnit == '3' && secondUnit == '1') {
    inputValue = inputValue / 1000;
  } else if (firstUnit == '1' && secondUnit == '4') {
    inputValue = inputValue * 1000000;
  } else if (firstUnit == '4' && secondUnit == '1') {
    inputValue = inputValue / 1000000;
  } else if (firstUnit == '1' && secondUnit == '5') {
    inputValue = inputValue * 1000000000;
  } else if (firstUnit == '5' && secondUnit == '1') {
    inputValue = inputValue / 1000000000;
  } else if (firstUnit == '1' && secondUnit == '6') {
    inputValue = inputValue / 1609;
  } else if (firstUnit == '6' && secondUnit == '1') {
    inputValue = inputValue * 1609;
  } else if (firstUnit == '1' && secondUnit == '7') {
    inputValue = inputValue * 1.094;
  } else if (firstUnit == '7' && secondUnit == '1') {
    inputValue = inputValue / 1.094;
  } else if (firstUnit == '1' && secondUnit == '8') {
    inputValue = inputValue * 3.281;
  } else if (firstUnit == '8' && secondUnit == '1') {
    inputValue = inputValue / 3.281;
  } else if (firstUnit == '1' && secondUnit == '9') {
    inputValue = inputValue * 39.37;
  } else if (firstUnit == '9' && secondUnit == '1') {
    inputValue = inputValue / 39.37;
  } else if (firstUnit == '2' && secondUnit == '3') {
    inputValue = inputValue * 1000000;
  } else if (firstUnit == '3' && secondUnit == '2') {
    inputValue = inputValue / 1000000;
  } else if (firstUnit == '2' && secondUnit == '4') {
    inputValue = inputValue * 1000000000;
  } else if (firstUnit == '4' && secondUnit == '2') {
    inputValue = inputValue / 1000000000;
  } else if (firstUnit == '2' && secondUnit == '5') {
    inputValue = inputValue * 1000000000000;
  } else if (firstUnit == '5' && secondUnit == '2') {
    inputValue = inputValue / 1000000000000;
  } else if (firstUnit == '2' && secondUnit == '6') {
    inputValue = inputValue / 1.609;
  } else if (firstUnit == '6' && secondUnit == '2') {
    inputValue = inputValue * 1.609;
  } else if (firstUnit == '2' && secondUnit == '7') {
    inputValue = inputValue * 1094;
  } else if (firstUnit == '7' && secondUnit == '2') {
    inputValue = inputValue / 1094;
  } else if (firstUnit == '2' && secondUnit == '8') {
    inputValue = inputValue * 3281;
  } else if (firstUnit == '8' && secondUnit == '2') {
    inputValue = inputValue / 3281;
  } else if (firstUnit == '2' && secondUnit == '9') {
    inputValue = inputValue * 39370;
  } else if (firstUnit == '9' && secondUnit == '2') {
    inputValue = inputValue / 39370;
  } else if (firstUnit == '3' && secondUnit == '4') {
    inputValue = inputValue * 1000;
  } else if (firstUnit == '4' && secondUnit == '3') {
    inputValue = inputValue / 1000;
  } else if (firstUnit == '3' && secondUnit == '5') {
    inputValue = inputValue * 1000000;
  } else if (firstUnit == '5' && secondUnit == '3') {
    inputValue = inputValue / 1000000;
  } else if (firstUnit == '3' && secondUnit == '6') {
    inputValue = inputValue * 0.0000006213712;
  } else if (firstUnit == '6' && secondUnit == '3') {
    inputValue = inputValue / 0.0000006213712;
  } else if (firstUnit == '3' && secondUnit == '7') {
    inputValue = inputValue / 914;
  } else if (firstUnit == '7' && secondUnit == '3') {
    inputValue = inputValue * 914;
  } else if (firstUnit == '3' && secondUnit == '8') {
    inputValue = inputValue / 305;
  } else if (firstUnit == '8' && secondUnit == '3') {
    inputValue = inputValue * 305;
  } else if (firstUnit == '3' && secondUnit == '9') {
    inputValue = inputValue / 25.4;
  } else if (firstUnit == '9' && secondUnit == '3') {
    inputValue = inputValue * 25.4;
  } else if (firstUnit == '4' && secondUnit == '5') {
    inputValue = inputValue * 1000;
  } else if (firstUnit == '5' && secondUnit == '4') {
    inputValue = inputValue / 1000;
  } else if (firstUnit == '4' && secondUnit == '6') {
    inputValue = inputValue * 0.0000000006213712;
  } else if (firstUnit == '6' && secondUnit == '4') {
    inputValue = inputValue / 0.0000000006213712;
  } else if (firstUnit == '4' && secondUnit == '7') {
    inputValue = inputValue / 914400;
  } else if (firstUnit == '7' && secondUnit == '4') {
    inputValue = inputValue * 914400;
  } else if (firstUnit == '4' && secondUnit == '8') {
    inputValue = inputValue / 304800;
  } else if (firstUnit == '8' && secondUnit == '4') {
    inputValue = inputValue * 304800;
  } else if (firstUnit == '4' && secondUnit == '9') {
    inputValue = inputValue / 25400;
  } else if (firstUnit == '9' && secondUnit == '4') {
    inputValue = inputValue * 25400;
  } else if (firstUnit == '5' && secondUnit == '6') {
    inputValue = inputValue * 0.0000000000006213712;
  } else if (firstUnit == '6' && secondUnit == '5') {
    inputValue = inputValue / 0.0000000000006213712;
  } else if (firstUnit == '5' && secondUnit == '7') {
    inputValue = inputValue * 0.000000001093613;
  } else if (firstUnit == '7' && secondUnit == '5') {
    inputValue = inputValue / 0.000000001093613;
  } else if (firstUnit == '5' && secondUnit == '8') {
    inputValue = inputValue * 0.00000000328084;
  } else if (firstUnit == '8' && secondUnit == '5') {
    inputValue = inputValue / 0.00000000328084;
  } else if (firstUnit == '5' && secondUnit == '9') {
    inputValue = inputValue * 0.00000003937008;
  } else if (firstUnit == '9' && secondUnit == '5') {
    inputValue = inputValue / 0.00000003937008;
  } else if (firstUnit == '6' && secondUnit == '7') {
    inputValue = inputValue * 1760;
  } else if (firstUnit == '7' && secondUnit == '6') {
    inputValue = inputValue / 1760;
  } else if (firstUnit == '6' && secondUnit == '8') {
    inputValue = inputValue * 5280;
  } else if (firstUnit == '8' && secondUnit == '6') {
    inputValue = inputValue / 5280;
  } else if (firstUnit == '6' && secondUnit == '9') {
    inputValue = inputValue * 63360;
  } else if (firstUnit == '9' && secondUnit == '6') {
    inputValue = inputValue / 63360;
  } else if (firstUnit == '7' && secondUnit == '8') {
    inputValue = inputValue * 3;
  } else if (firstUnit == '8' && secondUnit == '7') {
    inputValue = inputValue / 3;
  } else if (firstUnit == '7' && secondUnit == '9') {
    inputValue = inputValue * 36;
  } else if (firstUnit == '9' && secondUnit == '7') {
    inputValue = inputValue / 36;
  } else if (firstUnit == '8' && secondUnit == '9') {
    inputValue = inputValue * 12;
  } else if (firstUnit == '9' && secondUnit == '8') {
    inputValue = inputValue / 12;
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

convertArea(inputValue, firstUnit, secondUnit) {
  print('------Your Result------');
  if (firstUnit == secondUnit) {
    print(inputValue);
  } else if (firstUnit == '1' && secondUnit == '2') {
    inputValue = inputValue;
  } else if (firstUnit == '2' && secondUnit == '1') {
    inputValue = inputValue;
  } else if (firstUnit == '1' && secondUnit == '3') {
    inputValue = inputValue;
  } else if (firstUnit == '3' && secondUnit == '1') {
    inputValue = inputValue;
  } else if (firstUnit == '1' && secondUnit == '4') {
    inputValue = inputValue;
  } else if (firstUnit == '4' && secondUnit == '1') {
    inputValue = inputValue;
  } else if (firstUnit == '1' && secondUnit == '5') {
    inputValue = inputValue;
  } else if (firstUnit == '5' && secondUnit == '1') {
    inputValue = inputValue;
  } else if (firstUnit == '1' && secondUnit == '6') {
    inputValue = inputValue;
  } else if (firstUnit == '6' && secondUnit == '1') {
    inputValue = inputValue;
  } else if (firstUnit == '1' && secondUnit == '7') {
    inputValue = inputValue;
  } else if (firstUnit == '7' && secondUnit == '1') {
    inputValue = inputValue;
  } else if (firstUnit == '1' && secondUnit == '8') {
    inputValue = inputValue;
  } else if (firstUnit == '8' && secondUnit == '1') {
    inputValue = inputValue;
  } else if (firstUnit == '1' && secondUnit == '9') {
    inputValue = inputValue;
  } else if (firstUnit == '9' && secondUnit == '1') {
    inputValue = inputValue;
  } else if (firstUnit == '1' && secondUnit == '10') {
    inputValue = inputValue;
  } else if (firstUnit == '10' && secondUnit == '1') {
    inputValue = inputValue;
  } else if (firstUnit == '1' && secondUnit == '11') {
    inputValue = inputValue;
  } else if (firstUnit == '11' && secondUnit == '1') {
    inputValue = inputValue;
  } else if (firstUnit == '2' && secondUnit == '3') {
    inputValue = inputValue;
  } else if (firstUnit == '3' && secondUnit == '2') {
    inputValue = inputValue;
  } else if (firstUnit == '2' && secondUnit == '4') {
    inputValue = inputValue;
  } else if (firstUnit == '4' && secondUnit == '2') {
    inputValue = inputValue;
  } else if (firstUnit == '2' && secondUnit == '5') {
    inputValue = inputValue;
  } else if (firstUnit == '5' && secondUnit == '2') {
    inputValue = inputValue;
  } else if (firstUnit == '2' && secondUnit == '6') {
    inputValue = inputValue;
  } else if (firstUnit == '6' && secondUnit == '2') {
    inputValue = inputValue;
  } else if (firstUnit == '2' && secondUnit == '7') {
    inputValue = inputValue;
  } else if (firstUnit == '7' && secondUnit == '2') {
    inputValue = inputValue;
  } else if (firstUnit == '2' && secondUnit == '8') {
    inputValue = inputValue;
  } else if (firstUnit == '8' && secondUnit == '2') {
    inputValue = inputValue;
  } else if (firstUnit == '2' && secondUnit == '9') {
    inputValue = inputValue;
  } else if (firstUnit == '9' && secondUnit == '2') {
    inputValue = inputValue;
  } else if (firstUnit == '2' && secondUnit == '10') {
    inputValue = inputValue;
  } else if (firstUnit == '10' && secondUnit == '2') {
    inputValue = inputValue;
  } else if (firstUnit == '2' && secondUnit == '11') {
    inputValue = inputValue;
  } else if (firstUnit == '11' && secondUnit == '2') {
    inputValue = inputValue;
  } else if (firstUnit == '3' && secondUnit == '4') {
    inputValue = inputValue;
  } else if (firstUnit == '4' && secondUnit == '3') {
    inputValue = inputValue;
  } else if (firstUnit == '3' && secondUnit == '5') {
    inputValue = inputValue;
  } else if (firstUnit == '5' && secondUnit == '3') {
    inputValue = inputValue;
  } else if (firstUnit == '3' && secondUnit == '6') {
    inputValue = inputValue;
  } else if (firstUnit == '6' && secondUnit == '3') {
    inputValue = inputValue;
  } else if (firstUnit == '3' && secondUnit == '7') {
    inputValue = inputValue;
  } else if (firstUnit == '7' && secondUnit == '3') {
    inputValue = inputValue;
  } else if (firstUnit == '3' && secondUnit == '8') {
    inputValue = inputValue;
  } else if (firstUnit == '8' && secondUnit == '3') {
    inputValue = inputValue;
  } else if (firstUnit == '3' && secondUnit == '9') {
    inputValue = inputValue;
  } else if (firstUnit == '9' && secondUnit == '3') {
    inputValue = inputValue;
  } else if (firstUnit == '3' && secondUnit == '10') {
    inputValue = inputValue;
  } else if (firstUnit == '10' && secondUnit == '3') {
    inputValue = inputValue;
  } else if (firstUnit == '3' && secondUnit == '11') {
    inputValue = inputValue;
  } else if (firstUnit == '11' && secondUnit == '3') {
    inputValue = inputValue;
  } else if (firstUnit == '4' && secondUnit == '5') {
    inputValue = inputValue;
  } else if (firstUnit == '5' && secondUnit == '4') {
    inputValue = inputValue;
  } else if (firstUnit == '4' && secondUnit == '6') {
    inputValue = inputValue;
  } else if (firstUnit == '6' && secondUnit == '4') {
    inputValue = inputValue;
  } else if (firstUnit == '4' && secondUnit == '7') {
    inputValue = inputValue;
  } else if (firstUnit == '7' && secondUnit == '4') {
    inputValue = inputValue;
  } else if (firstUnit == '4' && secondUnit == '8') {
    inputValue = inputValue;
  } else if (firstUnit == '8' && secondUnit == '4') {
    inputValue = inputValue;
  } else if (firstUnit == '4' && secondUnit == '9') {
    inputValue = inputValue;
  } else if (firstUnit == '9' && secondUnit == '4') {
    inputValue = inputValue;
  } else if (firstUnit == '4' && secondUnit == '10') {
    inputValue = inputValue;
  } else if (firstUnit == '10' && secondUnit == '4') {
    inputValue = inputValue;
  } else if (firstUnit == '3' && secondUnit == '11') {
    inputValue = inputValue;
  } else if (firstUnit == '11' && secondUnit == '3') {
    inputValue = inputValue;
  } else if (firstUnit == '5' && secondUnit == '6') {
    inputValue = inputValue;
  } else if (firstUnit == '6' && secondUnit == '5') {
    inputValue = inputValue;
  } else if (firstUnit == '5' && secondUnit == '7') {
    inputValue = inputValue;
  } else if (firstUnit == '7' && secondUnit == '5') {
    inputValue = inputValue;
  } else if (firstUnit == '5' && secondUnit == '8') {
    inputValue = inputValue;
  } else if (firstUnit == '8' && secondUnit == '5') {
    inputValue = inputValue;
  } else if (firstUnit == '5' && secondUnit == '9') {
    inputValue = inputValue;
  } else if (firstUnit == '9' && secondUnit == '5') {
    inputValue = inputValue;
  } else if (firstUnit == '5' && secondUnit == '10') {
    inputValue = inputValue;
  } else if (firstUnit == '10' && secondUnit == '5') {
    inputValue = inputValue;
  } else if (firstUnit == '5' && secondUnit == '11') {
    inputValue = inputValue;
  } else if (firstUnit == '11' && secondUnit == '5') {
    inputValue = inputValue;
  } else if (firstUnit == '6' && secondUnit == '7') {
    inputValue = inputValue;
  } else if (firstUnit == '7' && secondUnit == '6') {
    inputValue = inputValue;
  } else if (firstUnit == '6' && secondUnit == '8') {
    inputValue = inputValue;
  } else if (firstUnit == '8' && secondUnit == '6') {
    inputValue = inputValue;
  } else if (firstUnit == '6' && secondUnit == '9') {
    inputValue = inputValue;
  } else if (firstUnit == '9' && secondUnit == '6') {
    inputValue = inputValue;
  } else if (firstUnit == '6' && secondUnit == '10') {
    inputValue = inputValue;
  } else if (firstUnit == '10' && secondUnit == '6') {
    inputValue = inputValue;
  } else if (firstUnit == '6' && secondUnit == '11') {
    inputValue = inputValue;
  } else if (firstUnit == '11' && secondUnit == '6') {
    inputValue = inputValue;
  } else if (firstUnit == '7' && secondUnit == '8') {
    inputValue = inputValue;
  } else if (firstUnit == '8' && secondUnit == '7') {
    inputValue = inputValue;
  } else if (firstUnit == '7' && secondUnit == '9') {
    inputValue = inputValue;
  } else if (firstUnit == '9' && secondUnit == '7') {
    inputValue = inputValue;
  } else if (firstUnit == '7' && secondUnit == '10') {
    inputValue = inputValue;
  } else if (firstUnit == '10' && secondUnit == '7') {
    inputValue = inputValue;
  } else if (firstUnit == '7' && secondUnit == '11') {
    inputValue = inputValue;
  } else if (firstUnit == '11' && secondUnit == '7') {
    inputValue = inputValue;
  } else if (firstUnit == '8' && secondUnit == '9') {
    inputValue = inputValue;
  } else if (firstUnit == '9' && secondUnit == '8') {
    inputValue = inputValue;
  } else if (firstUnit == '8' && secondUnit == '10') {
    inputValue = inputValue;
  } else if (firstUnit == '10' && secondUnit == '8') {
    inputValue = inputValue;
  } else if (firstUnit == '8' && secondUnit == '11') {
    inputValue = inputValue;
  } else if (firstUnit == '11' && secondUnit == '8') {
    inputValue = inputValue;
  } else if (firstUnit == '9' && secondUnit == '10') {
    inputValue = inputValue;
  } else if (firstUnit == '10' && secondUnit == '9') {
    inputValue = inputValue;
  } else if (firstUnit == '9' && secondUnit == '11') {
    inputValue = inputValue;
  } else if (firstUnit == '11' && secondUnit == '9') {
    inputValue = inputValue;
  } else if (firstUnit == '10' && secondUnit == '11') {
    inputValue = inputValue;
  } else if (firstUnit == '11' && secondUnit == '10') {
    inputValue = inputValue;
  }
  print(inputValue);
}

convertWeight(inputValue, firstUnit, secondUnit) {
  print('------Your Result------');
  if (firstUnit == secondUnit) {
    print(inputValue);
  } else if (firstUnit == '1' && secondUnit == '2') {
    inputValue = inputValue;
  } else if (firstUnit == '2' && secondUnit == '1') {
    inputValue = inputValue;
  } else if (firstUnit == '1' && secondUnit == '3') {
    inputValue = inputValue;
  } else if (firstUnit == '3' && secondUnit == '1') {
    inputValue = inputValue;
  } else if (firstUnit == '1' && secondUnit == '4') {
    inputValue = inputValue;
  } else if (firstUnit == '4' && secondUnit == '1') {
    inputValue = inputValue;
  } else if (firstUnit == '1' && secondUnit == '5') {
    inputValue = inputValue;
  } else if (firstUnit == '5' && secondUnit == '1') {
    inputValue = inputValue;
  } else if (firstUnit == '1' && secondUnit == '6') {
    inputValue = inputValue;
  } else if (firstUnit == '6' && secondUnit == '1') {
    inputValue = inputValue;
  } else if (firstUnit == '1' && secondUnit == '7') {
    inputValue = inputValue;
  } else if (firstUnit == '7' && secondUnit == '1') {
    inputValue = inputValue;
  } else if (firstUnit == '1' && secondUnit == '8') {
    inputValue = inputValue;
  } else if (firstUnit == '8' && secondUnit == '1') {
    inputValue = inputValue;
  } else if (firstUnit == '1' && secondUnit == '9') {
    inputValue = inputValue;
  } else if (firstUnit == '9' && secondUnit == '1') {
    inputValue = inputValue;
  } else if (firstUnit == '1' && secondUnit == '10') {
    inputValue = inputValue;
  } else if (firstUnit == '10' && secondUnit == '1') {
    inputValue = inputValue;
  } else if (firstUnit == '2' && secondUnit == '3') {
    inputValue = inputValue;
  } else if (firstUnit == '3' && secondUnit == '2') {
    inputValue = inputValue;
  } else if (firstUnit == '2' && secondUnit == '4') {
    inputValue = inputValue;
  } else if (firstUnit == '4' && secondUnit == '2') {
    inputValue = inputValue;
  } else if (firstUnit == '2' && secondUnit == '5') {
    inputValue = inputValue;
  } else if (firstUnit == '5' && secondUnit == '2') {
    inputValue = inputValue;
  } else if (firstUnit == '2' && secondUnit == '6') {
    inputValue = inputValue;
  } else if (firstUnit == '6' && secondUnit == '2') {
    inputValue = inputValue;
  } else if (firstUnit == '2' && secondUnit == '7') {
    inputValue = inputValue;
  } else if (firstUnit == '7' && secondUnit == '2') {
    inputValue = inputValue;
  } else if (firstUnit == '2' && secondUnit == '8') {
    inputValue = inputValue;
  } else if (firstUnit == '8' && secondUnit == '2') {
    inputValue = inputValue;
  } else if (firstUnit == '2' && secondUnit == '9') {
    inputValue = inputValue;
  } else if (firstUnit == '9' && secondUnit == '2') {
    inputValue = inputValue;
  } else if (firstUnit == '2' && secondUnit == '10') {
    inputValue = inputValue;
  } else if (firstUnit == '10' && secondUnit == '2') {
    inputValue = inputValue;
  } else if (firstUnit == '3' && secondUnit == '4') {
    inputValue = inputValue;
  } else if (firstUnit == '4' && secondUnit == '3') {
    inputValue = inputValue;
  } else if (firstUnit == '3' && secondUnit == '5') {
    inputValue = inputValue;
  } else if (firstUnit == '5' && secondUnit == '3') {
    inputValue = inputValue;
  } else if (firstUnit == '3' && secondUnit == '6') {
    inputValue = inputValue;
  } else if (firstUnit == '6' && secondUnit == '3') {
    inputValue = inputValue;
  } else if (firstUnit == '3' && secondUnit == '7') {
    inputValue = inputValue;
  } else if (firstUnit == '7' && secondUnit == '3') {
    inputValue = inputValue;
  } else if (firstUnit == '3' && secondUnit == '8') {
    inputValue = inputValue;
  } else if (firstUnit == '8' && secondUnit == '3') {
    inputValue = inputValue;
  } else if (firstUnit == '3' && secondUnit == '9') {
    inputValue = inputValue;
  } else if (firstUnit == '9' && secondUnit == '3') {
    inputValue = inputValue;
  } else if (firstUnit == '3' && secondUnit == '10') {
    inputValue = inputValue;
  } else if (firstUnit == '10' && secondUnit == '3') {
    inputValue = inputValue;
  } else if (firstUnit == '4' && secondUnit == '5') {
    inputValue = inputValue;
  } else if (firstUnit == '5' && secondUnit == '4') {
    inputValue = inputValue;
  } else if (firstUnit == '4' && secondUnit == '6') {
    inputValue = inputValue;
  } else if (firstUnit == '6' && secondUnit == '4') {
    inputValue = inputValue;
  } else if (firstUnit == '4' && secondUnit == '7') {
    inputValue = inputValue;
  } else if (firstUnit == '7' && secondUnit == '4') {
    inputValue = inputValue;
  } else if (firstUnit == '4' && secondUnit == '8') {
    inputValue = inputValue;
  } else if (firstUnit == '8' && secondUnit == '4') {
    inputValue = inputValue;
  } else if (firstUnit == '4' && secondUnit == '9') {
    inputValue = inputValue;
  } else if (firstUnit == '9' && secondUnit == '4') {
    inputValue = inputValue;
  } else if (firstUnit == '4' && secondUnit == '10') {
    inputValue = inputValue;
  } else if (firstUnit == '10' && secondUnit == '4') {
    inputValue = inputValue;
  } else if (firstUnit == '5' && secondUnit == '6') {
    inputValue = inputValue;
  } else if (firstUnit == '6' && secondUnit == '5') {
    inputValue = inputValue;
  } else if (firstUnit == '5' && secondUnit == '7') {
    inputValue = inputValue;
  } else if (firstUnit == '7' && secondUnit == '5') {
    inputValue = inputValue;
  } else if (firstUnit == '5' && secondUnit == '8') {
    inputValue = inputValue;
  } else if (firstUnit == '8' && secondUnit == '5') {
    inputValue = inputValue;
  } else if (firstUnit == '5' && secondUnit == '9') {
    inputValue = inputValue;
  } else if (firstUnit == '9' && secondUnit == '5') {
    inputValue = inputValue;
  } else if (firstUnit == '5' && secondUnit == '10') {
    inputValue = inputValue;
  } else if (firstUnit == '10' && secondUnit == '5') {
    inputValue = inputValue;
  } else if (firstUnit == '6' && secondUnit == '7') {
    inputValue = inputValue;
  } else if (firstUnit == '7' && secondUnit == '6') {
    inputValue = inputValue;
  } else if (firstUnit == '6' && secondUnit == '8') {
    inputValue = inputValue;
  } else if (firstUnit == '8' && secondUnit == '6') {
    inputValue = inputValue;
  } else if (firstUnit == '6' && secondUnit == '9') {
    inputValue = inputValue;
  } else if (firstUnit == '9' && secondUnit == '6') {
    inputValue = inputValue;
  } else if (firstUnit == '6' && secondUnit == '10') {
    inputValue = inputValue;
  } else if (firstUnit == '10' && secondUnit == '6') {
    inputValue = inputValue;
  } else if (firstUnit == '7' && secondUnit == '8') {
    inputValue = inputValue;
  } else if (firstUnit == '8' && secondUnit == '7') {
    inputValue = inputValue;
  } else if (firstUnit == '7' && secondUnit == '9') {
    inputValue = inputValue;
  } else if (firstUnit == '9' && secondUnit == '7') {
    inputValue = inputValue;
  } else if (firstUnit == '7' && secondUnit == '10') {
    inputValue = inputValue;
  } else if (firstUnit == '10' && secondUnit == '7') {
    inputValue = inputValue;
  } else if (firstUnit == '8' && secondUnit == '9') {
    inputValue = inputValue;
  } else if (firstUnit == '9' && secondUnit == '8') {
    inputValue = inputValue;
  } else if (firstUnit == '8' && secondUnit == '10') {
    inputValue = inputValue;
  } else if (firstUnit == '10' && secondUnit == '8') {
    inputValue = inputValue;
  } else if (firstUnit == '9' && secondUnit == '10') {
    inputValue = inputValue;
  } else if (firstUnit == '10' && secondUnit == '9') {
    inputValue = inputValue;
  }
  print(inputValue);
}

convertTime(inputValue, firstUnit, secondUnit) {
  print('------Your Result------');
  if (firstUnit == secondUnit) {
    print(inputValue);
  } else if (firstUnit == '1' && secondUnit == '2') {
    inputValue = inputValue;
  } else if (firstUnit == '2' && secondUnit == '1') {
    inputValue = inputValue;
  } else if (firstUnit == '1' && secondUnit == '3') {
    inputValue = inputValue;
  } else if (firstUnit == '3' && secondUnit == '1') {
    inputValue = inputValue;
  } else if (firstUnit == '1' && secondUnit == '4') {
    inputValue = inputValue;
  } else if (firstUnit == '4' && secondUnit == '1') {
    inputValue = inputValue;
  } else if (firstUnit == '1' && secondUnit == '5') {
    inputValue = inputValue;
  } else if (firstUnit == '5' && secondUnit == '1') {
    inputValue = inputValue;
  } else if (firstUnit == '1' && secondUnit == '6') {
    inputValue = inputValue;
  } else if (firstUnit == '6' && secondUnit == '1') {
    inputValue = inputValue;
  } else if (firstUnit == '1' && secondUnit == '7') {
    inputValue = inputValue;
  } else if (firstUnit == '7' && secondUnit == '1') {
    inputValue = inputValue;
  } else if (firstUnit == '1' && secondUnit == '8') {
    inputValue = inputValue;
  } else if (firstUnit == '8' && secondUnit == '1') {
    inputValue = inputValue;
  } else if (firstUnit == '1' && secondUnit == '9') {
    inputValue = inputValue;
  } else if (firstUnit == '9' && secondUnit == '1') {
    inputValue = inputValue;
  } else if (firstUnit == '1' && secondUnit == '10') {
    inputValue = inputValue;
  } else if (firstUnit == '10' && secondUnit == '1') {
    inputValue = inputValue;
  } else if (firstUnit == '1' && secondUnit == '11') {
    inputValue = inputValue;
  } else if (firstUnit == '11' && secondUnit == '1') {
    inputValue = inputValue;
  } else if (firstUnit == '2' && secondUnit == '3') {
    inputValue = inputValue;
  } else if (firstUnit == '3' && secondUnit == '2') {
    inputValue = inputValue;
  } else if (firstUnit == '2' && secondUnit == '4') {
    inputValue = inputValue;
  } else if (firstUnit == '4' && secondUnit == '2') {
    inputValue = inputValue;
  } else if (firstUnit == '2' && secondUnit == '5') {
    inputValue = inputValue;
  } else if (firstUnit == '5' && secondUnit == '2') {
    inputValue = inputValue;
  } else if (firstUnit == '2' && secondUnit == '6') {
    inputValue = inputValue;
  } else if (firstUnit == '6' && secondUnit == '2') {
    inputValue = inputValue;
  } else if (firstUnit == '2' && secondUnit == '7') {
    inputValue = inputValue;
  } else if (firstUnit == '7' && secondUnit == '2') {
    inputValue = inputValue;
  } else if (firstUnit == '2' && secondUnit == '8') {
    inputValue = inputValue;
  } else if (firstUnit == '8' && secondUnit == '2') {
    inputValue = inputValue;
  } else if (firstUnit == '2' && secondUnit == '9') {
    inputValue = inputValue;
  } else if (firstUnit == '9' && secondUnit == '2') {
    inputValue = inputValue;
  } else if (firstUnit == '2' && secondUnit == '10') {
    inputValue = inputValue;
  } else if (firstUnit == '10' && secondUnit == '2') {
    inputValue = inputValue;
  } else if (firstUnit == '2' && secondUnit == '11') {
    inputValue = inputValue;
  } else if (firstUnit == '11' && secondUnit == '2') {
    inputValue = inputValue;
  } else if (firstUnit == '3' && secondUnit == '4') {
    inputValue = inputValue;
  } else if (firstUnit == '4' && secondUnit == '3') {
    inputValue = inputValue;
  } else if (firstUnit == '3' && secondUnit == '5') {
    inputValue = inputValue;
  } else if (firstUnit == '5' && secondUnit == '3') {
    inputValue = inputValue;
  } else if (firstUnit == '3' && secondUnit == '6') {
    inputValue = inputValue;
  } else if (firstUnit == '6' && secondUnit == '3') {
    inputValue = inputValue;
  } else if (firstUnit == '3' && secondUnit == '7') {
    inputValue = inputValue;
  } else if (firstUnit == '7' && secondUnit == '3') {
    inputValue = inputValue;
  } else if (firstUnit == '3' && secondUnit == '8') {
    inputValue = inputValue;
  } else if (firstUnit == '8' && secondUnit == '3') {
    inputValue = inputValue;
  } else if (firstUnit == '3' && secondUnit == '9') {
    inputValue = inputValue;
  } else if (firstUnit == '9' && secondUnit == '3') {
    inputValue = inputValue;
  } else if (firstUnit == '3' && secondUnit == '10') {
    inputValue = inputValue;
  } else if (firstUnit == '10' && secondUnit == '3') {
    inputValue = inputValue;
  } else if (firstUnit == '3' && secondUnit == '11') {
    inputValue = inputValue;
  } else if (firstUnit == '11' && secondUnit == '3') {
    inputValue = inputValue;
  } else if (firstUnit == '4' && secondUnit == '5') {
    inputValue = inputValue;
  } else if (firstUnit == '5' && secondUnit == '4') {
    inputValue = inputValue;
  } else if (firstUnit == '4' && secondUnit == '6') {
    inputValue = inputValue;
  } else if (firstUnit == '6' && secondUnit == '4') {
    inputValue = inputValue;
  } else if (firstUnit == '4' && secondUnit == '7') {
    inputValue = inputValue;
  } else if (firstUnit == '7' && secondUnit == '4') {
    inputValue = inputValue;
  } else if (firstUnit == '4' && secondUnit == '8') {
    inputValue = inputValue;
  } else if (firstUnit == '8' && secondUnit == '4') {
    inputValue = inputValue;
  } else if (firstUnit == '4' && secondUnit == '9') {
    inputValue = inputValue;
  } else if (firstUnit == '9' && secondUnit == '4') {
    inputValue = inputValue;
  } else if (firstUnit == '4' && secondUnit == '10') {
    inputValue = inputValue;
  } else if (firstUnit == '10' && secondUnit == '4') {
    inputValue = inputValue;
  } else if (firstUnit == '3' && secondUnit == '11') {
    inputValue = inputValue;
  } else if (firstUnit == '11' && secondUnit == '3') {
    inputValue = inputValue;
  } else if (firstUnit == '5' && secondUnit == '6') {
    inputValue = inputValue;
  } else if (firstUnit == '6' && secondUnit == '5') {
    inputValue = inputValue;
  } else if (firstUnit == '5' && secondUnit == '7') {
    inputValue = inputValue;
  } else if (firstUnit == '7' && secondUnit == '5') {
    inputValue = inputValue;
  } else if (firstUnit == '5' && secondUnit == '8') {
    inputValue = inputValue;
  } else if (firstUnit == '8' && secondUnit == '5') {
    inputValue = inputValue;
  } else if (firstUnit == '5' && secondUnit == '9') {
    inputValue = inputValue;
  } else if (firstUnit == '9' && secondUnit == '5') {
    inputValue = inputValue;
  } else if (firstUnit == '5' && secondUnit == '10') {
    inputValue = inputValue;
  } else if (firstUnit == '10' && secondUnit == '5') {
    inputValue = inputValue;
  } else if (firstUnit == '5' && secondUnit == '11') {
    inputValue = inputValue;
  } else if (firstUnit == '11' && secondUnit == '5') {
    inputValue = inputValue;
  } else if (firstUnit == '6' && secondUnit == '7') {
    inputValue = inputValue;
  } else if (firstUnit == '7' && secondUnit == '6') {
    inputValue = inputValue;
  } else if (firstUnit == '6' && secondUnit == '8') {
    inputValue = inputValue;
  } else if (firstUnit == '8' && secondUnit == '6') {
    inputValue = inputValue;
  } else if (firstUnit == '6' && secondUnit == '9') {
    inputValue = inputValue;
  } else if (firstUnit == '9' && secondUnit == '6') {
    inputValue = inputValue;
  } else if (firstUnit == '6' && secondUnit == '10') {
    inputValue = inputValue;
  } else if (firstUnit == '10' && secondUnit == '6') {
    inputValue = inputValue;
  } else if (firstUnit == '6' && secondUnit == '11') {
    inputValue = inputValue;
  } else if (firstUnit == '11' && secondUnit == '6') {
    inputValue = inputValue;
  } else if (firstUnit == '7' && secondUnit == '8') {
    inputValue = inputValue;
  } else if (firstUnit == '8' && secondUnit == '7') {
    inputValue = inputValue;
  } else if (firstUnit == '7' && secondUnit == '9') {
    inputValue = inputValue;
  } else if (firstUnit == '9' && secondUnit == '7') {
    inputValue = inputValue;
  } else if (firstUnit == '7' && secondUnit == '10') {
    inputValue = inputValue;
  } else if (firstUnit == '10' && secondUnit == '7') {
    inputValue = inputValue;
  } else if (firstUnit == '7' && secondUnit == '11') {
    inputValue = inputValue;
  } else if (firstUnit == '11' && secondUnit == '7') {
    inputValue = inputValue;
  } else if (firstUnit == '8' && secondUnit == '9') {
    inputValue = inputValue;
  } else if (firstUnit == '9' && secondUnit == '8') {
    inputValue = inputValue;
  } else if (firstUnit == '8' && secondUnit == '10') {
    inputValue = inputValue;
  } else if (firstUnit == '10' && secondUnit == '8') {
    inputValue = inputValue;
  } else if (firstUnit == '8' && secondUnit == '11') {
    inputValue = inputValue;
  } else if (firstUnit == '11' && secondUnit == '8') {
    inputValue = inputValue;
  } else if (firstUnit == '9' && secondUnit == '10') {
    inputValue = inputValue;
  } else if (firstUnit == '10' && secondUnit == '9') {
    inputValue = inputValue;
  } else if (firstUnit == '9' && secondUnit == '11') {
    inputValue = inputValue;
  } else if (firstUnit == '11' && secondUnit == '9') {
    inputValue = inputValue;
  } else if (firstUnit == '10' && secondUnit == '11') {
    inputValue = inputValue;
  } else if (firstUnit == '11' && secondUnit == '10') {
    inputValue = inputValue;
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
