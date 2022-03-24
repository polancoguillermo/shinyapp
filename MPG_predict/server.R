#
# This is the server logic of a Shiny web application. You can run the
# application by clicking 'Run App' above.
#
# Find out more about building applications with Shiny here:
#
#    http://shiny.rstudio.com/
#

library(shiny)

# Define server logic required to draw a histogram
shinyServer(function(input, output) {
  mtcars <- cbind(rownames(mtcars), data.frame(mtcars, row.names=NULL))
  names(mtcars)[names(mtcars) == "rownames(mtcars)"] <- "Model"
    output$table <- renderDataTable({
        # generate table limters from main mtcars dataframe
      min.mpg <- input$mpg - input$mpg*0.1
      max.mpg <- input$mpg + input$mpg*0.1
        # subset table with inputted mpg +/- 10% 
      subset(mtcars, mpg >=min.mpg & mpg <=max.mpg)
    })

})
