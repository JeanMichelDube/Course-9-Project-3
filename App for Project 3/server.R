
# This is the server logic for a Shiny web application.
# You can find out more about building applications with Shiny here:
#
# http://shiny.rstudio.com
#

library(shiny)

shinyServer(function(input, output) {
  
  # retrieve ui data
  model<-reactive({input$model})
  WaitTime<-reactive({input$WaitTime})
  WaitTime1<-reactive({reactiveValuesToList(WaitTime())})
  
  # build model and plots
  bmodel1 <- lm(eruptions ~ waiting, data=faithful)
  model1p <- qplot(waiting, eruptions, geom = 'point', data = faithful)+geom_smooth(method = "lm", se = FALSE)
  bmodel2 <- lm(eruptions~(waiting<65)*waiting + (waiting>=65)*waiting, data=faithful)
  model2p <- qplot(waiting, eruptions, group = waiting > 65, geom = c('point', 'smooth'), method = 'lm', se = F, data = faithful)
  
  reactive({
    newdata = data.frame(waiting=WaitTime())
  })
    if(model()=="model1") {
      PredErupt1=predict(bmodel1, newdata)
      pointForplot1=data.frame(waiting=newdata,eruptions=PredErupt1)
    } else {
      PredErupt2=predict(bmodel2, newdata)
      pointForplot2=data.frame(waiting=newdata,eruptions=PredErupt2)
    }
  
  
  # output plot
  output$distPlot <- renderPlot({
    
    if (model()=="model1") {
      model1p+geom_point(data = pointForplot1, colour = "red",size=5)
    } else {
      model2p+geom_point(data = pointForplot2, colour = "red",size=5)
    }
    
  })
  
})