import 'dart:io';

void main() {
  print('========================================');
  print('       PRÁCTICA 1 - DART');
  print('========================================');
  print('');

  // ========================================
  // EJERCICIO 1: ACCESO AL SISTEMA
  // ========================================

  print('===== EJERCICIO 1: ACCESO AL SISTEMA =====');

  stdout.write('Ingrese nombre de usuario: ');
  String usuario = stdin.readLineSync() ?? '';

  stdout.write('Ingrese contraseña: ');
  String contrasena = stdin.readLineSync() ?? '';

  stdout.write('¿La cuenta está activa? (si/no): ');
  String cuentaActiva = stdin.readLineSync() ?? '';

  if (usuario == 'estudiante' &&
      contrasena == '12345' &&
      cuentaActiva.toLowerCase() == 'si') {
    print('Acceso permitido. Bienvenido al sistema.');
  } else {
    print('Acceso denegado. Verifique sus datos.');
  }

  print('');
  print('----------------------------------------');
  print('');

  // ========================================
  // EJERCICIO 2: RENDIMIENTO ACADÉMICO
  // ========================================

  print('===== EJERCICIO 2: RENDIMIENTO ACADÉMICO =====');

  stdout.write('Ingrese nombre del estudiante: ');
  String nombre = stdin.readLineSync() ?? '';

  stdout.write('Ingrese nota final (0 - 20): ');
  double nota = double.parse(stdin.readLineSync() ?? '0');

  stdout.write('Ingrese porcentaje de asistencia (0 - 100): ');
  double asistencia = double.parse(stdin.readLineSync() ?? '0');

  print('Estudiante: $nombre');

  if (nota >= 18 && asistencia >= 90) {
    print('Rendimiento excelente.');
  } else if (nota >= 14 && asistencia >= 80) {
    print('Rendimiento satisfactorio.');
  } else if (nota >= 11 && asistencia >= 70) {
    print('Rendimiento básico.');
  } else {
    print('Debe mejorar su rendimiento académico.');
  }

  print('');
  print('----------------------------------------');
  print('');

  // ========================================
  // EJERCICIO 3: COSTO DE MATRÍCULA
  // ========================================

  print('===== EJERCICIO 3: COSTO DE MATRÍCULA =====');

  print('1. Desarrollo de Sistemas de Información - S/ 180');
  print('2. Enfermería Técnica - S/ 150');
  print('3. Contabilidad - S/ 160');
  print('4. Administración de Empresas - S/ 140');

  stdout.write('Seleccione un programa (1-4): ');
  int opcion = int.parse(stdin.readLineSync() ?? '0');

  String programa = '';
  double precio = 0;

  switch (opcion) {
    case 1:
      programa = 'Desarrollo de Sistemas de Información';
      precio = 180;
      break;

    case 2:
      programa = 'Enfermería Técnica';
      precio = 150;
      break;

    case 3:
      programa = 'Contabilidad';
      precio = 160;
      break;

    case 4:
      programa = 'Administración de Empresas';
      precio = 140;
      break;

    default:
      print('Opción no válida.');
  }

  if (opcion >= 1 && opcion <= 4) {
    stdout.write('¿Tiene descuento? (si/no): ');
    String respuesta = (stdin.readLineSync() ?? '').toLowerCase();

    double descuento = 0;

    if (respuesta == 'si') {
      descuento = precio * 0.10;
    }

    double total = precio - descuento;

    print('');
    print('===== RESUMEN DE MATRÍCULA =====');
    print('Programa seleccionado: $programa');
    print('Precio original: S/ ${precio.toStringAsFixed(2)}');
    print('Descuento aplicado: S/ ${descuento.toStringAsFixed(2)}');
    print('Total a pagar: S/ ${total.toStringAsFixed(2)}');
  }

  print('');
  print('----------------------------------------');
  print('');

  // ========================================
  // EJERCICIO 4: COSTO DE ENVÍO
  // ========================================

  print('===== EJERCICIO 4: COSTO DE ENVÍO =====');

  stdout.write('Ingrese monto total de la compra: S/ ');
  double compra = double.parse(stdin.readLineSync() ?? '0');

  print('');
  print('1. Zona urbana');
  print('2. Zona periférica');
  print('3. Zona rural');

  stdout.write('Seleccione la zona de entrega (1-3): ');
  int zona = int.parse(stdin.readLineSync() ?? '0');

  if (zona < 1 || zona > 3) {
    print('Zona de entrega no válida.');
  } else {
    double envio = 0;

    if (compra >= 200) {
      envio = 0;
    } else if (zona == 1) {
      envio = 8;
    } else if (zona == 2) {
      envio = 15;
    } else {
      envio = 25;
    }

    double total = compra + envio;

    print('');
    print('===== RESUMEN DE COMPRA =====');
    print('Monto de compra: S/ ${compra.toStringAsFixed(2)}');
    print('Costo de envío: S/ ${envio.toStringAsFixed(2)}');
    print('Total a pagar: S/ ${total.toStringAsFixed(2)}');
  }

  print('');
  print('========================================');
  print('        FIN DE LA PRÁCTICA');
  print('========================================');
}