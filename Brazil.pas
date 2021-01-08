Program Brazil;
Var coluna, linha, i, j: integer;
Begin
    for coluna := 0 to 100 do begin
        for linha := 0 to 30 do begin
            gotoxy(coluna,linha);
            textcolor(green);
            writeln(#219);
        end;
    end;
    for i := 0 to 10 do begin
        linha := 5;
        coluna := 50 - i*3;
        linha := linha + i;
        if i > 0 then begin
            repeat
                gotoxy(coluna,linha);
                textcolor(yellow);
                writeln(#219);
                coluna := coluna + 1;
            until coluna = 50 + i*3;
        end else begin
            gotoxy(coluna,linha);
            textcolor(yellow);
            writeln(#219);
        end;
    end;
    for i := 0 to 10 do begin
        linha := 15;
        coluna := 20 + i*3;
        linha := linha + i;
        if i < 10 then begin
            repeat
                gotoxy(coluna,linha);
                textcolor(yellow);
                writeln(#219);
                coluna := coluna + 1;
            until coluna = 80 - i*3;
        end else begin
            gotoxy(coluna,linha);
            textcolor(yellow);
            writeln(#219);
        end;
    end;
    coluna := 49;
    linha := 15;
    i := 5;
    j := 1;
    repeat
        linha := 15 - i;
        coluna := 49 - j*3;
        repeat
            gotoxy(coluna,linha);
            textcolor(blue);
            writeln(#219);
            coluna := coluna + 1;
        until coluna = 49 + 3*(j+1);
        i := i - 1;
        j := j + 1;
    until i = 1;
    coluna := 37;
    linha := 13;
    repeat
        coluna := 37;
        repeat
            gotoxy(coluna,linha);
            textcolor(blue);
            writeln(#219);
            coluna := coluna+1;
        until coluna = 64;
        linha := linha + 1;
    until linha = 18;
    coluna := 40;
    linha := 18;
    i := 0;
    j := 1;
    repeat
        coluna := 40 + 3*i;
        repeat
            gotoxy(coluna,linha);
            textcolor(blue);
            writeln(#219);
            coluna := coluna + 1;
        until coluna = 64 - j*3;
        linha := linha + 1;
        i := i + 1;
        j := j + 1;
    until j = 4;
    for coluna := 37 to 63 do begin
        for linha := 14 to 16 do begin
            gotoxy(coluna,linha);
            textcolor(7);
            writeln(#219);
        end;
    end;
    gotoxy(42, 15);
    textbackground(white);
    textcolor(green);
    write('ORDEM E PROGRESSO');
End.
