library(shiny)
shinyServer(	
  function(input, output, session) {
    output$myPlot <- renderPlot({
      
      distType <- input$Distribution
  
      if(distType == "Graph of Oxygen Consumption in Three Different Temperatures"){
        attach(O2)
        plot(Four.degrees.Celcius,type="b",lwd=2,
             xaxt="n",ylim=c(-150,250),col="black",
             xlab="Time Minutes", ylab="Oxygen Consumed in mm^3",
             main="Graph of Oxygen Consumed in Three Different Temperatures")
        axis(1,at=1:length(Time.Minutes.),labels=Time.Minutes.)
        lines(Thirty.Seven.Degrees.Celcius,col="red",type="b",lwd=2)
        lines(Twenty.One.Degrees.Celcius,col="orange",type="b",lwd=2)
        lines(Four.degrees.Celcius,col="black",type="b",lwd=2)
        
        legend("topright",legend=c("Four Degrees C","Thirty Seven Degrees C","Twenty One Degrees C"),
               lty=1,lwd=2,pch=21,col=c("black","red","orange"),
               ncol=2,bty="n",cex=.8,
               text.col=c("black","red","orange"),
               inset=0.01)
      }
        else if(distType == "Graph of CO2 Production in Three Different Sugars"){
          attach(CO2)
          plot(Sucrose,type="b",lwd=2,
               xaxt="n",ylim=c(0,8),col="black",
               xlab="Time Minutes", ylab="CO2 Produced in mm^3",
               main="Graph of CO2 Production in Three Different Sugars")
          axis(1,at=1:length(Time.Minutes),labels=Time.Minutes)
          lines(Fructose,col="red",type="b",lwd=2)
          lines(Glucose,col="orange",type="b",lwd=2)
          lines(Sucrose,col="black",type="b",lwd=2)
          
          legend("topright",legend=c("Sucrose","Fructose","Sucrose"),
                 lty=1,lwd=2,pch=21,col=c("black","red","orange"),
                 ncol=2,bty="n",cex=.8,
                 text.col=c("black","red","orange"),
                 inset=0.01)
          
        }
        else{
          attach(CO2SA)
          plot(Sucrose.With.Sodium.Azide,type="b",lwd=2,
               xaxt="n",ylim=c(-1,5),col="black",
               xlab="Time Min", ylab="CO2 Produced in mm^3",
               main="Graph of CO2 Production in Three Sugars With Sodium Azide")
          axis(1,at=1:length(Time.Min),labels=Time.Min)
          lines(Fructose.With.Sodium.Azide,col="red",type="b",lwd=2)
          lines(Glucose.With.Sodium.Azide,col="orange",type="b",lwd=2)
          lines(Sucrose.With.Sodium.Azide,col="black",type="b",lwd=2)
          
          legend("topright",legend=c("Sucrose With Sodium Azide","Fructose With Sodium Azide","Sucrose With Sodium Azide"),
                 lty=1,lwd=2,pch=21,col=c("black","red","orange"),
                 ncol=2,bty="n",cex=.8,
                 text.col=c("black","red","orange"),
                 inset=0.01)
          

    }})})
  

  
  
  
  
  
  