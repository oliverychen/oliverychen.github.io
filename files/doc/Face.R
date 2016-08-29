setwd("location")

library("truncnorm")
library("png")
library("colorspace")


download.file("https://img.buzzfeed.com/buzzfeed-static/static/2014-06/25/13/enhanced/webdr07/original-27318-1403716130-3.jpg?no-auto.jpg",
              destfile = "face.png")

xx <- readPNG("face.png")

bar <- xx[,,1]+xx[,,2]+xx[,,3] + matrix(abs(rnorm(765*990, 5, 2)), 765, 990)
bar <- bar/max(bar)

plot(c(0,1),c(0,1),t='n')
rasterImage(bar, 0,0,1,1)


### Denoising using waveslim

library(waveslim)

bar_denoise <- denoise.dwt.2d(bar, wf = "la8", J = 3, method = "universal", H = 0.5, 
                        noise.dir = 3, rule = "hard")

# 
# for (i in 1:dim(bar_denoise)[1]) {
#   for (j in 1:dim(bar_denoise)[2]){
#     if (bar_denoise[i,j] < 0) {
#       bar_denoise[i,j] = 0
#     }
#     
#   }
# }


plot(c(0,1),c(0,1),t='n')
rasterImage(bar_denoise , 0,0,1,1)






