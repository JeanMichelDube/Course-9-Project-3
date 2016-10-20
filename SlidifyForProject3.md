---
title       : Project 3 Course 9
subtitle    : Creating a shiny app
author      : Jean-Michel Dube
job         : Marketer
framework   : io2012    # {io2012, html5slides, shower, dzslides, ...}
highlighter : highlight.js  # {highlight.js, prettify, highlight}
hitheme     : tomorrow      # 
widgets     : []            # {mathjax, quiz, bootstrap}
mode        : selfcontained # {standalone, draft}
knit        : slidify::knit2slides
github:
  user: JeanMichelDube
  repo: Course9Project2
  
---

## Introduction

> With this shiny app, we want to predict the duration of on an eruption based on the wait time of the Old faithfulh geyser in Yellowstone National Park, Wyoming USA.

> The user can select the wait time for which he would like us to predict the duration of the eruption.

> The user can than choose between two models for the prediction. Model 1 is a standard linear model.For model 2, we decided to trace a linear model for wait times from 40 to 65 and combine a second linear model for wait times over 65.

> This shiny app will be useful to the Old faithful geyser employees in order to help them coordinate their work. The app is quite easy to use as well.

> Here is a link to the app : https://jeanmicheldube.shinyapps.io/AppforProject3/

---

## Data

We decided to work with the data "faithful" provided in R Studio. Here is a summary of the data:


```r
summary(faithful)
```

```
##    eruptions        waiting    
##  Min.   :1.600   Min.   :43.0  
##  1st Qu.:2.163   1st Qu.:58.0  
##  Median :4.000   Median :76.0  
##  Mean   :3.488   Mean   :70.9  
##  3rd Qu.:4.454   3rd Qu.:82.0  
##  Max.   :5.100   Max.   :96.0
```

---

## Model 1

Here is a representation of the standard linear model we used as our first model.


<iframe src="demo.html" style="position:absolute;height:80%;width:80%"></iframe>

---

## Model 2

Here is a representation of our second model. It is a combination of 2 linear models.


<iframe src="demo1.html" style="position:absolute;height:80%;width:80%"></iframe>
