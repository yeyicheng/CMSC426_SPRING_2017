%%  Problem 2
function G = myGaussian(dims, sigma) 
    loc_zero = (1 + dims(2)) / 2;
    G = zeros(dims);
    for i = 1:dims(2)
        G(i) = normpdf(i - loc_zero, 0, sigma);
    end
end