library(shiny)

# Define UI for application that draws a voronoi diagram
shinyUI(fluidPage(
  
  # Application title
  titlePanel("Drawing Voronoi Diagrams"),
  
  # Sidebar with a slider input for the number of bins
  sidebarLayout(
    sidebarPanel(
      p("Choose a number of randomly distributed points to place onto the unit square.  Using the ",
         code("alphahull"), "R package, we can render the Voronoi Diagrams about all the points."),
      sliderInput("points",
                  "Number of points:",
                  min = 3,
                  max = 40,
                  value = 20)
    ),
    
    # Show a plot of the generated distribution
    mainPanel(
      plotOutput("distPlot"),
      width = 3
    )
  )
))
