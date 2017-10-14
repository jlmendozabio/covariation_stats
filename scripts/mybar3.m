function mybar2(yy,x)
%this is a matlab script for plotting frequencies from the sortALLMSA.pl script.
%cite Mendoza, J.L., Schmidt, A., Li, Q., Nuvaga, E., Barrett, T., Bridges, R.J., Feranchak, A.P., Brautigam, C.A., and Thomas, P.J. (2012). Requirements for efficient correction of DF508 CFTR revealed by analyses of evolved sequences. Cell 148, 164–174
%enter the number of columns in the alignment below. Change the subdirectory name ie CFTRMSA to the name of your aliment.
numberofcolumns=1480;


%function readstats2(x)
ex= exist(['CFTRMSA/A-',int2str(yy),'-CFTRMSA-count_residue.csv']);
if (ex~=0)
A=csvread(['CFTRMSA/A-',int2str(yy),'-CFTRMSA-count_residue.csv'], 1, 1,[1, 1, numberofcolumns, 21]);
end
ex= exist(['CFTRMSA/C-',int2str(yy),'-CFTRMSA-count_residue.csv']);
if (ex~=0)
C=csvread(['CFTRMSA/C-',int2str(yy),'-CFTRMSA-count_residue.csv'], 1, 1,[1, 1, numberofcolumns, 21]);
end
ex= exist(['CFTRMSA/D-',int2str(yy),'-CFTRMSA-count_residue.csv']);
if (ex~=0)
D=csvread(['CFTRMSA/D-',int2str(yy),'-CFTRMSA-count_residue.csv'], 1, 1,[1, 1, numberofcolumns, 21]);
end
ex= exist(['CFTRMSA/E-',int2str(yy),'-CFTRMSA-count_residue.csv']);
if (ex~=0)
E=csvread(['CFTRMSA/E-',int2str(yy),'-CFTRMSA-count_residue.csv'], 1, 1,[1, 1, numberofcolumns, 21]);
end
ex= exist(['CFTRMSA/F-',int2str(yy),'-CFTRMSA-count_residue.csv']);
if (ex~=0)
F=csvread(['CFTRMSA/F-',int2str(yy),'-CFTRMSA-count_residue.csv'], 1, 1,[1, 1, numberofcolumns, 21]);
end
ex= exist(['CFTRMSA/G-',int2str(yy),'-CFTRMSA-count_residue.csv']);
if (ex~=0)
G=csvread(['CFTRMSA/G-',int2str(yy),'-CFTRMSA-count_residue.csv'], 1, 1,[1, 1, numberofcolumns, 21]);
end
ex= exist(['CFTRMSA/H-',int2str(yy),'-CFTRMSA-count_residue.csv']);
if (ex~=0)
H=csvread(['CFTRMSA/H-',int2str(yy),'-CFTRMSA-count_residue.csv'], 1, 1,[1, 1, numberofcolumns, 21]);
end
ex= exist(['CFTRMSA/I-',int2str(yy),'-CFTRMSA-count_residue.csv']);
if (ex~=0)
I=csvread(['CFTRMSA/I-',int2str(yy),'-CFTRMSA-count_residue.csv'], 1, 1,[1, 1, numberofcolumns, 21]);
end
ex= exist(['CFTRMSA/K-',int2str(yy),'-CFTRMSA-count_residue.csv']);
if (ex~=0)
K=csvread(['CFTRMSA/K-',int2str(yy),'-CFTRMSA-count_residue.csv'], 1, 1,[1, 1, numberofcolumns, 21]);
end
ex= exist(['CFTRMSA/L-',int2str(yy),'-CFTRMSA-count_residue.csv']);
if (ex~=0)
L=csvread(['CFTRMSA/L-',int2str(yy),'-CFTRMSA-count_residue.csv'], 1, 1,[1, 1, numberofcolumns, 21]);
end
ex= exist(['CFTRMSA/M-',int2str(yy),'-CFTRMSA-count_residue.csv']);
if (ex~=0)
M=csvread(['CFTRMSA/M-',int2str(yy),'-CFTRMSA-count_residue.csv'], 1, 1,[1, 1, numberofcolumns, 21]);
end
ex= exist(['CFTRMSA/N-',int2str(yy),'-CFTRMSA-count_residue.csv']);
if (ex~=0)
N=csvread(['CFTRMSA/N-',int2str(yy),'-CFTRMSA-count_residue.csv'], 1, 1,[1, 1, numberofcolumns, 21]);
end
ex= exist(['CFTRMSA/P-',int2str(yy),'-CFTRMSA-count_residue.csv']);
if (ex~=0)
P=csvread(['CFTRMSA/P-',int2str(yy),'-CFTRMSA-count_residue.csv'], 1, 1,[1, 1, numberofcolumns, 21]);
end
ex= exist(['CFTRMSA/Q-',int2str(yy),'-CFTRMSA-count_residue.csv']);
if (ex~=0)
Q=csvread(['CFTRMSA/Q-',int2str(yy),'-CFTRMSA-count_residue.csv'], 1, 1,[1, 1, numberofcolumns, 21]);
end
ex= exist(['CFTRMSA/R-',int2str(yy),'-CFTRMSA-count_residue.csv']);
if (ex~=0)
R=csvread(['CFTRMSA/R-',int2str(yy),'-CFTRMSA-count_residue.csv'], 1, 1,[1, 1, numberofcolumns, 21]);
end
ex= exist(['CFTRMSA/S-',int2str(yy),'-CFTRMSA-count_residue.csv']);
if (ex~=0)
S=csvread(['CFTRMSA/S-',int2str(yy),'-CFTRMSA-count_residue.csv'], 1, 1,[1, 1, numberofcolumns, 21]);
end
ex= exist(['CFTRMSA/T-',int2str(yy),'-CFTRMSA-count_residue.csv']);
if (ex~=0)
T=csvread(['CFTRMSA/T-',int2str(yy),'-CFTRMSA-count_residue.csv'], 1, 1,[1, 1, numberofcolumns, 21]);
end
ex= exist(['CFTRMSA/V-',int2str(yy),'-CFTRMSA-count_residue.csv']);
if (ex~=0)
V=csvread(['CFTRMSA/V-',int2str(yy),'-CFTRMSA-count_residue.csv'], 1, 1,[1, 1, numberofcolumns, 21]);
end
ex= exist(['CFTRMSA/W-',int2str(yy),'-CFTRMSA-count_residue.csv']);
if (ex~=0)
W=csvread(['CFTRMSA/W-',int2str(yy),'-CFTRMSA-count_residue.csv'], 1, 1,[1, 1, numberofcolumns, 21]);
end
ex= exist(['CFTRMSA/Y-',int2str(yy),'-CFTRMSA-count_residue.csv']);
if (ex~=0)
Y=csvread(['CFTRMSA/Y-',int2str(yy),'-CFTRMSA-count_residue.csv'], 1, 1,[1, 1, numberofcolumns, 21]);
end
ex= exist(['CFTRMSA/complete-CFTRMSA-count_residue.csv']);
if (ex~=0)
complete=csvread(['CFTRMSA/complete-CFTRMSA-count_residue.csv'], 1, 1,[1, 1, numberofcolumns, 21]);
end
ex= exist(['CFTRMSA/Z-',int2str(yy),'-CFTRMSA-count_residue.csv']);
if (ex~=0)
gap=csvread(['CFTRMSA/Z-',int2str(yy),'-CFTRMSA-count_residue.csv'], 1, 1,[1, 1, numberofcolumns, 21]);
end


