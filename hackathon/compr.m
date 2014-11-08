function compro=compr() 
e=getappdata(0,'ent');
file=getappdata(0,'file');
M=uint16(dlmread(file,'_'));
[m,n]=size(M);
f=0;
for i=1:m
    if isequal(M(i,1:n),e)
        compro=i;
        f=1;
    end
end
if f~=1
    compro=0;
end
%clearvars e ent 
%setappdata(0,'compro',compro);
 return;    