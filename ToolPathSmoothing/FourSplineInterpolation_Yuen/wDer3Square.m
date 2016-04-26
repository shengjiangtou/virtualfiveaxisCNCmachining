function w111 = wDer3Square(r)
% 目标函数中要用到的w'''(r)

global Q1;
global Q2;
global Q3;
global Q4;
global Q5;
global Q6;
global wk_1;
global wk;

w111 = 210 ^ 2 *...
    ((1 - r).^4 * (Q3 - 3*Q2 + 3*Q1 - wk_1) +....
    4*(1 - r).^3 .* r * (Q4 - 3*Q3 + 3*Q2 - Q1) + ...
    6*(1 - r).^2 .* r.^2 * (Q5 - 3*Q4 + 3*Q3 - Q2) + ...
    4*(1 - r) .* r.^3 * (Q6 - 3*Q5 + 3*Q4 - Q3) +...
    r.^4 * (wk - 3*Q6 + 3*Q5 - Q4)).^2;

% w111 = 42^2 * ...
%     ((1 - r).^5 * (Q2 - 2*Q1 + wk_1) +...
%     5 * (1 - r).^4 .* r * (Q3 - 2*Q2 + Q1) +...
%     10 * (1 - r).^3 .* r.^2 *(Q4 - 2*Q3 + Q2) +...
%     10 * (1 - r).^2 .* r.^3 *(Q5 - 2*Q4 + Q3) +...
%     5 * (1 - r) .* r.^4 * (Q6 - 2*Q5 + Q4) +...
%     r.^5 * (wk + 2*Q6 + Q5)) .^2;