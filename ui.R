#
# This is the user-interface definition of a Shiny web application. You can
# run the application by clicking 'Run App' above.
#
# Find out more about building applications with Shiny here:
# 
#    http://shiny.rstudio.com/
#

library(shiny)
library(plotly)
shinyUI(fluidPage(
  titlePanel("Mtcars Dataset"),
  sidebarLayout(
    sidebarPanel(
      radioButtons("x", "Select X-axis:",
                   list("mpg"='a', "cyl"='b', "disp"='c', "hp"='d')),
      radioButtons("y", "Select Y-axis:",
                   list("mpg"='e', "cyl"='f', "disp"='g', "hp"='h'))
    ),
    mainPanel(
      plotlyOutput("distPlot")
      
    )
  )
))