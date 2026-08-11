void main() {
  Set<String> especialidades = {'Cardiologia', 'Pediatria', 'Dermatologia'};

  especialidades.add('Cardiologia');

  especialidades.add('Ortopedia');

  print('Conjunto final de especialidades: $especialidades');

  bool temPediatria = especialidades.contains('Pediatria');
  print('\nPossui Pediatria? $temPediatria');

  print('\nQuantidade de especialidades únicas: ${especialidades.length}');
}
