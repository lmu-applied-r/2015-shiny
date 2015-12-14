
# server.R

library(shiny)
library(datasets)
attach(mtcars)



shinyServer(function(input, output) {

  
### Aufgabe 1 #####
  
  # Generierung des oberen Outputs
  output$radio <- renderPlot({
    
    # Einfuegen der entsprechenden Bedingung fuer die Auswahl 'barplot()'
    if(input$radio==1){
      
      # Plot-Befehl
      barplot(table(cyl), col=c("lightblue1", "lightblue3", "lightblue4"), xlab="Anzahl Zylinder", main="Output Aufgabe 1")
    }
    
    # Einfuegen der entsprechenden Bedingung fuer die Auswahl 'pie()'
    if(input$radio==2){
      pie(table(cyl), xlab="Anzahl Zylinder", col=c("ligh tblue1", "lightblue3", "lightblue4"), main="Output Aufgabe 1")
    }
  })

  
### Aufgabe 2 ####
  
  # Generierung des unteren Outputs
  output$radio2 <- renderPlot({
    
    # Bedingter Code fuer 'hp'
    if(input$radio2==1){
      plot(hp, main="Output Aufgabe 2")
    }
    
    # Bedingter Code fuer 'mpg'
    if(input$radio2==2){
      plot(mpg, main="Output Aufgabe 2")
    }
    
    # Bedingter Code fuer 'hp - mpg'
    if(input$radio2==3){
      
      # Bedingter Code fuer 'yes'
      if(input$select1==1){
        plot(hp,mpg, xlab="Miles/(US) gallon", ylab="Gross horsepower", col=cyl+6, pch=cyl+11, main="Output Aufgabe 2", cex=1.5)
      }
      
      # Bedingter Code fuer 'no'
      if(input$select1==2){
        plot(hp,mpg, xlab="Miles/(US) gallon", ylab="Gross horsepower",main="Output Aufgabe 2") 
      }
      
    }
  })
})