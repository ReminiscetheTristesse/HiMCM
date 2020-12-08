m = [83.3250   97.0662
   59.2788   91.2600
   60.2863   96.1513
  104.7262   96.2300
  102.8162   94.6825
  101.4450   94.8812
   83.2687   95.2050
   60.2863   96.0487
   60.0675   89.0088
   63.7888   92.8975
   75.0775   95.1188];

m_ = [102.7500   95.6050
   66.1433   94.7250
   82.8733   96.1733
   55.4317   89.7267
  110.1300   96.3683
   56.4567   95.3733
  100.9017   96.7083
   59.4467   96.6083
   77.9983   97.0267
   56.3767   90.0450
   81.1000   98.1600];

n = zeros(11, 11);

for i = 1 : 11
    l = [m_(i, 1), m_(i, 2)]; % m矩阵的第i行
    for j = 1 : 11
        l_ = [m_(j, 1), m_(j, 2)]; % m_矩阵的第j行
        jiajiao = abc(l, l_);
        n(i, j) = real(jiajiao);
    end
end