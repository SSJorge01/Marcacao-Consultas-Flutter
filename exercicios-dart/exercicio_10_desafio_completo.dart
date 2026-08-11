enum StatusConsulta { agendada, confirmada, cancelada }

class Consulta {
  int id;
  String paciente;
  double valor;
  DateTime data;
  StatusConsulta status;
  String? telefone;

  Consulta({
    required this.id,
    required this.paciente,
    required this.valor,
    required this.data,
    required this.status,
    this.telefone,
  });

  void atualizarStatus(StatusConsulta novoStatus) {
    status = novoStatus;
  }
}

void main() {
  Set<String> especialidades = {'Cardiologia', 'Pediatria', 'Ortopedia'};

  Map<String, dynamic> dadosPacienteMap = {
    'nome': 'Carlos Eduardo',
    'idade': 34,
    'convenio': true,
  };

  Consulta consulta1 = Consulta(
    id: 101,
    paciente: dadosPacienteMap['nome'],
    valor: 250.00,
    data: DateTime(2026, 8, 15, 10, 0),
    status: StatusConsulta.agendada,
    telefone: '(11) 99999-8888',
  );

  Consulta consulta2 = Consulta(
    id: 102,
    paciente: 'Mariana Lima',
    valor: 350.50,
    data: DateTime(2026, 8, 16, 14, 30),
    status: StatusConsulta.agendada,
    telefone: null,
  );

  List<Consulta> listaConsultas = [consulta1, consulta2];

  ({String paciente, double valor}) resumoRecord = (
    paciente: consulta1.paciente,
    valor: consulta1.valor,
  );

  num descontoPadrao = 0.05;
  bool possuiDesconto = dadosPacienteMap['convenio'] as bool;

  consulta1.atualizarStatus(StatusConsulta.confirmada);
  consulta2.atualizarStatus(StatusConsulta.cancelada);

  print('========================================');
  print('        RELATÓRIO DE CONSULTAS         ');
  print('========================================');

  print('Quantidade total de consultas: ${listaConsultas.length}');

  double somaValores = 0.0;
  for (var c in listaConsultas) {
    somaValores += c.valor;
  }
  print('Soma total dos valores: R\$ ${somaValores.toStringAsFixed(2)}');

  print('Especialidades disponíveis: ${especialidades.join(', ')}');

  print(
    'Destaque (Record): ${resumoRecord.paciente} - R\$ ${resumoRecord.valor.toStringAsFixed(2)}',
  );

  print('\n== Lista Detalhada ==');
  for (var c in listaConsultas) {
    String telFormatado = c.telefone ?? 'não informado';

    print('ID: ${c.id}');
    print('Paciente: ${c.paciente}');
    print('Telefone: $telFormatado');
    print('Data: ${c.data.day}/${c.data.month}/${c.data.year}');
    print('Valor: R\$ ${c.valor.toStringAsFixed(2)}');
    print('Status atual: ${c.status.name}');
    print('----------------------------------------');
  }
}
