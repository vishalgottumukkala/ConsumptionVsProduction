library(shiny)
shinyUI(
  pageWithSidebar(
    headerPanel("Consumption of O2 Vs. Production of CO2"),
    
    sidebarPanel(
      selectInput("Distribution","Please Select Graph Type",
             choices = c("Graph of Oxygen Consumption in Three Different Temperatures","Graph of CO2 Production in Three Different Sugars", "Graph of CO2 Production in Three Sugars With Sodium Azide")),     
                  
    ),
    
    mainPanel(
      plotOutput("myPlot")
    )
  )
   
    
)