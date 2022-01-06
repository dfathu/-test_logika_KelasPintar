import 'dart:io';

void main() {
  int kelipatan_3 = 1;
  int kelipatan_7 = 1;
  int temp_nilai = 0;
  int temp_nilai2 = 0;
  print("N = ");
  // Reading name of the Geek
  String? n = stdin.readLineSync();

  int n_parse = int.parse(n!);

  temp_nilai = n_parse % 7;

  print('\n');

  for (var i = 0; i < n_parse; i++) {
    temp_nilai = kelipatan_3 * 3;
    temp_nilai2 = kelipatan_7 * 7;

    if (temp_nilai < temp_nilai2) {
      print('$temp_nilai');
      kelipatan_3 += 1;
    } else if (temp_nilai > temp_nilai2) {
      print('$temp_nilai2');
      kelipatan_7 += 1;
    } else {
      print('Z');
      kelipatan_3 += 1;
      kelipatan_7 += 1;
    }
  }
  // Printing the name
}