save('MSAStats.mat');
load -mat MSAStats.mat;

clf;

ex=exist('complete');
if (ex~=0)
tmp=complete(x,:);
mysum=sum(tmp);
t2=tmp/mysum;
myylabel=['Freq. ( ' int2str(mysum) ' seq.)'];
mytitle= ['AA Distribution for Position '  int2str(x) ' For The Complete MSA'];
subplot(6,4,1);bar(t2);ylim([0 1]);set(gca,'XTickLabel',{'A', 'C','D','E','F','G','H','I','K','L','M','N','P','Q','R','S','T','V','W','Y','-'},'XTick',1:1:21,'YTick',0:.2:1,'YMinorTick','on');xlabel('Amino Acid');ylabel(myylabel);title(mytitle);
end

ex=exist('A');
if (ex~=0)
tmp=A(x,:);
mysum=sum(tmp);
t2=tmp/mysum;
myylabel=['Freq. ( ' int2str(mysum) ' seq.)'];
mytitle= ['AA Distribution for Position '  int2str(x) ' When A' int2str(yy)];
subplot(6,4,2);bar(t2);ylim([0 1]);set(gca,'XTickLabel',{'A', 'C','D','E','F','G','H','I','K','L','M','N','P','Q','R','S','T','V','W','Y','-'},'XTick',1:1:21,'YTick',0:.2:1,'YMinorTick','on');xlabel('Amino Acid');ylabel(myylabel);title(mytitle);
end

