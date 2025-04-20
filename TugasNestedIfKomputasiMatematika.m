% Nested if
% Menilai Ujian

nilai = 50;
if nilai >= 60
    disp('Lulus');
    
    if nilai >= 85
    disp('Predikat: A');
    elseif nilai >= 75
    disp('Predikat: B');
    elseif nilai >= 65
    disp('Predikat: C');
    else
        disp('Predikat: B');
    end
    
else
    disp('Tidak Lulus');
end

% contoh while looping

i = 1;

while i <= 5
    disp(['angka: ', num2str(i)])
    i=i+1;
end