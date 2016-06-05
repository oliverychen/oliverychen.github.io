---
title: Blog
layout: page
tags: [about, Jekyll, theme, responsive]
modified: 2015-07-05T20:53:07.573882-04:00
comments:
---
{% include _head.html %}

![x](/images/data_speak.jpg)
<br />

# Welcome to the <span style="color:red">Data Whisper  </span> blog, where data whisper.
<hr>


<!-- blog III -->

<h2>On Simulation of Artificial Functional Magnetic Resonance Imaging (fMRI) Data</h2>

Last updated: June 5, 2016

<div style="background-color:black; color:white; padding:20px;">

<p>Understanding how the brain works is arguably one of the greatest scientific challenges of our time.</p>

– Alivisatos et al

</div> 

<br/>


<br> 
A useful way to develop one's skills in investigating human brain data is to understand incisively the data generation mechanism. At the low level, one may look at the <a href="https://en.wikipedia.org/wiki/Action_potential#Process_in_a_typical_neuron"> biophysical basis of action potential</a>, <a href="http://link.springer.com/referenceworkentry/10.1007/978-1-4614-7320-6_683-1"> spike-timing dependent plasticity</a>, <a href="http://journals.plos.org/plosone/article?id=10.1371/journal.pone.0142435">neuronal dynamics</a>, etc. I have little knowledge in these areas; but interesting readers can refer to <a href="http://www.ndcn.ox.ac.uk/team/rafal-bogacz">Bogacz</a>, <a href="http://learning.eng.cam.ac.uk/Public/Lengyel/WebHome">Lengyl</a>, <a href="https://www.ini.uzh.ch/~jpfister/">Pfister</a>, amongst other great scientists working in these fields. Here, I aim to discuss the data generating mechanism at the voxel level, mainly, fMRI data. I have learned a tremendous amount from two wonderful papers: (1) <a href="http://www.ncbi.nlm.nih.gov/pubmed/24586801">Eloya et al</a>; and (2) <a href="https://www.google.com/url?sa=t&rct=j&q=&esrc=s&source=web&cd=1&cad=rja&uact=8&ved=0ahUKEwjf2c_TzJHNAhWKFj4KHbbYCzIQFggdMAA&url=https%3A%2F%2Fwww.jstatsoft.org%2Farticle%2Fview%2Fv044i10%2Fv44i10.pdf&usg=AFQjCNFBBPszyk5wZzmLI7HN_xC8EsrjpA">Welvaert et al</a>. The post serves as a self-learning guide, as I selectively walk through a few key steps. I shall write another post in the near future discussing the importance of knowing the <i> exact </i> data generating mechanism on making "causal" claims, etc.
<br/>


<h4>Part I: Model Basics</h4>
First, fMRI data can be decomposed into two parts: (a) experimental design caused activation, or resting state activation; and (b) noises. Namely,
<center>
<img center src="http://latex.codecogs.com/gif.latex?
s(t) = h(t) + \epsilon(t),
" border="0"/>
</center>
<br>
where <img center src="http://latex.codecogs.com/gif.latex? s(t), h(t), " border="0"/> and <img center src="http://latex.codecogs.com/gif.latex? \epsilon(t)" border="0"/> are signal response, activation function, and noise, respectively, at time <img center src="http://latex.codecogs.com/gif.latex? t" border="0"/>.
<br/>

<br> The activation function <img center src="http://latex.codecogs.com/gif.latex?h(t)
" border="0"/> is convolved from <img center src="http://latex.codecogs.com/gif.latex?
h(t) = f(t)*g(t)," border="0"/>, where we can treat <img center src="http://latex.codecogs.com/gif.latex? f(t)" border="0"/> and <img center src="http://latex.codecogs.com/gif.latex? g(t)" border="0"/> as experiemental design and "weight", respectively.






<hr>








<!-- blog II -->
<h2>Sir R. A. Fisher on Brain Science: a Neo-fictional Interpretation</h2>

Last updated: June 1, 2016

<div style="background-color:black; color:white; padding:20px;">

<p>Statistics may be regarded (i.) as the study of populations, (ii.) as the study of variation, (iii.) as the study of methods of the reduction of data.</p>

– Sir R. A. Fisher, Statistical Methods for Research Workers

</div> 


<br/>
<br/>


<br> 
June 1, 1919.
<br/>