ex=exist('C');
if (ex~=0)
tmp=C(x,:);
mysum=sum(tmp);
t2=tmp/mysum;
myylabel=['Freq. ( ' int2str(mysum) ' seq.)'];
mytitle= ['AA Distribution for Position '  int2str(x) ' When C' int2str(yy) ];
subplot(6,4,3);bar(t2);ylim([0 1]);set(gca,'XTickLabel',{'A', 'C','D','E','F','G','H','I','K','L','M','N','P','Q','R','S','T','V','W','Y','-'},'XTick',1:1:21,'YTick',0:.2:1,'YMinorTick','on');xlabel('Amino Acid');ylabel(myylabel);title(mytitle);


end
ex=exist('D');
if (ex~=0)
tmp=D(x,:);
mysum=sum(tmp);
t2=tmp/mysum;
myylabel=['Freq. ( ' int2str(mysum) ' seq.)'];
mytitle= ['AA Distribution for Position '  int2str(x) ' When D' int2str(yy)];
subplot(6,4,4);bar(t2);ylim([0 1]);set(gca,'XTickLabel',{'A', 'C','D','E','F','G','H','I','K','L','M','N','P','Q','R','S','T','V','W','Y','-'},'XTick',1:1:21,'YTick',0:.2:1,'YMinorTick','on');xlabel('Amino Acid');ylabel(myylabel);title(mytitle);
end
ex=exist('E');
if (ex~=0)



tmp=E(x,:);
mysum=sum(tmp);
t2=tmp/mysum;
myylabel=['Freq. ( ' int2str(mysum) ' seq.)'];
mytitle= ['AA Distribution for Position '  int2str(x) ' When E' int2str(yy)];
subplot(6,4,5);bar(t2);ylim([0 1]);set(gca,'XTickLabel',{'A', 'C','D','E','F','G','H','I','K','L','M','N','P','Q','R','S','T','V','W','Y','-'},'XTick',1:1:21,'YTick',0:.2:1,'YMinorTick','on');xlabel('Amino Acid');ylabel(myylabel);title(mytitle);


end
ex=exist('F');
if (ex~=0)

tmp=F(x,:);
mysum=sum(tmp);
t2=tmp/mysum;
myylabel=['Freq. ( ' int2str(mysum) ' seq.)'];
mytitle= ['AA Distribution for Position '  int2str(x) ' When F' int2str(yy)];
subplot(6,4,6);bar(t2);ylim([0 1]);set(gca,'XTickLabel',{'A', 'C','D','E','F','G','H','I','K','L','M','N','P','Q','R','S','T','V','W','Y','-'},'XTick',1:1:21,'YTick',0:.2:1,'YMinorTick','on');xlabel('Amino Acid');ylabel(myylabel);title(mytitle);

end
ex=exist('G');
if (ex~=0)

tmp=G(x,:);
mysum=sum(tmp);
t2=tmp/mysum;
myylabel=['Freq. (' int2str(mysum) ' seq.)'];
mytitle= ['AA Distribution for Position '  int2str(x) ' When G' int2str(yy)];
subplot(6,4,7);bar(t2);ylim([0 1]);set(gca,'XTickLabel',{'A', 'C','D','E','F','G','H','I','K','L','M','N','P','Q','R','S','T','V','W','Y','-'},'XTick',1:1:21,'YTick',0:.2:1,'YMinorTick','on');xlabel('Amino Acid');ylabel(myylabel);title(mytitle);


end
ex=exist('H');
if (ex~=0)

tmp=H(x,:);
mysum=sum(tmp);
t2=tmp/mysum;
myylabel=['Freq. (' int2str(mysum) ' seq.)'];
mytitle= ['AA Distribution for Position '  int2str(x) ' When H' int2str(yy)];
subplot(6,4,8);bar(t2);ylim([0 1]);set(gca,'XTickLabel',{'A', 'C','D','E','F','G','H','I','K','L','M','N','P','Q','R','S','T','V','W','Y','-'},'XTick',1:1:21,'YTick',0:.2:1,'YMinorTick','on');xlabel('Amino Acid');ylabel(myylabel);title(mytitle);


end
ex=exist('I');
if (ex~=0)

tmp=I(x,:);
mysum=sum(tmp);
t2=tmp/mysum;
myylabel=['Freq. (' int2str(mysum) ' seq.)'];
mytitle= ['AA Distribution for Position '  int2str(x) ' When I' int2str(yy)];
subplot(6,4,9);bar(t2);ylim([0 1]);set(gca,'XTickLabel',{'A', 'C','D','E','F','G','H','I','K','L','M','N','P','Q','R','S','T','V','W','Y','-'},'XTick',1:1:21,'YTick',0:.2:1,'YMinorTick','on');xlabel('Amino Acid');ylabel(myylabel);title(mytitle);

