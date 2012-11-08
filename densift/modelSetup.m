% -----------------------------------------------------------------
%%% setup the model for extractingdense sift features of images
%%% Oct. 2012, DiZoo Studio
%%% Profivded to ToVide Inc.
%%% wongjun@gmail.com
% Last modified by Jun Wang
% Nov. 1, 2012
% -----------------------------------------------------------------


function model=modelSetup

run('vlfeat/toolbox/vl_setup.m');
vocabPath='model-vocab.mat';
load(vocabPath);

model.phowOpts = {'Step', 3}  ;
model.numSpatialX = [2 4];
model.numSpatialY = [2 4];
model.quantizer ='kdtree' ;
model.vocab = [] ;

model.vocab = vocab ;
if strcmp(model.quantizer, 'kdtree')
  model.kdtree = vl_kdtreebuild(vocab) ;
end