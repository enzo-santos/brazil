#include <stdio.h>
#include <stdlib.h>

void show(long* flag, char* chars, char* slogan) {
    int c_ = 0;
    int li = 0;
    for (int i = 0; i < 15; i++) {
        for (int j = 0; j < 41; j++) {
            char c = 0;
            int li_ = li;
            while (li < 4) {
                c = *(chars + li);
                if (((*(flag + (15 * li + i)) >> j) & 1) == 0) {
                    break;
                }
                ++li;
            }
            li = li_;
            if (c == *(chars + 3)) {
                c = *(slogan + c_++);
            }
            printf("%c", c);
        }
        printf("\n");
    }
}

int main() {
    long* flag = malloc(60 * sizeof(long));
    unsigned char bytes[6];
    FILE *fp = fopen("flag", "r");
    for (int i = 0; i < 4; i++) {
        for (int j = 0; j < 15; j++) {
            fread(bytes, 6, 1, fp);
            long value = 0L;
            for (int bi = 0; bi < 6; bi++) {
                value |= (long) ((bytes[5 - bi] & (long) 0xFF) << (8 * bi));
            }
            *(flag + (15 * i + j)) = value;
        }
    }
    fclose(fp);
    show(flag, ".#` ", " ORDEM E PROGRESSO ");
    return 0;
}
