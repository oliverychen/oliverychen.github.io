---
title:
layout: page
tags: [about, Jekyll, theme, responsive]
modified: 2015-07-05T20:53:07.573882-04:00
comments: true
---
{% include _head.html %}

![x](/images/Wilson.jpg)

<br />
---
<script>
  (function(i,s,o,g,r,a,m){i['GoogleAnalyticsObject']=r;i[r]=i[r]||function(){
  (i[r].q=i[r].q||[]).push(arguments)},i[r].l=1*new Date();a=s.createElement(o),
  m=s.getElementsByTagName(o)[0];a.async=1;a.src=g;m.parentNode.insertBefore(a,m)
  })(window,document,'script','https://www.google-analytics.com/analytics.js','ga');

  ga('create', 'UA-64829092-1', 'auto');
  ga('send', 'pageview');

</script>

# Recent Presentation Slides

**Please accept my apologies for errors I made in the slides.**


 - [High-dimensional Brain Mediation (University of Oxford, 2015)](/files/doc/PDM_talk.pdf)

 - [Functional Data Analysis (London, UK, 2015)](/files/doc/LFDA_talk.pdf)

 - [An Exciting Era of Neuroscience (Stanford University, 2016)](/files/doc/Stanford.pdf)

 - [Pokémon Go, Trump, and Pain (Berlin, Germany, 2016)](/files/doc/Bernstein_small.pdf)

 - [The History of the Future of Neuro-ophthalmology Imaging in China (Shen-Yang, China, 2016)](/files/doc/Neuro-ophthalmology.pdf)

<!--
# High-dimensional Multivariate Mediation:

# the Principal Direction of Mediation

**Keywords** `Principal direction of mediation`, `Principal components analysis`, `fMRI`, `Mediation analysis`, `Structural equation models`, `High-dimensional data`.
<br />
<br />
<br />
Mediation analysis has become an important tool in the behavioral sciences for investigating
the role of intermediate variables that lie in the path between a randomized treatment
and an outcome variable.
<br />
<br />

![](/images/path.jpeg)
The three-variable path diagram used to represent the multivariate mediation framework. The variables corresponding to Z and Y are scalars, while the variable corresponding to M is an ultra-high dimensional vector.
<br />
<br />

<br />Little work has been done on mediation analysis when the intermediate variable (mediator) is a highdimensional vector. As a motivating example, consider a functional magnetic resonance imaging (fMRI) study of thermal pain where we are interested in determining which brain measurements (over 200,000 voxels) mediate the relationship between the application of a thermal stimulus and self-reported pain. To address the problem of high dimensional mediators in the context of linear SEMs, we propose a framework called the principal direction of mediation (PDM).
<br />
<br />
<br />

![x](/images/figure0.png)

<br />
Brain activity measured over 206,777 voxels after thermal stimulation. 
(Upper left) Two trials from the same subject receiving a stimulation of 48C overlayed on one another; (Upper right) Two trials from two different subjects both receiving a stimulation of 48C; (Lower left) Two trials from the same subject receiving stimulations of 42C (gray) and 48C (cyan); (Lower right) Two trials from two different subjects receiving stimulations of 42C (gray) and 48C (cyan). The cyan line in all four plots corresponds to the same trial for the same subject.
<br />
<br />

<br />
The principal direction of mediation (PDM) is philosophically similar to principal component analysis (PCA), but addresses a fundamentally different problem. The first PDM is the linear combination of the elements of a high-dimensional vector of potential mediators that maximizes the likelihood of the SEM. Like PCA, subsequent directions can thereafter be found that maximizes the likelihood of the SEM conditional on being orthogonal to previous directions. We provide an estimation algorithm and prove some asymptotic properties of the obtained estimates. The efficacy of the approach is illustrated through simulations and an application to data from an fMRI study of thermal pain.

### The first Principal Direction of Mediation
<br />
![x](/images/map_1.jpg) 

