ui <- fluidPage(
   
  titlePanel("Prediction of height"),
  sidebarLayout(
    sidebarPanel(
      helpText("Instructions"),
      helpText("You can play with the heights of the parents and 
         predict the height of the future child, the gender 
               of the child also influences the prediction."),
      helpText("-----"),
      
      
      h3("Parameters:"),
      sliderInput(inputId = "inFh",
                  label = "Father's height (cm):",
                  value = 175,
                  min = 130,
                  max = 200,
                  step = 1),
      sliderInput(inputId = "inMh",
                  label = "Mother's height (cm):",
                  value = 160,
                  min = 130,
                  max = 200,
                  step = 1),
      radioButtons(inputId = "inGen",
                   label = "Child's gender: ",
                   choices = c("Female"="female", "Male"="male"),
                   inline = TRUE),
      
      helpText("autor: Edel Rodea")
    ),
    
    mainPanel(
      htmlOutput("pText"),
      htmlOutput("pred"),
      plotOutput("Plot", width = "50%")
    )
  )
)
