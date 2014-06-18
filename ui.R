library(shiny)
shinyUI(
  pageWithSidebar(
    #Application title
    headerPanel("Risk of Oesophagal cancer in Smokers and Alcoholics"),
    
    sidebarPanel(
      
      h4( "Please select the appropriate input groups from the lists given below."),      
      selectInput("vagegp", "Age Group :",
                  c("25-34" = "25-34",
                    "35-44" = "35-44",
                    "45-54" = "45-54",
                    "55-64" = "55-64",
                    "65-74" = "65-74",
                    "75+" = "75+")),
      selectInput("valcgp", "Alcohol Consumption (g/day) :",
                  c("0-39" = "0-39g/day",
                    "40-79" = "40-79",
                    "80-119" = "80-119",
                    "120+" = "120+")),
      selectInput("vtobgp", "Tobacco Consumption (g/day) :",
                  c("0-9" = "0-9g/day",
                    "10-19" = "10-19",
                    "20-29" = "20-29",
                    "30+" = "30+")),
      helpText("Note: You may not get any predictions for certain input group combinations due to non availability of data.")
    ),
    mainPanel(
      h3('Prediction Results'),  
      h4('The (%) Risk of Oesophagal cancer for the selected input group is '),
      verbatimTextOutput('prediction')
      
    )
  )
)

