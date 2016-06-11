library("fmri")

ds <- read.ANALYZE("fM00223/fM00223_", TRUE, "", 4, 96)
anatomic <- extract.data(ds)[,,,1]

hrf <- fmri.stimulus(96, (0:7)*12+7, 6, 7)
x <- fmri.design(hrf)

spm <- fmri.lm(ds, x)

spm.seg <- fmri.smooth(spm, hmax = 4, adaptation="segment")

plot(spm.seg, anatomic) 
