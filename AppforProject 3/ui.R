
# This is the user-interface definition of a Shiny web application.
# You can find out more about building applications with Shiny here:
#
# http://shiny.rstudio.com
#

library(shiny)

shinyUI(fluidPage(

  # Application title
  titlePanel("Old Faithful Geyser Data"),

  # Sidebar with a slider input for number of bins
  sidebarLayout(
    sidebarPanel(p("With this shiny app, we want to predict the duration of on an eruption based on the wait time of the Old faithfulh geyser in Yellowstone National Park, Wyoming USA."),
                 p("Below, you can select the wait time for which you would like us to predict the duration of the eruption."),
      sliderInput("WaitTime",
                  "Wait time:",
                  min = 40,
                  max = 100,
                  value = 50),
      p("Next, you can select from with which model you would like us to predict the duration."),
      p("Model 1 is a standard linear model."),
      p("For model 2, we decided to trace a linear model for wait times from 40 to 65 and combine a second linear model for wait times over 65."),
    
    selectInput("model", "Choose a model:", 
                choices = c("model 1" = "model1", "model 2" = "model2"))
  ),
    # Show a plot of the generated distribution
    mainPanel(
      h1("Visual representation of the model and the prediction"),
      plotOutput("distPlot"),
      "Predicted eruption time: ", verbatimTextOutput("predValue")
    )
  )
))
