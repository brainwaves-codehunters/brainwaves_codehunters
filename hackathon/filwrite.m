e=getappdata(0,'ent');
ifil=getappdata(0,'fil');
dlmwrite(ifil,[],'delimiter','\n','-append');
      dlmwrite(ifil,e,'delimiter','_','-append');
%clearvars e ent