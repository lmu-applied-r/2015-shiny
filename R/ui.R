#  ui.R

shinyUI(fluidPage(
  
  titlePanel(p("Unsere kleine App", align = "center")),
  
  sidebarLayout(
    sidebarPanel(
      
                 # Widget zur Auswahl der Graphik in Aufgabe 1
                 radioButtons("radio", label = h3("Aufgabe 1 - 'cyl'"),
                              choices = list("barplot()" = 1, "pie()" = 2),selected = 1),
                 
                 # Widget zur Auswahl der Graphik in Aufgabe 2
                 radioButtons("radio2", label = h3("Aufgabe 2"),
                              choices = list("hp" = 1, "mpg" = 2, "hp - mpg"=3),selected = 1),
                 
                 # Bedingtes Widget, welches erscheint bei der Auswahl
                 # der 3. Möglichkeit in Aufgabe 2
                 conditionalPanel(condition = "input.radio2 ==3",
                                  selectInput("select1", label = h3("Getrennt nach 'cyl'?"),
                              choices = list("Yes" = 1, "No" = 2),selected = 2))),
    
    
    mainPanel(
      # Output Graphik 1
      plotOutput("radio"),
      # Output Graphik 2
      plotOutput("radio2")
    )
    )
  )) 
