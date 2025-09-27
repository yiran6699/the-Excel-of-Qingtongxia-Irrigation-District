data=xlsread('C:\Users\Lenovo\Desktop\ts\53614.xlsx');
M=data;
[a,~,c]=unique(M(:,5:6),'row');
 out1=[a,accumarray(c,M(:,8),[],@sum)];
 outa=[a,accumarray(c,M(:,9),[],@mean)];
 outb=[a,accumarray(c,M(:,12),[],@sum)];
 outc=[a,accumarray(c,M(:,13),[],@mean)];
 outd=[a,accumarray(c,M(:,14),[],@mean)];
 out2=outa(:,3);
 out3=outb(:,3);
 out4=outc(:,3);
 out5=outd(:,3);
 total=[out1 out2 out3 out4 out5];
 filename=['C:\Users\Lenovo\Desktop\ts\','year data.csv'];
 xlswrite(filename,total)