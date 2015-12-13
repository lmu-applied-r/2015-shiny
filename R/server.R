
# server.R

library(shiny)
library(datasets)
attach(mtcars)



shinyServer(function(input, output) {

  
### Aufgabe 1 #####
  
  # Generierung des oberen Outputs
  output$radio <- renderPlot({
    
    # Einf�gen der entsprechenden Bedingung f�r die Auswahl 'barplot()'
    if(input$radio==1){
      
      # Plot-Befehl
      barplot(table(cyl), col=c("lightblue1", "lightblue3", "lightblue4"), xlab="Anzahl Zylinder", main="Output Aufgabe 1")
    }
    
    # Einf�gen der entsprechenden Bedingung f�r die Auswahl 'pie()'
    if(input$radio==2){
      pie(table(cyl), xlab="Anzahl Zylinder", col=c("ligh tblue1", "lightblue3", "lightblue4"), main="Output Aufgabe 1")
    }
  })

  
### Aufgabe 2 ####
  
  # Generierung des unteren Outputs
  output$radio2 <- renderPlot({
    
    # Bedingter Code f�r 'hp'
    if(input$radio2==1){
      plot(hp, main="Output Aufgabe 2")
    }
    
    # Bedingter Code f�r 'mpg'
    if(input$radio2==2){
      plot(mpg, main="Output Aufgabe 2")
    }
    
    # Bedingter Code f�r 'hp - mpg'
    if(input$radio2==3){
      
      # Bedingter Code f�r 'yes'
      if(input$select1==1){
        plot(hp,mpg, xlab="Miles/(US) gallon", ylab="Gross horsepower", col=cyl+6, pch=cyl+11, main="Output Aufgabe 2", cex=1.5)
      }
      
      # Bedingter Code f�r 'no'
      if(input$select1==2){
        plot(hp,mpg, xlab="Miles/(US) gallon", ylab="Gross horsepower",main="Output Aufgabe 2") 
      }
      
    }
  })
})