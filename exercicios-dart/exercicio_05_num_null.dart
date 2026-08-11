void main() {
  num registro = 123;
  print('Registro (inteiro): $registro');

  registro = 123.45;
  print('\nRegistro (decimal): $registro');

  String? telefone = null;

  String? observacoes = 'Paciente prefere atendimento no período da manhã.';

  print('\nTelefone: ${telefone ?? 'não informado'}');

  if (observacoes != null) {
    print('\nTamanho das observações: ${observacoes.length} caracteres');
  }
}