end
ex=exist('K');
if (ex~=0)

tmp=K(x,:);
mysum=sum(tmp);
t2=tmp/mysum;
myylabel=['Freq. (' int2str(mysum) ' seq.)'];
mytitle= ['AA Distribution for Position '  int2str(x) ' When K' int2str(yy)];
subplot(6,4,10);bar(t2);ylim([0 1]);set(gca,'XTickLabel',{'A', 'C','D','E','F','G','H','I','K','L','M','N','P','Q','R','S','T','V','W','Y','-'},'XTick',1:1:21,'YTick',0:.2:1,'YMinorTick','on');xlabel('Amino Acid');ylabel(myylabel);title(mytitle);

end
ex=exist('L');
if (ex~=0)

tmp=L(x,:);
mysum=sum(tmp);
t2=tmp/mysum;
myylabel=['Freq. (' int2str(mysum) ' seq.)'];
mytitle= ['AA Distribution for Position '  int2str(x) ' When L' int2str(yy)];
subplot(6,4,11);bar(t2);ylim([0 1]);set(gca,'XTickLabel',{'A', 'C','D','E','F','G','H','I','K','L','M','N','P','Q','R','S','T','V','W','Y','-'},'XTick',1:1:21,'YTick',0:.2:1,'YMinorTick','on');xlabel('Amino Acid');ylabel(myylabel);title(mytitle);
end
ex=exist('M');
if (ex~=0)


tmp=M(x,:);
mysum=sum(tmp);
t2=tmp/mysum;
myylabel=['Freq. (' int2str(mysum) ' seq.)'];
mytitle= ['AA Distribution for Position '  int2str(x) ' When M' int2str(yy)];
subplot(6,4,12);bar(t2);ylim([0 1]);set(gca,'XTickLabel',{'A', 'C','D','E','F','G','H','I','K','L','M','N','P','Q','R','S','T','V','W','Y','-'},'XTick',1:1:21,'YTick',0:.2:1,'YMinorTick','on');xlabel('Amino Acid');ylabel(myylabel);title(mytitle);

end
ex=exist('N');
if (ex~=0)

tmp=N(x,:);
mysum=sum(tmp);
t2=tmp/mysum;
myylabel=['Freq. (' int2str(mysum) ' seq.)'];
mytitle= ['AA Distribution for Position '  int2str(x) ' When N' int2str(yy)];
subplot(6,4,13);bar(t2);ylim([0 1]);set(gca,'XTickLabel',{'A', 'C','D','E','F','G','H','I','K','L','M','N','P','Q','R','S','T','V','W','Y','-'},'XTick',1:1:21,'YTick',0:.2:1,'YMinorTick','on');xlabel('Amino Acid');ylabel(myylabel);title(mytitle);

end
ex=exist('P');
if (ex~=0)

tmp=P(x,:);
mysum=sum(tmp);
t2=tmp/mysum;
myylabel=['Freq. (' int2str(mysum) ' seq.)'];
mytitle= ['AA Distribution for Position '  int2str(x) ' When P' int2str(yy)];
subplot(6,4,14);bar(t2);ylim([0 1]);set(gca,'XTickLabel',{'A', 'C','D','E','F','G','H','I','K','L','M','N','P','Q','R','S','T','V','W','Y','-'},'XTick',1:1:21,'YTick',0:.2:1,'YMinorTick','on');xlabel('Amino Acid');ylabel(myylabel);title(mytitle);


end
ex=exist('Q');
if (ex~=0)

tmp=Q(x,:);
mysum=sum(tmp);
t2=tmp/mysum;
myylabel=['Freq. (' int2str(mysum) ' seq.)'];
mytitle= ['AA Distribution for Position '  int2str(x) ' When Q' int2str(yy)];
subplot(6,4,15);bar(t2);ylim([0 1]);set(gca,'XTickLabel',{'A', 'C','D','E','F','G','H','I','K','L','M','N','P','Q','R','S','T','V','W','Y','-'},'XTick',1:1:21,'YTick',0:.2:1,'YMinorTick','on');xlabel('Amino Acid');ylabel(myylabel);title(mytitle);

end
ex=exist('R');
if (ex~=0)

