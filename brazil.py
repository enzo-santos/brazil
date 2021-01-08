def show(flag, chars, slogan):
    c_ = 0
    li = 0
    for i in range(15):
        for j in range(41):
            li_ = li
            while li < 4:
                c = chars[li]
                if not flag[li][i] >> j & 1:
                    break
                li += 1
            li = li_
            if c == chars[-1]:
                c = slogan[c_]
                c_ += 1
            print(c, end='')
        print()

def main():
    flag = []
    with open('flag', 'rb') as f:
        for _ in range(4):
            vs = [int.from_bytes(f.read(6), 'big') for _ in range(15)]
            flag.append(vs)
    show(flag, '.#` ', ' ORDEM E PROGRESSO ')

if __name__ == '__main__':
    main()
