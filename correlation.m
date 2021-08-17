function R = correlation(A, B)
    Bm = B-mean(mean(B));
    Am = A-mean(mean(A));
    R = sum(sum(Am.*Bm)) / (sqrt(sum(sum(A-Am)))*sqrt(sum(sum(B-Bm))));
end