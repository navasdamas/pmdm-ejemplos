// t01-ej01-variables.dart
// Ejecutar con: dart run t01-ej01-variables.dart

void main() {
  // 1. Tipo explícito
  String nombre = 'Lucía';
  int edad = 19;
  double nota = 8.75;
  bool aprobado = true;

  // 2. Inferencia de tipo con var: el tipo se fija en la primera asignación
  var ciudad = 'Baena'; // ciudad es String
  ciudad = 'Córdoba'; // correcto: sigue siendo String
  // ciudad = 14;       // ERROR: no se puede asignar un int a un String

  // 3. final: se asigna una sola vez, en tiempo de ejecución
  final fechaMatricula = DateTime.now();

  // 4. const: constante conocida en tiempo de compilación
  const notaMinima = 5.0;

  // 5. Null safety: solo los tipos con ? admiten null
  String? apodo; // vale null hasta que se le asigne algo
  print('Apodo: ${apodo ?? "sin apodo"}');
  apodo = 'Lu';
  print('Apodo: $apodo');

  // 6. Interpolación de cadenas
  print('$nombre tiene $edad años y vive en $ciudad.');
  print('Nota: $nota (mínimo para aprobar: $notaMinima)');
  print('¿Aprobado? $aprobado');
  print('El año que viene tendrá ${edad + 1} años.');
  print('Matriculada el