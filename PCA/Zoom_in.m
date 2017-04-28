function a_new=Zoom_in(a);
[X,Y]=size(a);
P=X/2;
Q=Y/2;

a_new_1=zeros(P,Q);
for i=1:P
    for j=1:Q
        a_new_1(i,j)=a(2*i-1,2*j-1);
    end
end

P_new=P/2;
Q_new=Q/2;
a_new=zeros(P_new,Q_new);
for i=1:P_new
    for j=1:Q_new
        a_new(i,j)=a_new_1(2*i-1,2*j-1);
    end
end