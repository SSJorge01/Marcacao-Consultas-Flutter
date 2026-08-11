void main() {
  String nomePaciente = "José";
  String nomeMedico = "Lucas";
  String especialidade = "Cardiologista";
  String emailPaciente = "jose.se@gmail.com";

  print('Ficha do paciente:');
  print('Nome do paciente: $nomePaciente');
  print('Nome do médico: $nomeMedico');
  print('Especialidade: $especialidade');
  print('Email do paciente: $emailPaciente');

  print('\n${nomePaciente.toUpperCase()}');

  print('\nQuantidade de caracteres no email: ${emailPaciente.length}');

  print('\nEmail contém \'@\'?: ${emailPaciente.contains('@')}');
}