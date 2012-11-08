
% -----------------------------------------------------------------
%%% compute the dense sift feature for images
%%% Sep. 2012, ToVide Inc. 
%%% jun.wang@tovide.com
% Last modified by jun.wang@tovide.com on 11/06/2012
% -----------------------------------------------------------------
% inlist: context.tmp_dir/$uid.list input a list that contains jpg images
% outfile: context.feature_dir/$bins/$uid_densift.mat
% the dense sift feature matrix is in the following format
% 1st row: pid
% 2nd to 3xbins+1 rows: RGB
% columns: total number of input image files

function [status]=densift_calc(inlist, outfile)

warning off;
model=modelSetup; %%% setup the inital model for extracting dense sift feature

fid = fopen(inlist,'r');
all_densift=[];
img_i=0;
imgname = fgetl(fid);
while ischar(imgname)
    pid_match = regexp(imgname, '/([0-9]+).jpg$', 'tokens');
    pid = str2num(cell2mat(pid_match{1}));
    img_i=img_i+1;
    I=imread(imgname);
    [m,n]=size(I);
    hists = getImageDescriptor(model, I);
    densift = vl_homkermap(hists, 1, 'kchi2', 'gamma', .5);
    all_densift(:,img_i)=[pid; densift];
    densiftfile=[num2str(pid),'.mat']
    save(densiftfile,'densift');
    imgname = fgetl(fid);
end

save(outfile, 'all_densift');
status = {0};