<br />
Thresholded map corresponding to the first Principal Direction of Mediation (PDM). 

<br />
![x](/images/map_2.jpg) 

<br />
The same map using the top 5% most extreme values.

<br />
![x](/images/PDM1pos.jpg)

<br />
The maps are consistent with regions typically considered active in pain research; including cerebellum, ventral medial prefrontal cortex, dorsal posterior insula, and secondary somatosensory cortex.

<br />


# Longitudinal Functional Data Analysis

**Keywords** `Accelerometry`, `Bivariate smoothing`, `Covariance function`, `FACE`, `P-splines`.
<br />

<br />
Objective measurement of physical activity using wearable devices such as accelerometers provides detailed information on patterns and intensities of daily physical activity, which can be potential biomarkers of human aging. Accelerometers record quasi-continuous activity information for many days and for hundreds of individuals. For example, in the Baltimore Longitudinal Study on Aging, daily physical activity was recorded for about 300 adults during each visit for several days and each subject has two to four visits. An interesting problem that naturally arises is how to quantify daily physical activity patterns change with age, gender, body mass index, among other covariates. We propose a longitudinal functional data model where the parameters of interest are bivariate functions of time and age. To deal with the complex correlation structure in the data, we use a GEE-type approach for model estimation. For efficient parameters and covariance estimation, we introduce a two-step procedure

<br />
<br />
![y](/images/response.png) 
Physical activities for four subjects without noise, with moderate noise, and with large noise. The results are based upon mutually orthogonal bases. The black and cyan lines indicate two different within-subject trials.


<br />
![y](/images/intercept.png) 
Bivariate intercept estimation. From left to right: true, estimated (stage I), and estimated (stage II) bivariate intercept surfaces.

<br />
<br />
![x](/images/slope.png) 
Bivariate slope estimation. From left to right: true, estimated (stage I), and estimated (stage II) bivariate slope surfaces.

<br />
<br />
![y](/images/covariance.png) 
Heatmaps for the estimated, smoothed, and true bivariate between and within covariances.

<br />
<br />
<br />

# Penalised Iterative Sparse Partial Correlation Estimation (Π-SPaCE) - with whole-brain graph estimation

**Keywords** `Sparse partial correlation estimation`, `Graph estimation`, `Network study`, `fMRI`.
<br />
<br />

![x](/images/graph_estimation.png) 

<br />
Sparse matrix estimation is often used in network science including neuroscience, social network, and genomic study, where the networks are high-dimensional and sparse. Graph estimation is subsequently used to numerically and visually delineate the networks between different brain voxels, individuals, or genes. While there has been significant research on the topic in recent years, most existing methods require pre-selecting the non-zero support set of the correlation matrix, or entailing a time-consuming block-wise estimation fashion. To address the problem of ultra-highdimensional network estimation where little prior information is present, we propose a framework called the Penalized Iterative Sparse Partial Correlation Estimation (Π-SPaCE). This framework does not require prior information: it allows us to estimate the off-diagonal elements of the partial correlation matrix directly, and is faster than traditional methods in high-dimensional sparse matrix setting. We study this method using simulation and an application to whole-brain graph estimation using data from an fMRI study.
<br />
<br />
<br />


# Packages

I am the author and maintainer of the follows packages. 

#### Principal Direction of Mediation (PDM)
* `PDM`: The package provides functions that calculate the estimates of the Principal Direction of Mediations (PDMs) and corresponding path coefficients of ultra-high dimensional data, provided treatment (e.g. thermal pain), response (e.g. reported pain), and mediation data (e.g. measurements of fMRI data).

* [Go to repository](http://www.github.com/oliverychen/PDM/).

* To install in R:
<br />
install.package("devtools"")
<br />
library(devtools)
<br />
install_github("oliverychen/PDM")
<br />
library(PDM)
<br />
help(PDM)
<br />
help(PDM_1)
<br />
help(PDM_2)



<br />

-->