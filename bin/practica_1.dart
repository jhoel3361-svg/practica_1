import 'dart:io';

void main() {
  print('===== COSTO DE ENVÍO =====');

  stdout.write('Ingrese monto total de la compra: S/ ');
  double compra = double.parse(stdin.readLineSync() ?? '0');

  print('');
  print('===== ZONA DE ENTREGA =====');
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
}