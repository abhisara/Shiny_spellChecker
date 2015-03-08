# ui.R
library(shiny)

shinyUI(fluidPage(
  titlePanel("Spell Checker"),
  
  sidebarLayout(
    sidebarPanel(
      
      sliderInput('n', 'slider', min = 5, max = 500, step = 20, value = 200 ),
      
      helpText("Enter text here which you want to correct"),
      
      tags$textarea(id="text", rows=10, cols=40),
      
      submitButton('Check Spelling')
      
    ),
    
    mainPanel(
      
      textOutput('text')
    )
  )
))