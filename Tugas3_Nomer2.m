function [L, R, M, T] = Tugas3_Nomer2(f, a, b, n)

    h = (b - a) / n;
    x = a:h:b;
    
    % Riemann kiri
    L = h * sum(f(x(1:end-1)));
    
    % Riemann kanan
    R = h * sum(f(x(2:end)));
    
    % Riemann tengah
    x_mid = (x(1:end-1) + x(2:end)) / 2;
    M = h * sum(f(x_mid));
    
    % Aturan trapesium
    T = (h/2) * (f(a) + 2*sum(f(x(2:end-1))) + f(b));
    
    fprintf('Riemann Kiri   = %.6f\n', L);
    fprintf('Riemann Kanan  = %.6f\n', R);
    fprintf('Riemann Tengah = %.6f\n', M);
    fprintf('Trapesium      = %.6f\n', T);
end