tmp=R(x,:);
mysum=sum(tmp);
t2=tmp/mysum;
myylabel=['Freq. (' int2str(mysum) ' seq.)'];
mytitle= ['AA Distribution for Position '  int2str(x) ' When R' int2str(yy)];
subplot(6,4,16);bar(t2);ylim([0 1]);set(gca,'XTickLabel',{'A', 'C','D','E','F','G','H','I','K','L','M','N','P','Q','R','S','T','V','W','Y','-'},'XTick',1:1:21,'YTick',0:.2:1,'YMinorTick','on');xlabel('Amino Acid');ylabel(myylabel);title(mytitle);



end
ex=exist('S');
if (ex~=0)

tmp=S(x,:);
mysum=sum(tmp);
t2=tmp/mysum;
myylabel=['Freq. (' int2str(mysum) ' seq.)'];
mytitle= ['AA Distribution for Position '  int2str(x) ' When S' int2str(yy)];
subplot(6,4,17);bar(t2);ylim([0 1]);set(gca,'XTickLabel',{'A', 'C','D','E','F','G','H','I','K','L','M','N','P','Q','R','S','T','V','W','Y','-'},'XTick',1:1:21,'YTick',0:.2:1,'YMinorTick','on');xlabel('Amino Acid');ylabel(myylabel);title(mytitle);


end
ex=exist('T');
if (ex~=0)

tmp=T(x,:);
mysum=sum(tmp);
t2=tmp/mysum;
myylabel=['Freq. (' int2str(mysum) ' seq.)'];
mytitle= ['AA Distribution for Position '  int2str(x) ' When T' int2str(yy)];
subplot(6,4,18);bar(t2);ylim([0 1]);set(gca,'XTickLabel',{'A', 'C','D','E','F','G','H','I','K','L','M','N','P','Q','R','S','T','V','W','Y','-'},'XTick',1:1:21,'YTick',0:.2:1,'YMinorTick','on');xlabel('Amino Acid');ylabel(myylabel);title(mytitle);



end
ex=exist('V');
if (ex~=0)

tmp=V(x,:);
mysum=sum(tmp);
t2=tmp/mysum;
myylabel=['Freq. (' int2str(mysum) ' seq.)'];
mytitle= ['AA Distribution for Position '  int2str(x) ' When V' int2str(yy)];
subplot(6,4,19);bar(t2);ylim([0 1]);set(gca,'XTickLabel',{'A', 'C','D','E','F','G','H','I','K','L','M','N','P','Q','R','S','T','V','W','Y','-'},'XTick',1:1:21,'YTick',0:.2:1,'YMinorTick','on');xlabel('Amino Acid');ylabel(myylabel);title(mytitle);
end
ex=exist('W');
if (ex~=0)

tmp=W(x,:);
mysum=sum(tmp);
t2=tmp/mysum;
myylabel=['Freq. (' int2str(mysum) ' seq.)'];
mytitle= ['AA Distribution for Position '  int2str(x) ' When W' int2str(yy)];
subplot(6,4,20);bar(t2);ylim([0 1]);set(gca,'XTickLabel',{'A', 'C','D','E','F','G','H','I','K','L','M','N','P','Q','R','S','T','V','W','Y','-'},'XTick',1:1:21,'YTick',0:.2:1,'YMinorTick','on');xlabel('Amino Acid');ylabel(myylabel);title(mytitle);

end
ex=exist('Y');
if (ex~=0)
tmp=Y(x,:);
mysum=sum(tmp);
t2=tmp/mysum;
myylabel=['Freq. (' int2str(mysum) ' seq.)'];
mytitle= ['AA Distribution for Position '  int2str(x) ' When Y' int2str(yy)];
subplot(6,4,21);bar(t2);ylim([0 1]);set(gca,'XTickLabel',{'A', 'C','D','E','F','G','H','I','K','L','M','N','P','Q','R','S','T','V','W','Y','-'},'XTick',1:1:21,'YTick',0:.2:1,'YMinorTick','on');xlabel('Amino Acid');ylabel(myylabel);title(mytitle);
end
ex=exist('gap');
if (ex~=0)

tmp=gap(x,:);
mysum=sum(tmp);
t2=tmp/mysum;
myylabel=['Freq. (' int2str(mysum) ' seq.)'];
mytitle= ['AA Distribution for Position '  int2str(x) ' When GAP' int2str(yy)];
subplot(6,4,22);bar(t2);ylim([0 1]);set(gca,'XTickLabel',{'A', 'C','D','E','F','G','H','I','K','L','M','N','P','Q','R','S','T','V','W','Y','-'},'XTick',1:1:21,'YTick',0:.2:1,'YMinorTick','on');xlabel('Amino Acid');ylabel(myylabel);title(mytitle);

end






