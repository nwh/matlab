function mypath
% MYPATH  this is matlab's path without toolboxes

  C = textscan(path,'%s','Delimiter',pathsep);
  C = C{1};

  mr = matlabroot;
  mrlen = length(mr);

  function printer(x)
    if length(x) < mrlen || ~strcmp(mr,x(1:mrlen))
      fprintf('%s\n',x);
    end
  end

  cellfun(@printer,C);

end
