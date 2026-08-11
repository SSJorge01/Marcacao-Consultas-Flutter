void main() {
  bool medicoAtivo = true;
  bool consultaAgendada = false;
  bool pacienteTelefone = false;
  bool pagamentoConfirmado = true;

  print('Variáveis Booleanas:');
  print('- medicoAtivo: ${medicoAtivo}');
  print('- consultaAgendada: ${consultaAgendada}');
  print('- pacienteTelefone: ${pacienteTelefone}');
  print('- pagamentoConfirmado: ${pagamentoConfirmado}');

  if (medicoAtivo && consultaAgendada) {
    print('\nConsulta confirmada!');
  } else {
    print('\nConsulta não confirmada!');
  }

  if (!pacienteTelefone) {
    print('\nContato faltante!');
  } else {
    print('\nPaciente tem contato!');
  }

  if (pagamentoConfirmado) {
    print('\nPagamento Confirmado!');
  } else {
    print('\nPagamento não foi confirmado!');
  }
}