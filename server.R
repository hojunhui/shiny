longest_side <- function(a,b) sqrt(a^2 + b^2)

shinyServer(
  function(input, output) {
    output$a <- renderPrint({input$a})
    output$b <- renderPrint({input$b})
    output$c <- renderPrint({longest_side(input$a,input$b)})
  }
)