<br>
My name is Ronald Aylmer Fisher. I am a researcher at Rothamsted Experimental Station (the director here, Dr.<a href="https://en.wikipedia.org/wiki/E._John_Russell"> E. John Russell</a>, calls it Rothamsted Research for short) in Harpenden, a small town in the St Albans City district in the county of Hertfordshire, England. Here at Rothamsted Research, I analyze data obtained from crop experiments during the day. At night, I am working on a few manuscripts on experimental design and gathering several statistical methods to analyse variance in field studies. Two weeks ago, I paid a trip back to Cambridge and had a long discussion with my old boys <a href="https://en.wikipedia.org/wiki/John_Maynard_Keynes"> John Keynes</a>, <a href="https://en.wikipedia.org/wiki/Reginald_Punnett"> Reginald Punnett</a>, and <a href="https://en.wikipedia.org/wiki/Horace_Darwin"> Horace Darwin</a>, and have become very interested in studying data collected from the human brain. I would like to present a few thoughts sprung from our conversation. 
<br/>

<br>
I claim that the usefulness of statistics in neuroscience can be divided into three areas: the study of the brain in **populations**, (ii.) the study of **variation** of brain measurements in populations, and (iii.) the study of methods of the **reduction of large brain data**. I shall further expatiate these three areas by including statistical approaches with regards to data science development in neuroscience.
<br/>

<br> 
First, the study of brain data is to gain insights to understanding how the brain perceives, processes, stores, and output information, in populations, or aggregates of individuals, rather than of individuals. The term population in brain science refers not only to an aggregate of brain activity measurements from multiple subjects, but also to an aggregate of a single brain measurement repeated multiple times for one subject. The former indicates our recognition of variations of brain activities amongst different individuals, whereas the latter represents our appreciation that the object of studying single subject brain activities is not to attempt to achieve an individual result, but rather, we make our best effort to ensure our findings representative. There are significant merits in studying data containing measurements of multiple subjects and those containing multiple measurements of single subjects. One of the end goals of brain science is to make scientific progress on diagnostics, treatments, cures and management of brain disorders. In order to raise the findings we have about the brain to the rank of science, we shall make statistical arguments about properties of the brain in a large aggregates of individuals. In order to produce treatments that target at a particular individual, we shall make statistical arguments about properties of the brain for that individual, based upon a large aggregates of measurements of his/her brain. Understanding how the brain works across subjects allows us to apply these principles at the individual level, and to advance applications that achieve artificial intelligence by mimicing the way an average brain performs, such as <a href="http://www.nature.com/nature/journal/v529/n7587/full/nature16961.html"> neural networks computers</a>. Understanding how the brain works at the individual level would assist us in understanding how a specific brain and its activities deviate from the average. It hence leads to scientific progress such as an introduction of personalized medical plans, and a usage of brain signals to identify a subject (See  <a href="http://www.nature.com/neuro/journal/v18/n11/abs/nn.4135.html"> Constable et al</a> and <a href="http://www.ncbi.nlm.nih.gov/pmc/articles/PMC4216735/pdf/nihms-637906.pdf"> Wachinger et al</a>, among others). With an advancement of data acquisition technology and the popularization of high-performance computers, we are obtaining brain data in an unprecedentedly high-resolution, rapid, and accurate manner. Yet, there are strides to make. We shall advance our understanding of how the brain works in different types of populations: infants V.S. adults, females V.S. males, etc., how the brain signals change across time, and how brain signals change according to different (visual, auditory, sensory, etc.) inputs. Furthermore, we shall reduce the errors caused by measurement and data processing, via improving and developing proper statistical and computing techniques. Additionally, we shall aim to increase the sensitivity of our study. It allows pharmaceutical companies to develop affordable medicine that would treat specific brain disorders for the marjority of patients.
<br/>

