void main() {
  List<String> status = ['agendada', 'confirmada', 'cancelada'];

  List<double> precos = [150.0, 320.0, 292.0, 480.0];

  print('== Status das Consultas ==');
  for (String item in status) {
    print('O status atual da consulta é: $item');
  }

  precos.add(300.0);

  print('\n== Preços >= 300 ==');
  List<double> precosAltos = precos.where((preco) => preco >= 300).toList();
  for (double preco in precosAltos) {
    print('R\$ ${preco.toStringAsFixed(2)}');
  }

  print('\n== Informações Adicionais ==');
  print('Quantidade total de preços cadastrados: ${precos.length}');
}
