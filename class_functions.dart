import 'dart:io';

class ClassFunctions {
  // Função de verificação de valores double inseridos pelo usuário, em que, se o valor não apresentar parte fracionária (exemplos: 1.0, 23.00000), este é convertido para inteiro
  bool verificationDoubleNumbers({required String userInput}) {
    final double? userInputToDouble = double.tryParse(userInput);

    if (userInputToDouble != null &&
        userInputToDouble.truncateToDouble() == userInputToDouble) {
      return true;
    } else {
      return false;
    }
  }

  // Função de validação de valores inseridos pelo usuário, onde verificam-se se estes são vazios, negativos ou decimais
  int validationInputValue() {
    late String? userInput;
    late int? convertedValue;

    print('Seja bem vindo(a) ao desafio técnico do candidato Antônio Claudio!');
    print(
      'Espero conseguir atender a todas as exigências dos examinadores para prosseguir no processo seletivo!',
    );

    do {
      stdout.write(
        'Por gentileza, insira um número inteiro e positivo para análise do sistema: ',
      );
      userInput = stdin.readLineSync();

      if (userInput == null) {
        return 0;
      } else {
        if (verificationDoubleNumbers(userInput: userInput)) {
          convertedValue = double.parse(userInput).toInt();
        } else {
          convertedValue = int.tryParse(userInput);
        }
        if (convertedValue == null || convertedValue < 0) {
          print(
            'Valor inválido! Insira um valor numérico inteiro e positivo para análise do sistema.',
          );
          print(
            '************************************************************************************',
          );
        } else {
          return convertedValue;
        }
      }
    } while (convertedValue == null || convertedValue < 0);

    return 0;
  }

  // Função de soma dos valores inferiores ao inserido pelo usuário que são divisíveis por 3 ou por 5
  void sumDivisibleNumbers({required int convertedValue}) {
    List<int> listDivisibleNumbers = [];
    int sum = 0;

    for (var i = 0; i < convertedValue; i++) {
      if (i % 3 == 0 || i % 5 == 0) {
        listDivisibleNumbers.add(i);
        sum = sum + i;
      }
    }

    print(
      'Os valores inferiores a $convertedValue divisíveis por 3 ou por 5 são: $listDivisibleNumbers. A somatória dos valores presentes na lista apresentada é: $sum',
    );
  }
}