<br> 
Second, the brain is an extremely complicated organ stored in a blackbox. Despite the advance in brain science, little do we know about how information is processed in the box. For example, does the brain process information linearly, or more plausibly, non-linearly (but in which form)?; (b) there is a tremendous amount of variations amongst different brains in terms of sizes, volumes, shapes, etc; and (c) there is much variation in measuring brain signals. Whilist the first challenge is extensively tackled by physicists and computer scientists via the studying of dynamic systems, spiking neural networks, and other neural networks (e.g. <a href="https://en.wikipedia.org/wiki/Recurrent_neural_network">recurrent neural networks</a>; <a href="https://en.wikipedia.org/wiki/Boltzmann_machine">Boltzmann neural network</a>; <a href="https://en.wikipedia.org/wiki/Deep_learning#Deep_neural_networks">deep neural networks</a>; <a href="http://www.sciencedirect.com/science/article/pii/S0169207004001116">adaptive neural networks</a>; <a href="https://en.wikipedia.org/wiki/Radial_basis_function_network">radial basis networks</a>), statisticians working on neuroscience are actively seeking to solve the latter two. Once we have identified our goal in studying the brain in populations, it is a natural follow-up to study variations because the brains in populations display vairation in one of more aspects. We, nevertheless, are not interested in variation of the brain <i>per se</i>; rather we recognize that variation is an inevitably troublesome by-product delineating circumstances where repeated measurements of the brain deviate from the average. Therefore, while describing the absolute properties of the brain (via parameters, e.g. mean activation intensity of a region of the brain), we encompass them with variances to address their uncertainty (and confidence). The introduction of variances leads to two further areas of statistical studies in brain science: the study of frequency distributions, and the study of correlations. The frequency distribution may be expressed as a mathematical function of the variate (e.g. voxel-specific t-statistic), either (i.) the proportion of the population (regions, voxels, neurons, etc.) for which the variate is less than a given value, or (ii.) by differentiating this function, the infinitesimal proportion of the population for which the variate falls within any infinitesimal element of its range. In brain science, many frequency distributions are heavy-tailed - hence the study of them has some implication in studying certain <a href="https://en.wikipedia.org/wiki/Financial_models_with_long-tailed_distributions_and_volatility_clustering">financial models</a>), and <i>vice versa</i>. On the other hand, we are not only interested in studying the variations of the parameters of interests at present, but also interested in estimating the quality and types of these variations. Especially, we are interested in examining the simultaneous variation among multiple variates. It, therefore, gives rise to the correlation analysis. For ultra-highdimensional brain data, however, a voxel-wise correlation analysis could be unmanageably troublesome. This leads to the following section.
<br/> 

<br>
![x](/images/decoding.jpg)
<br/> 

<br> 
The third usefulness of statistics in brain science is due to the practical need of reducing large bulks of data to a convenient amount that retains <i>relevant</i> information in the original data that our human minds (and our computer memories) are able to grasp, by means of a manageable anount of numerical values. How much data reduction, however, should we conduct? In all cases, it is possible to reduce data to a simple numerical form, or to an amount that our computers are able to efficiently handle, where, the reduced data are sufficient to shed light upon scientific questions the investigator has original in mind. In brain science, two widely-used approaches in conducting data reduction are (I) principal component analysis (PCA) and its variants and (II) assuming sparcity. The PCA method captures the marjority of the variation of the data. However, in brain science, oftentimes we have data with p ~ n or p >> n, under which its estimates are inconsistent. There are a few papers on sparse PCA that have demonstrated subspace consistency. For example, <a href="http://projecteuclid.org/download/pdfview_1/euclid.aos/1368018173">Ma et al</a> and <a href="https://arxiv.org/pdf/0911.3827.pdf">Jung et al</a>. The sparcity assumption is, in essense, to make p < n. It makes neurobiological sense in the following manner: the working brain consumes energy. At any given time, be it resting state or task state, only a portion of the neurons are activated so as to reserve energy. I had an amiable conversation with Professor <a href="http://www.jhsph.edu/faculty/directory/profile/323/pien-chien-huang">Pien-Chien Huang</a>, during which he mentioned that we human-beings do not dream in color (or at least have dreams less vivid and coloful). <a href="http://www.faculty.ucr.edu/~eschwitz/SchwitzPapers/DreamChina051031.htm">Schwitzgebel et al</a> has an article discussing this. I conjecture (with absence of scientific evidence) that a part of the reason is the brain attempts to reserve energy while sleeping (so only the minimal amount of information is processed: e.g. the brain only recalls the outlines, orientations, movements, etc. of objects. But they are sufficient to distiguish one from another and form visual events) - statistically a natural way of conducting data reduction! Much of the exisiting and on-going projects with regards to brain decoding, such as facial recognition and dream decoding, (see decoding simple pictures: <a href="http://haxbylab.dartmouth.edu/publications/HGF+01.pdf"> Haxby et al</a>, decoding objects with edges and orientations: <a href="http://www.nature.com/neuro/journal/v8/n5/full/nn1445.html"> Haynes and Rees </a> and <a href="http://www.nature.com/neuro/journal/v8/n5/full/nn1444.html"> Kamitani and Tong </a>, decoding complex picutres:<a href="http://gallantlab.org/_downloads/2009.Naselaris.etal.pdf"> Gallant et al </a>, decoding movies: <a href="https://www.youtube.com/watch?v=nsjDnYxJ0bo"> Gallant et al </a>, decoding intentions: <a href="http://onlinelibrary.wiley.com/doi/10.1111/j.1749-6632.2011.05994.x/pdf"> Haynes et al </a>, and decoding dreams:<a href="http://science.sciencemag.org/content/340/6132/639"> Kamitani et al </a>) are mainly conducted using one or more of the following approaches: PCA, LASSO (sparcity assumption), and Bayesian analysis.
<br/>











