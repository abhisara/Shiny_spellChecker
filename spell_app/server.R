# server.R

shinyServer(function(input, output) {
  
  
  
   output$text = renderText({ 
      paste(correctSentence(input$text))
      
      
  })
  
}
)