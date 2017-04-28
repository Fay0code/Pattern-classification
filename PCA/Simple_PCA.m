I1=double(imread('Aligned_Fighter01.bmp'));
I2=double(imread('Aligned_Fighter02.bmp'));
I3=double(imread('Aligned_Fighter03.bmp'));
I4=double(imread('Aligned_Fighter04.bmp'));
I5=double(imread('Aligned_Fighter05.bmp'));
I6=double(imread('Aligned_Fighter06.bmp'));
I7=double(imread('Aligned_Fighter07.bmp'));
I8=double(imread('Aligned_Fighter08.bmp'));
I9=double(imread('Aligned_Fighter09.bmp'));
I10=double(imread('Aligned_Fighter10.bmp'));
I11=double(imread('Aligned_Fighter11.bmp'));


In1=reshape(Zoom_in(I1),[64^2,1]);
In2=reshape(Zoom_in(I2),[64^2,1]);
In3=reshape(Zoom_in(I3),[64^2,1]);
In4=reshape(Zoom_in(I4),[64^2,1]);
In5=reshape(Zoom_in(I5),[64^2,1]);
In6=reshape(Zoom_in(I6),[64^2,1]);
In7=reshape(Zoom_in(I7),[64^2,1]);
In8=reshape(Zoom_in(I8),[64^2,1]);
In9=reshape(Zoom_in(I9),[64^2,1]);
In10=reshape(Zoom_in(I10),[64^2,1]);
In11=reshape(Zoom_in(I11),[64^2,1]);

Y=[In1,In2,In3,In4,In5,In6,In7,In8,In9,In10,In11];
Y=double(Y);


S=Y*Y';
[d,v]=eig(S);

%plot first three eigen vector
M=d(:,end-2:end);
M2=S*M;

figure(1)
New1=reshape(M2(:,1),[64,64]); 
uint8(New1);
imshow(New1);
figure(2)
New2=reshape(M2(:,2),[64,64]); 
imshow(New2);
figure(3)
New3=reshape(M2(:,3),[64,64]);  
imshow(New3);

figure(4)
plot3(M2(:,1),M2(:,2),M2(:,3));

Ori=S*d;
for i=1:4096
    a(i)=var(Ori(:,i));
end
figure(5)
bar(a,0.5);


