function im = standarizeImage(im)
% -------------------------------------------------------------------------

imgsize=240;
im = im2single(im) ;
if size(im,1) > imgsize, 
    im = imresize(im, [imgsize NaN]) ; 
end