import 'class_functions.dart';

void main() {
  // Instanciamento da classe "ClassFunctions()" para utilização das funções de forma isolada
  final classFunctions = ClassFunctions();

  classFunctions.sumDivisibleNumbers(
    convertedValue: classFunctions.validationInputValue(),
  );
}
