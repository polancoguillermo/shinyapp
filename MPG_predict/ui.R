#
# This is the user-interface definition of a Shiny web application. You can
# run the application by clicking 'Run App' above.
#
# Find out more about building applications with Shiny here:
#
#    http://shiny.rstudio.com/
#

library(shiny)

# Define UI for application that draws a histogram
shinyUI(fluidPage(

    # Application title
    titlePanel("Select desired mpg to obtain a list of cars that fit mpg"),

    # Sidebar with a slider input for number of bins
    sidebarLayout(
        sidebarPanel(
            sliderInput("mpg",
                        "Desired mpg:",
                        min = 10,
                        max = 34,
                        value = 25)
        ),

        # Show a table of the cars matching mpg and cyl
        mainPanel(
            dataTableOutput("table"),
            'Cars with mpg +/- 10% of desired mpg with details'
        )
    )
))
