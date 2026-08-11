void main() {
  int idPaciente = 001;
  int idMedico = 05;
  int idConsulta = 0066;
  int idadePaciente = 45;
  int quantidadeConsultasMes = 600;

  print('Soma dos IDs de paciente e médico: ${idPaciente + idMedico}');

  print('\nPróximo ID de consulta: ${idConsulta + 1}');

  if (idadePaciente >= 60) {
    print('\nPaciente prioitário');
  } else {
    print('\nPaciente comum');
  }

  print('\nDobro da quantidade de consultas: ${quantidadeConsultasMes*2}');
}