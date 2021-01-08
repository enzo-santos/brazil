import java.io.IOException;
import java.io.RandomAccessFile;

public class Brazil {
    private static void show(final long[][] flag, final String chars, final String slogan) {
        int c_ = 0;
        int li = 0;
        for (int i = 0; i < 15; i++) {
            for (int j = 0; j < 41; j++) {
                int c = 0;
                final int li_ = li;
                while (li < 4) {
                    c = chars.charAt(li);
                    if ((flag[li][i] >> j & 1) == 0) {
                        break;
                    }
                    ++li;
                }
                li = li_;
                if (c == chars.charAt(chars.length() - 1)) {
                    c = slogan.charAt(c_++);
                }
                System.out.print(Character.toString(c));
            }
            System.out.println();
        }
    }

    public static void main(String[] args) {
        final long[][] flag = new long[4][15];
        try (final RandomAccessFile data = new RandomAccessFile("flag", "r")) {
            final byte[] bytes = new byte[6];
            for (int i = 0; i < 4; i++) {
                for (int j = 0; j < 15; j++) {
                    data.readFully(bytes);
                    flag[i][j] = 0L;
                    for (int bi = 0; bi < 6; bi++) {
                        flag[i][j] |= (long) (bytes[5 - bi] & 0xFF) << (8 * bi);
                    }
                }
            }
        } catch (IOException e) {
            e.printStackTrace();
        }
        show(flag, ".#` ", " ORDEM E PROGRESSO ");
    }
}
