clc; clear;

A = [10 -1  2  0;
    -1 11 -3  1;
     2 -1 10 -1;
     0  3 -1  8];

b = [6; 25; -11; 15];

X0 = [0; 0; 0; 0];  % tebakan awal
N = 4;              % jumlah iterasi (sesuai diktat)
tol = 1e-6;

X = Tugas3_OtnielAnugrahNtoy_662022013(A, b, X0, N, tol);