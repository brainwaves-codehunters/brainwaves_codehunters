%function []=new1()
%clear;
%a
clearvars e ent
double e;
%k=path
%path2=get(handles.path1);
path1=getappdata(0,'pat');
I=imread(path1);
J=rgb2gray(I);
J=imresize(J,[64 64]);
win=16;
z=uint8(zeros(win,win));
maxrow=size(J,1);
maxcol=size(J,2);
x=1;
inc=4;
%imshow(J);
f=1;

 for j = 1:inc:maxrow-win+inc+1
     for i = 1:inc:maxcol-win+ 1

             sw=zeros(win,win);
            if j>=(maxrow-win+1)
              d3=maxrow-j;
              sw = J(j:maxrow,i:i+win-1);
              sw=[sw;zeros(win-d3-1,win)];
              sw=sw+z;
              f=0;
  %            figure,imshow(sw);         
             else
              sw = J(j:j + win - 1,i:i + win-1);
             end
             %figure,imshow(sw);
             e(x)=entropy(sw);
             x=x+1;              
     end          
         
             i2=i+inc;
             d1=maxcol-i2;
             sw=zeros(win,win);
             if(f==0)
                sw = J(j:maxrow,i2:maxcol);
                sw=[sw;zeros(win-d3-1,d1+1)];
                sw=[sw zeros(win,win-d1-1)];
             else 
             sw = J(j:j+win-1,i2:maxcol);
             sw=[sw zeros(win,win-d1-1)];
             end
             sw=sw+z;
             f=1;
             e(x)=entropy(sw);
             x=x+1;
             %figure,imshow(sw);                 
 end   
 
 e=[10000]*e;
 e=uint16(e);
setappdata(0,'ent',e);         
 