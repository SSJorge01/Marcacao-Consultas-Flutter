void main() {
  Map<String, dynamic> consulta = {
    'id': 1,
    'paciente': 'Ana Silva',
    'medico': 'Dr. Carlos',
    'valor': 250.0,
    'status': 'agendada',
    'telefone': null,
  };

  print('== Informações Principais ==');
  print('Paciente: ${consulta['paciente']}');
  print('Médico: ${consulta['medico']}');
  print('Valor: R\$ ${consulta['valor'].toStringAsFixed(2)}');

  consulta['status'] = 'confirmada';

  consulta['telefone'] = '(11) 98765-4321';

  print('\n== Todos os dados do Map ==');
  consulta.forEach((chave, valor) {
    print('$chave => $valor');
  });
}
