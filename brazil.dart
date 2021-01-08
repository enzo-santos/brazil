import 'dart:io';
import 'dart:typed_data';

void show(final List<List<int>> flag, final String chars, final String slogan) {
  int c_ = 0;
  int li = 0;
  for (int i = 0; i < 15; i++) {
    for (int j = 0; j < 41; j++) {
      String c = chars[li];
      final int li_ = li;
      while (li < 4) {
        c = chars[li];
        if ((flag[li][i] >> j & 1) == 0) {
          break;
        }
        ++li;
      }
      li = li_;
      if (c == chars[chars.length - 1]) {
        c = slogan[c_++];
      }
      stdout.write(c);
    }
    print("");
  }
}

void main() async {
  final List<List<int>> flag = List.generate(4, (_) => List.filled(15, 0));
  final RandomAccessFile data = await File("flag").open();
  for (int i = 0; i < 4; i++) {
    for (int j = 0; j < 15; j++) {
      final Uint8List bytes = await data.read(6);
      for (int bi = 0; bi < 6; bi++) {
        flag[i][j] |= (bytes[5 - bi] & 0xFF) << (8 * bi);
      }
    }
  }
  await data.close();  
  show(flag, ".#` ", " ORDEM E PROGRESSO ");
}
