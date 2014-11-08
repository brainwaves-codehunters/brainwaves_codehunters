
name=getappdata(0,'name');
gen=getappdata(0,'gen');
fd = fopen('personinfo.txt','a');
      fwrite(fd,name);
      fwrite(fd,' ');
      fprintf(fd,'%c\n',gen);
      fclose(fd);