




<!-- README.md is generated from README.Rmd. Please edit that file -->

[![Build
Status](https://travis-ci.com/cagarciae/GSA.UN.svg?branch=master)](https://travis-ci.com/cagarciae/GSA.UN)
[![DOI](https://zenodo.org/badge/255471233.svg)](https://zenodo.org/badge/latestdoi/255471233)
[![codecov](https://codecov.io/gh/cagarciae/GSA.UN/branch/master/graph/badge.svg)](https://codecov.io/gh/cagarciae/GSA.UN)

## GSA.UN

The R-package aims to implement global sensitivity analysis using two
indices: SOBOL (Sobol (2001)) and AMA (Dell’Oca, Riva, and Guadagnini
(2017)).

## Installation

Currently, you can install the version under development from
[Github](https://github.com/cagarciae/GSA.UN), using these commands:

``` r
install.packages("devtools")
devtools::install_github("cagarciae/GSA.UN")
```

## Global Sensitivity Analysis

Sensitivity Analysis is an important analytical technique when
developing, improving and understanding models (Borgonovo et al. (2017),
Hill et al. (2016)), it studies how the uncertainty of the obtained
output can be attributed to the uncertainty of the model inputs, for
example, input data, initial conditions or the parameters used. Here, it
is necessary to highlight that the parameters in the models are in
charge of characterizing the particularity of the processes and
properties for each particular study; the number of parameters in a
model can be from very small to very large, depending on the scale and
type of model selected.

Global sensitivity analysis aims to analyze the relative influence of
the input variables or parameters in the generation of the output
values. This technique seeks to explore the entire parametric range, to
evaluate the effect of a factor while all the parameters are variable at
the same time.

## SOBOL

This is an index based on the variance that analyzes the global
sensitivity, that is, the variance is considered as the only measure to
quantify the contribution of each uncertain parameter to the general
uncertainty. SOBOL uses the variance decomposition, based on the
decomposition of the model’s output in summations of this statistical
moment, using combinations of input parameters that are increased
dimensionally (Sobol (1993)).

## AMA

This is an index based on multiple statistical moments that analyzes
global sensitivity, that is, the first four statistical moments of 𝒀 are
considered in the analysis (Dell’Oca, Riva, and Guadagnini (2017)). AMA
seeks to quantify the expected variation of each statistical moment 𝑴
(𝒀) of the probability distributions of a given model due to the
conditioning of parametric values, pdf f (p). Therefore, we have: mean 𝑬
(𝒀), variance 𝑽 (𝒀), skewness 𝑹 (𝒀) and kurtosis 𝑲 (𝒀).

## GSA.UN functions

This package contains 6 functions each with its respective example.

  - `AMA`: This function calculates AMA indices: AMAE, AMAV, AMAR and
    AMAK.
  - `Bstat`: This function calculates the mean, variance, skewness,
    kurtosis and excess kurtosis of a model output.
  - `Cond_Moments`: This function evaluates the first four statistical
    moments after grouping the model output by different parametric
    ranges.
  - `GSAtool`: This function performs the global sensitivity analysis
    starting from the gross results of the model.
  - `save_results`: This function helps to save the results in .csv
    format.
  - `SOBOL`: This function calculates the first order and total SOBOL
    indices.

## Dataset

  - `Example_Data`: Results obtained with the hydrological model used on
    the Middle Magdalena Valley, Colombia (Arenas-Bautista (2020)).

## References

<div id="refs" class="references hanging-indent">

<div id="ref-Arenas-Bautista2020">

Arenas-Bautista, María Cristina. 2020. “Integration of Hydrological and
Economical Aspects for Water Management in Tropical Regions. Case Study:
Middle Magdalena Valley, Colombia.” PhD thesis, Universidad Nacional de
Colombia.

</div>

<div id="ref-Borgonovo2017">

Borgonovo, E., X. Lu, E. Plischke, O. Rakovec, and M. C. Hill. 2017.
“Making the most out of a hydrological model data set: Sensitivity
analyses to open the model black-box.” *Water Resources Research* 53
(9): 7933–50. <https://doi.org/10.1002/2017WR020767>.

</div>

<div id="ref-DellOca2017">

Dell’Oca, Aronne, Monica Riva, and Alberto Guadagnini. 2017.
“Moment-based metrics for global sensitivity analysis of hydrological
systems.” *Hydrology and Earth System Sciences* 21 (12): 6219–34.
<https://doi.org/10.5194/hess-21-6219-2017>.

</div>

<div id="ref-Hill2016">

Hill, Mary C., Dmitri Kavetski, Martyn Clark, Ming Ye, Mazdak Arabi, Dan
Lu, Laura Foglia, and Steffen Mehl. 2016. “Practical Use of
Computationally Frugal Model Analysis Methods.” *Groundwater* 54 (2):
159–70. <https://doi.org/10.1111/gwat.12330>.

</div>

<div id="ref-Sobol1993">

Sobol, I. M. 1993. “Sensitivity estimates for nonlinear mathematical
models.” In, 407–14 (in English). Mathematical Modelling; Computational
Experiments.

</div>

<div id="ref-Sobol2001">

———. 2001. “Global sensitivity indices for nonlinear mathematical models
and their Monte Carlo estimates.” *Mathematics and Computers in
Simulation* 55 (1-3): 271–80.
<https://doi.org/10.1016/S0378-4754(00)00270-6>.

</div>

</div>

## Authors
 $$Camila Garcia Echeverri^*$$ (cagarciae@unal.edu.co)\
 Maria Cristina Arenas (mcarenasb@unal.edu.co)\
 Leonardo David Donado (lddonadog@unal.edu.co)\
 $$^*$$ Universidad Nacional de Colombia - Sede Bogotá 


## Acknowledgments
 This work was supported by Universidad Nacional de Colombia - Sede Bogotá
 
