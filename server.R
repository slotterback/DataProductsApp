library(shiny)
library(alphahull)

# Define server logic required to draw a histogram
shinyServer(function(input, output) {
   output$distPlot <- renderPlot({
    # Random sample in the unit square
    x <- matrix(runif(input$points*2), nc = 2)
    # Delaunay triangulation and Voronoi diagram calculation
    delvor.obj <- delvor(x)
    plot(delvor.obj, 
         col = c(3,0,6,0),# colors the voronoi cell boundaries magenta and the points green
         asp = 1,
         xlim = c(0,1),
         ylim = c(0,1),
         xaxt = "n",
         yaxt = "n",
         xlab = "x",
         ylab = "y")
  })
})
