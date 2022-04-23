# Brazil :brazil:

Mostra a bandeira do Brasil na tela em diversas linguagens.

A inspiração foi uma implementação em Pascal feita no 1º semestre na 
disciplina de Algoritmos.

## Linguagens

As linguagens abaixo estão listadas em ordem arbitrária.

Com exceção do Pascal e do Prolog, todas as linguagens utilizam caracteres
ASCII para desenhar a bandeira a partir do arquivo binário `flag`.

Com exceção do Pascal, que utiliza coordenadas do console para desenhar
a bandeira, todas as linguagens mostram o seguinte desenho:

```
.........................................
....................#....................
.................#######.................
..............#############..............
............####`````````####............
..........####`````````````####..........
........###```````````````````###........
......##### ORDEM E PROGRESSO #####......
........###```````````````````###........
..........####`````````````####..........
............####`````````####............
..............#############..............
.................#######.................
....................#....................
.........................................
```

### [Pascal](https://www.freepascal.org/download.html)

**Uso**

    fpc brazil.pas
    ./brazil

**Número de linhas:** 100


### [Prolog](https://www.swi-prolog.org/download/stable)

**Uso**

    swipl
    ?- consult('brazil.pl').
    ?- printflag().
  
**Número de linhas:** 75


### [C++](https://gcc.gnu.org/install/download.html)
    
**Uso**

    g++ brazil.cpp -o brasil
    ./brazil

**Número de linhas**: 46

    
### [C](https://gcc.gnu.org/install/download.html)

**Uso**

    gcc brazil.c -o brazil
    ./brazil

**Número de linhas:** 45


### [Dart](https://dart.dev/get-dart)

**Uso**

    dart run brazil.dart

**Número de linhas:** 41


### [Java](https://www.java.com/pt-BR/download/ie_manual.jsp)

**Uso**

    javac Brazil.java
    java Brazil
    
**Número de linhas:** 47


### [Python 3](https://www.python.org/downloads/)

**Uso**

    python -m brazil.py

**Número de linhas:** 28


### [Kotlin](https://kotlinlang.org/releases.html)

**Uso**

    kotlinc Brazil.kt -include-runtime -d brazil.jar
    java -jar brazil.jar

**Número de linhas:** 43