<hr>





<!-- blog I -->
<h2>On Scientific Writing and Presentation</h2>

May 1, 2016

<div style="background-color:black; color:white; padding:20px;">

<p>If you would not be forgotten as soon as you are dead, either write something worth reading or do things worth writing.</p>

- Benjamin Franklin

</div> 

<br>
I have been long thinking about writing a blog that puts in order a few resources from which I have benefited immensely in my yet-immature-but-steadily-improving academic writing and presenting skills. On one hand, this project serves as a library to which I have a convenient access; on the other hand, I hope that some students like myself can benefit from reading these articles, essays, and blogs below. This is an on-going project; and the choice of resources purely subjective. Nonetheless, if you have any comment, or if you would like to recommend additional resources, please <a href="mailto:olivery.chen@yahoo.com?Subject=Comment%20on%20your%20blog" target="_top">send</a> me an email. Please check back every now and then as I update.
<br/>


<br>[This aritical](/files/doc/scientific_writing.pdf) is recommended by Professor [Andreas Buja](http://www-stat.wharton.upenn.edu/~buja) as "an article everybody should read" on scientific reading. Here is a [summary version](/files/doc/summary.pdf) of it.
<br/>

<br>[The Elements of Style](/files/doc/Style.pdf) teaches concise and vigorous English writing.
<br/>

<br>Professor [Jeff Leek](http://jtleek.com) gives good advice on effective presentation [here](/files/doc/Presentation_Leek.pdf).
<br/>

<br>As a student studying in the interdisciplinary field between statistics, computer science, and neurosicence, I have learned a great deal from reading the works of Sir R. A. Fisher's, inter alia, the <em>"Statistical Trilogy"</em> : (1) [Statisticcal Methods for Research Workers](/files/Fisher_1.pdf); (2) [The Design of Experiments](/files/Fisher_2.pdf); and (3) [Statistical Methods and Scientific Inference](http://www.amazon.com/Statistical-Methods-Scientific-Inference-Ronald/dp/0028447409)
<br/>


<br>In the [Autobiography of Benjamin Franklin](https://archive.org/details/autobiography00franuoft),  Mr. Franklin taught us a few procedures to improve writing:
<li> Read an article </li>
<li> Write short hints about each sentence (you could also outline the piece) and set it aside for awhile </li>
<li> Rewrite the article in his own words</li>
<li> Compare with the original, and</li> 
<li> Revise and improve your essay.</li>
<br />

<br> <a href="http://www.hopkinsmedicine.org/otolaryngology/our_team/residents_fellows.html">Andrew Lee</a>, MD, my former roommate, an ENT resident at the Johns Hopkins Hospital, and an excellent writer, suggests that the most effective thing to do to improve one's writing skills is to read essays; and read them <b>critically</b>. "By critically", Andrew elaborates, "I mean while reading, think why does the author choose that particular word, and what does that word do?" To highlight the importance of effective writing, I once asked Andrew to read an email of mine in response to a job application, which seemed to be on the verge of a declination at that time. He rewrote the email and got me the job. He did not change the context of the communication; but he carefully changed a few words, which improved the presentation drastically. Here is a list of resources he suggests to read:

<li> <a href="http://www.theatlantic.com">The Atlantic</a> </li>
<li> <a href="http://www.economist.com">The Economist</a> </li>
<li> <a href="http://topics.nytimes.com/top/opinion/editorialsandoped/editorials/index.html">The New York Times Editorials</a></li>
<li> <a href="{{ site.baseurl }}/files/Great_Expectations.pdf">Great Expectation</a>, by Charles Dickens</li>
<li> <a href="{{ site.baseurl }}/files/Crime_and_Punishment.pdf">Crime and Punishment</a>, by Fyodor Dostoevsky </li>
<li> <a href="{{ site.baseurl }}/files/Catch_22.pdf">Catch 22</a>, by Joseph Heller </li>
<li> <a href="{{ site.baseurl }}/files/Wuthering_Heights.pdf">Wuthering Heights</a>, by Emily Bronte</li>
<li> <a href="{{ site.baseurl }}/files/Heart_of_Darkness.pdf">Heart of Darkness</a>, by Joseph Conrad</li>
<li> <a href="{{ site.baseurl }}/files/Beloved.pdf">Beloved</a>, by Toni Morrison</li>
<li> <a href="{{ site.baseurl }}/files/The_sound_and_the_fury.pdf">The Sound and the Fury</a>, by William Faulkner</li>
<br/>

