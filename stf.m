function F = stf(a, h, X_P, Y_P, X_T)

Eq = [0 0 0];

Eq(1) = a^2 + 2*X_T(1)*X_T(2) - 2*X_T(1)*(X_P(1) + sqrt(3)*(Y_P(1) - Y_P(2))) - 2*X_P(2)*X_T(2) ... 
    - ((sqrt(3)*X_P(1) - Y_P(1) + Y_P(2))^2 + (h(1)^2 + h(2)^2) - 4*X_P(1)^2 - X_P(2)^2) ...
    + 2*sqrt((h(1)^2 - 4*(X_T(1) - X_P(1))^2)*(h(2)^2 - (X_T(2) - X_P(2))^2));

Eq(2) = a^2 - 4*X_T(1)*X_T(3) - 2*X_T(1)*(X_P(1) - 3*X_P(3) + sqrt(3)*(Y_P(1) - Y_P(3))) ...
    - 2*X_T(3)*(-3*X_P(1) + X_P(3) + sqrt(3)*(Y_P(1) - Y_P(3))) ...
    - ((sqrt(3)*(X_P(1) + X_P(3)) - Y_P(1) + Y_P(3))^2 + (h(1)^2 + h(3)^2) - 4*X_P(1)^2 - 4*X_P(3)^2) ...
    + 2*sqrt((h(1)^2 - 4*(X_T(1) - X_P(1))^2)*(h(3)^2 - 4*(X_T(3) - X_P(3))^2));

Eq(3) = a^2 + 2*X_T(2)*X_T(3) - 2*X_T(3)*(X_P(3) + sqrt(3)*(Y_P(2) - Y_P(3))) - 2*X_P(2)*X_T(2)...
    - ((sqrt(3)*X_P(3) - Y_P(2) + Y_P(3))^2 + (h(2)^2 + h(3)^2) - X_P(2)^2 - 4*X_P(3)^2) ...
    + 2*sqrt((h(2)^2 - (X_T(2) - X_P(2))^2)*(h(3)^2 - 4*(X_T(3) - X_P(3))^2));

F = Eq;
end