function commoncfg = ibma_config_zbased_stat()
% IBMA_CONFIG_ZBASED_STAT Define the common part of matlabbatch job 
% structure for z-based meta-analysis (Fisher's, Stouffer's, weighted-z)
%   commoncfg = IBMA_CONFIG_ZBASED_STAT() return the common part of 
%   matlabbatch configuration to run a z-based meta-analysis.
%
%   See also IBMA_CFG_FISHERS, IBMA_CFG_STOUFFERS.
%
%   commoncfg = ibma_config_zbased_stat()
 
% Copyright (C) 2014 The University of Warwick
% Id: ibma_config_zbased_stat.m  IBMA toolbox
% Camille Maumet

  dir         = cfg_files; 
  dir.name    = 'Analysis Directory'; 
  dir.tag     = 'dir';       
  dir.filter  = 'dir';
  dir.ufilter = '.*';
  dir.num     = [1 1];     
  dir.help    = {'','This sets the SnPM anlaysis directory.','All results will appear in this directory.'}; 

  scans         = cfg_files;
  scans.tag     = 'zimages';
  scans.name    = 'Z images';
  scans.help    = {'Select the z-images.'};
  scans.filter = 'image';
  scans.ufilter = '.*';
  scans.num     = [1 Inf];  
  
  commoncfg = {dir scans};
end