void main() {
  double valConsulta01 = 100.0;
  double valConsulta02 = 237.0;
  double valConsulta03 = 670.0;

  print('Soma total dos valores de consulta: ${valConsulta01+valConsulta02+valConsulta03}');

  print('\nMédia das consultas: ${((valConsulta01 + valConsulta02 + valConsulta03) / 3).toStringAsFixed(2)}');

  double consultaMaisCara = valConsulta01;

  if (valConsulta02 > consultaMaisCara) {
    consultaMaisCara = valConsulta02;
  }

  if (valConsulta03 > consultaMaisCara) {
    consultaMaisCara = valConsulta03;
  }

  print('\nConsulta mais cara + desconto de 10%: ${consultaMaisCara*0.90}');

  print('\nValores com apenas 2 casas decimais:');
  print('- ${valConsulta01.toStringAsFixed(2)}');
  print('- ${valConsulta02.toStringAsFixed(2)}');
  print('- ${valConsulta03.toStringAsFixed(2)}');
}