n=30;m=3;
%y=[144	215	138	145	162	142	170	124	158	154 162	150	140	110	128	130	135	114	116	124 136	142	120	120	160	158	144	130	125	175];
%x1=[39	47	45	47	65	46	67	42	67	56 64	56	59	34	42	48	45	18	20	19 36	50	39	21	44	53	63	29	25	69];
%x2=[24.2 31.1 22.6 24.0 25.9 25.1 29.5 19.7 27.2 19.3 28.0 25.8 27.3 20.1 21.7 22.2 27.4 18.8 22.6 21.5 25.0 26.2 23.5 20.3 27.1 28.6 28.3 22.0 25.3 27.4];  
%x3=[0     1     0     1     1     0     1     0     1     0     1     0     0     0     0     1     0     0     0 ...
%0     0     1     0     0     1     1     0     1     0     1];
y=[144		138	145	162	142	170	124	158	 162	150	140	110	128	130	135	114	116	124 136	142	120	120	160	158	144	130	125	175];
x1=[39		45	47	65	46	67	42	67	64	  56 59	34	42	48	45	18	20	19 36	50	39	21	44	53	63	29	25	69];
x2=[24.2  22.6 24.0 25.9 25.1 29.5 19.7 27.2  28.0 25.8 27.3 20.1 21.7 22.2 27.4 18.8 22.6 21.5 25.0 26.2 23.5 20.3 27.1 28.6 28.3 22.0 25.3 27.4];  
x3=[0        0     1     1     0     1     0     1         1     0     0     0     0     1     0     0     0 ...
0     0     1     0     0     1     1     0     1     0     1];
X=[ones(28,1), x1',x2',x3'];
[b,bint,r,rint,s]=regress(y',X);
s2=sum(r.^2)/(n-m-1);
b,bint,s,s2
rcoplot(r,rint)