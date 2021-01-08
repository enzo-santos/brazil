#include <vector>
#include <string>
#include <fstream>
#include <iostream>

void show(std::vector<std::vector<long>> flag, std::string chars, std::string slogan) {
    int c_ = 0;
    int li = 0;
    for (int i = 0; i < 15; i++) {
        for (int j = 0; j < 41; j++) {
            char c = 0;
            int li_ = li;
            while (li < 4) {
                c = chars[li];
                if (((flag[li][i] >> j) & 1) == 0) {
                    break;
                }
                ++li;
            }
            li = li_;
            if (c == chars.back()) {
                c = slogan[c_++];
            }
            std::cout << c;
        }
        std::cout << std::endl;
    }
}

int main() {
    std::vector<std::vector<long>> flag(4);
    for (int i = 0; i < 4; i++) {
        flag[i].resize(15);
    }
    std::ifstream f("flag");
    std::vector<char> bytes(6);
    for (int i = 0; i < 4; i++) {
        for (int j = 0; j < 15; j++) {
            f.read(bytes.data(), bytes.size());
            for (int bi = 0; bi < 6; bi++) {
                flag[i][j] |= (long) ((bytes[5 - bi] & (long) 0xFF) << (8 * bi));
            }
        }
    }
    show(flag, ".#` ", " ORDEM E PROGRESSO ");
}
