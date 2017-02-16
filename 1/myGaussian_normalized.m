%%  Problem 3 && Problem 4
function Gn = myGaussian_normalized(dims, sigma) 
    k_row = (dims(1) - 1) / 2;
    k_col = (dims(2) - 1) / 2;
    Gn = zeros(dims);
    for i = 1:dims(1)
        for j = 1:dims(2)
            Gn(i, j) = exp(-((i - k_row -1) ^ 2 + (j - k_col - 1) ^ 2) / (2 * sigma ^ 2));
        end
    end
    Gn = Gn / sum(sum(Gn));
end