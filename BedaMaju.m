%Fungsi f(x) = 2x
f = @(x) 2*x ;
%titik Eval
x = 1;
% daftar nilai h
h_values = 0.01 ;
% h_values = [1e-1,1e-2,1e-3,1e-4];
% Turunan Eksak
df_exact = 2;
disp ('--- Perbandingan Turunan Numerik Untuk f(x) = 2x ---')
% lopp untuk setiap nilai n
% for i = 1:5
for i =1:5
    h = h_values;
    %metode beda Maju
    df_forward = (f(x+h)-f(x))/h ;
    %Metode Beda Mundur
    df_backward = (f(x)-f(x-h))/h ;
    %Metode Beda Tengah
    df_central = (f(x+h)-f(x-h))/(2*h) ;
    %Menampilkan Hasil
    disp (['h =', num2str(h)])
    disp (['Beda Maju :', num2str(df_forward)])
    disp (['Beda Mundur :', num2str(df_backward)])
    disp (['Beda Tengah :', num2str(df_central)])
    disp (['Turunan Eksak :', num2str(df_exact)])
    disp ('')
end
