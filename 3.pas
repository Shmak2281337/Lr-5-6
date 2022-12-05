var i,m,k:integer ; A:array [1..20] of integer;
begin
  write('Дан массив ');
  for i:=1 to 20 do
  begin
    A[i]:=random(-52,65);
    write(A[i],' ');
  end;
  writeln();
  m:=0;
  for i:=1 to 20 do
  begin
    if A[i]>m then
    begin
      m:=A[i];
      k:=i;
    end;
  end;
  writeln('Наибольший элемент массива - ',m,'. Его номер - ',k, '.');
  for i:=20 downto 1 do if (A[i]<m) and (A[i]>0) then m:=A[i];
  for i:=1 to 20 do if A[i]=m then writeln('Наименьший положительный элемент массива - ',m,'. Его номер - ',i,'.');
  for i:=1 to 20 do if (A[i] mod 5 = 0)then
  begin
    m:=A[i];
    k:=i;
  end;
  writeln('Номер последнего элемента массива, кратного 5 - ',k,'.') 
end.