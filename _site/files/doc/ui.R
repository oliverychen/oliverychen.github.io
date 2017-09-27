library(shiny)

shinyUI(pageWithSidebar(
  
  # Application title
  headerPanel("STDP Beta 1.0 - Maintainer: Oliver Y. Chén"),
  
  titlePanel("Triplets of Spikes in a Model of Spike Timing-Dependent Plasticity"),
  
  sidebarLayout(
    
    sidebarPanel(
      
      #       radioButtons("f", "Weight Function:",
      #                    list("Constant" = "constant",
      #                         "Linear in t" = "linear",
      #                         "Quadratic in t" = "quadratic")),
      #       br(),
      
      sliderInput("t_0", 
                  "Starting Time Point", 
                  value = 500,
                  min = 0, 
                  max = 100),
      
      sliderInput("t_inf", 
                  "Ending Time Point", 
                  value = 50,
                  min = 0, 
                  max = 100),
      
      sliderInput("t_pre", 
                  "t_pre", 
                  value = 20,
                  min = 0.1, 
                  max = 50),
      
      sliderInput("t_post", 
                  "t_post", 
                  value = 30,
                  min = 0.1, 
                  max = 50),
      
      
      
      
      sliderInput("tau_plus", "Tau_plus",  
                  min = 0.1, max = 50, value = 16.8),
      
      sliderInput("tau_x", "Tau_x: choose Tau_x > Tau_plus",  
                  min = 0.2, max = 50, value = 30),
      
      sliderInput("tau_minus", "Tau_minus",  
                  min = 0.1, max = 50, value = 33.7),
      
      sliderInput("tau_y", "Tau_y: choose Tau_y > Tau_y",  
                  min = 0.2, max = 100, value = 50),
      
      sliderInput("A_2_minus", "A_2_minus",  
                  min = 0, max = 100, value = 50),
      sliderInput("A_2_plus", "A_2_plus",  
                  min = 0, max = 100, value = 50),
      sliderInput("A_3_minus", "A_3_minus",  
                  min = 0, max = 100, value = 50),
      sliderInput("A_3_plus", "A_3_plus",  
                  min = 0, max = 100, value = 50),
      sliderInput("eps", "Epsilon",  
                  min = 0, max = 1, value = 0.1)
      
      
      
      
    ),
    
    
    
    ######
    mainPanel(
      tabsetPanel(
        tabPanel("All-in-All", plotOutput("plot")),
        tabPanel("Nearest-Spike", plotOutput("Nearest_Spike")), 
        tabPanel("STDP Learning Window", plotOutput("window"))
      )
    )
    
    ######
  )
)
)
