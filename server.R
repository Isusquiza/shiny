#
# This is the server logic of a Shiny web application. You can run the 
# application by clicking 'Run App' above.
#
# Find out more about building applications with Shiny here:
# 
#    http://shiny.rstudio.com/
#

library(shiny)
library(plotly)
shinyServer(function(input, output) {
  output$distPlot <- renderPlotly({
    if(input$x=='a'){
      i<-1
    }
    
    if(input$x=='b'){
      i<-2
    }
    
    if(input$x=='c'){
      i<-3
    }
    
    if(input$x=='d'){
      i<-4
    }
    
    if(input$y=='e'){
      j<-1
    }
    
    if(input$y=='f'){
      j<-2
    }
    
    if(input$y=='g'){
      j<-3
    }
    
    if(input$y=='h'){
      j<-4
    }
    
    s    <- mtcars[, i]
    k    <- mtcars[, j]
    m    <- data.frame(s, k)
    plot_ly(mtcars, x=~s,y=~k, color=~wt, size=~wt)
  })
  
  
})