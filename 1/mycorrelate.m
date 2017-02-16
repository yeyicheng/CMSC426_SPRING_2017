%% Problem 1
function If = mycorrelate(I, f)
    size_filter = size(f);
    size_pad_row = fix(size_filter(1) / 2);
    size_pad_col = fix(size_filter(2) / 2);
    II = padarray(I, [size_pad_row size_pad_col], 0, 'both');
    II_size = size(II);
    If = zeros(size(I));
    for i = size_pad_row + 1 : II_size(1) - size_pad_row
        for j = size_pad_col + 1 : II_size(2) - size_pad_col
            If(i - size_pad_row, j - size_pad_col) = sum(sum(f .* II(i - size_pad_row: i + size_pad_row, j - size_pad_col: j + size_pad_col)));
        end
    end
end