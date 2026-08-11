enum StatusConsulta { agendada, confirmada, cancelada }

void main() {
  DateTime dataConsulta = DateTime(2026, 8, 15, 14, 30);

  ({String paciente, String medico, double valor}) consultaInfo = (
    paciente: 'Maria Oliveira',
    medico: 'Dr. Roberto',
    valor: 350.0,
  );

  StatusConsulta status = StatusConsulta.agendada;

  print('== Dados da Consulta Inicial ==');
  print('Data: ${dataConsulta.day}/${dataConsulta.month}/${dataConsulta.year}');
  print('Status atual: ${status.name}');
  print('Paciente: ${consultaInfo.paciente}');
  print('Médico: ${consultaInfo.medico}');
  print('Valor: R\$ ${consultaInfo.valor.toStringAsFixed(2)}');

  status = StatusConsulta.confirmada;
  print('\n== Status Atualizado ==');
  print('Novo Status: ${status.name}');

  DateTime dataRetorno = dataConsulta.add(Duration(days: 7));
  print('\n== Data de Retorno ==');
  print(
    'Data de retorno (+7 dias): ${dataRetorno.day}/${dataRetorno.month}/${dataRetorno.year}',
  );
}
