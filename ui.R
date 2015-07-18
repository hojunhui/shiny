library(shiny)
shinyUI(
  pageWithSidebar( 
    headerPanel("Find the longest side of a right-angled triangle"),
  
    sidebarPanel(
      numericInput("a", "Length of short side 1","3"),
      numericInput("b", "Length of short side 2","4"),
      submitButton("Submit")
    ),
    
    mainPanel(
      h4("This program calculate the length of the longest side of a right-angle triangle from the lengths of the other two sides, based on Pythagoras Theorem."),
      h4("You entered"),
      verbatimTextOutput("a"),
      h4("and"),
      verbatimTextOutput("b"),
      h4("Using Pythagoras Theorem, the length of the longest side is"),
      verbatimTextOutput("c")
    )
  )
)