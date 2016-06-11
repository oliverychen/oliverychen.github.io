setwd("/Users/Oliver/Dropbox/Granger/Data/v44i11-data")

library("fmri")
library("adimpro")

counter <- c(paste("0",1:9,sep=""),paste(10:99,sep=""))

ds <- read.NIFTI("Imagination.nii")

scans <- 105
onsets <- c(16, 46, 76)
duration <- 15
tr <- 2

hrf <- fmri.stimulus(scans, onsets, duration, tr)
x <- fmri.design(hrf)

spm <- fmri.lm(ds, x)

spm.segment <- fmri.smooth(spm, hmax = 4, adaptation = "segment")

ds.ana <- read.NIFTI("MPRAGEco.nii")
for (slice in 1:30) {
  img <- plot(spm.segment, ds.ana, slice = slice)
  write.image(make.image(img, gammatype="ITU"), file=paste("result", counter[slice], ".png", sep=""))
}
