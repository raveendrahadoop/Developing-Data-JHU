# server.R

library(rCharts)
library(shiny)

demography <- read.csv('instancia.csv')

options(RCHART_WIDTH = 500)

shinyServer(function(input, output) {
  output$lexplot <- renderChart2({
    selected <- input$Age
    Age <- subset(demography, Age == selected & Year %in% seq(input$range[1], input$range[2], 1))
    grapic <- hPlot(
      x = "Year", 
      y = "People", 
      group = "Gender", 
      data = Age, 
      type = "spline")
    
    grapic$yAxis(title = list(enabled = TRUE, text = 'Population count'), 
                      labels = list(rotation = -0, align = 'right'), 
                      replace = T)
    grapic$xAxis(title = list(enabled = TRUE, text = 'Year'), labels = list(rotation = -30, align = 'right'), replace = T)
    grapic$exporting(enabled = F)
    return(grapic)
  })
})