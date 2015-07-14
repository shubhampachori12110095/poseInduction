global pascalDir
global cachedir
global PASCAL3Ddir
global pascalCandsDir
global rcnnVpsPascalDataDir
global rcnnVpsImagenetDataDir
global rcnnVpsJointDataDir
global rotationPascalDataDir
global rotationImagenetDataDir
global rotationIlsvrcDataDir
global rotationJointDataDir
global params
global pascalImagesDir
global imagenetImagesDir
global ilsvrcImagesDir
global candsDir
global annotationDir
global imagenetDir
global ilsvrcDir
global websiteDir
global caffeModelDir
global caffeProtoDir

folders = {'encoding','evaluate','utils','visualization','evaluation','learning','preprocess','rcnnKp','rcnnVp','cnnFeatures','sfm','optimization'};

for i=1:length(folders)
    addpath(genpath(folders{i}));
end

cachedir  = '/work5/shubhtuls/cachedir/poseInduction/';
pascalDir = '/work5/shubhtuls/cachedir/Datasets/VOCdevkit/';
PASCAL3Ddir = '/work5/shubhtuls/cachedir/Datasets/PASCAL3D';
pascalCandsDir = '/work5/shubhtuls/cachedir/Datasets/pascalCandidates/candidateAnnotations/';
pascalImagesDir = '/work5/shubhtuls/cachedir/Datasets/VOCdevkit/VOC2012/JPEGImages/';

imagenetImagesDir = '/work5/shubhtuls/cachedir/Datasets/imagenet/images/';
imagenetDir = '/work5/shubhtuls/cachedir/Datasets/imagenet/';

ilsvrcImagesDir = '/work5/shubhtuls/cachedir/Datasets/ilsvrc13/ILSVRC2013_DET_train/';
ilsvrcDir = '/work5/shubhtuls/cachedir/Datasets/ilsvrc13/';

annotationDir = '/work5/shubhtuls/cachedir/Datasets/pascalAnnotations';
candsDir = '/work5/shubhtuls/cachedir/Datasets/pascalCandidates/candidateAnnotations/';

params = getParams;

rcnnVpsPascalDataDir = fullfile(cachedir,'rcnnVpsPascalData');mkdirOptional(rcnnVpsPascalDataDir);
rcnnVpsImagenetDataDir = fullfile(cachedir,'rcnnVpsImagenetData');mkdirOptional(rcnnVpsImagenetDataDir);
rcnnVpsJointDataDir = fullfile(cachedir,'rcnnVpsJointData');mkdirOptional(rcnnVpsJointDataDir);

rotationPascalDataDir = fullfile(cachedir,'rotationDataPascal');mkdirOptional(rotationPascalDataDir);
rotationImagenetDataDir = fullfile(cachedir,'rotationDataImagenet');mkdirOptional(rotationImagenetDataDir);
rotationIlsvrcDataDir = fullfile(cachedir,'rotationDataIlsvrc');mkdirOptional(rotationIlsvrcDataDir);
rotationJointDataDir = fullfile(cachedir,'rotationDataJoint');mkdirOptional(rotationJointDataDir);

websiteDir = '/work5/shubhtuls/website/public_html/visualization/poseInduction';
caffeModelDir = '/work5/shubhtuls/snapshots/poseInduction/finalSnapshots/';
caffeProtoDir = '/work5/shubhtuls/prototxts/poseInduction/';

%imdbIlsvrc = load(fullfile(ilsvrcDir,'imdbs','imdb_ilsvrc13_val'));imdbIlsvrc = imdbIlsvrc.imdb;
%roidbIlsvrc = load(fullfile(ilsvrcDir,'roidbs','roidb_ilsvrc13_val'));roidbIlsvrc = roidbIlsvrc.roidb;

clear i;
clear folders;

load(fullfile(cachedir,'pascalTrainValIds'))
if exist('external/caffe/matlab/caffe')
  addpath('external/caffe/matlab/caffe');
else
  warning('Please install Caffe in ./external/caffe');
end
