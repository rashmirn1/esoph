library(shiny)
library(datasets)

cancerdata <- data.frame(esoph)

shinyServer(
  function (input, output) {
    cansub <- reactive({
      sub <- subset(esoph,agegp == input$vagegp & alcgp == input$valcgp & tobgp == input$vtobgp )
      sub$ncases/sub$ncontrols*100
    })
    
    output$prediction <- renderText({cansub()})
  }  
)

