library(shiny)

shinyServer(function(input, output) {
  
  
  # Reactive expression to generate the requested distribution. This is 
  # called whenever the inputs change. The renderers defined 
  # below then all use the value computed from this expression
  
  
  
  #   data <- reactive({  
  #     f <- switch(input$f,
  #                    constant = function(t){
  #                     0
  #                    },
  #                    
  #                    linear = function(t){
  #                      t
  #                    },
  #                      
  #                    quadratic = function(t){
  #                      t^2
  #                    }  
  #                      )
  #     
  #     #dist(input$t_0, input$t_inf, input$t_pre, input$t_post, input$tau_plus, input$tau_x)
  #   })
  
  # Generate a plot of the data. Also uses the inputs to build the 
  # plot label. Note that the dependencies on both the inputs and
  # the 'data' reactive expression are both tracked, and all expressions 
  # are called in the sequence implied by the dependency graph
  output$plot <- renderPlot({
    dist <- input$dist
    t_0 <- input$t_0
    t_inf <- input$t_inf
    t_pre <- input$t_pre
    t_post <- input$t_post
    tau_plus <- input$tau_plus
    tau_x <-input$tau_x
    tau_minus <- input$tau_minus
    tau_y <-input$tau_y
    
    t <- seq(t_0, t_inf, by = ((t_inf - t_0)/1000 ) )
    
    #     plot(data(), 
    #          main=paste('r', dist, '(', n, ')', sep=''))
    #     
    
    r = function(t, tau) {
      
      ifelse(t > t_pre,  exp ( - t/ tau) + 1,  exp ( - t/ tau ))
      
    }
    
    o = function(t, tau) {
      
      ifelse(t > t_post,  exp ( - t/ tau) + 1,  exp ( - t/ tau ))
      
    }
    
    par(mfrow=c(2,1))
    
    ### r
    plot(t, r(t, tau_plus), cex = .1, 
         ylim=c(min(r(t, tau_plus), r(t, tau_x)), max(r(t, tau_plus), r(t, tau_x))), 
         main = expression(paste("Time Course of Detectors of Presynaptic Events ", r[1](t) == e^{-t/tau})),
         ylab=expression(r[1]), type = "l"        
    )
    mtext("All-in-All") 
    
    points(t, r(t, tau_x), cex = .1, col = "red", type = "l" )
    mtext("All-in-All")
    
    ### o
    
    plot(t, o(t, tau_minus), cex = .1, 
         ylim=c(min(o(t, tau_minus), o(t, tau_y)), max(o(t, tau_minus), o(t, tau_y))), 
         main = expression(paste("Time Course of Detectors of Postsynaptic Events ", o[1](t) == e^{-t/tau})),
         ylab=expression(r[1]), type = "l" 
         
    )
    
    mtext("All-in-All")
    
    points(t, o(t, tau_y), cex = .1, col = "red", type = "l" )
    mtext("All-in-All")
    
  })
  
  
  
  # Nearest_Spike
  output$Nearest_Spike <- renderPlot({
    dist <- input$dist
    t_0 <- input$t_0
    t_inf <- input$t_inf
    t_pre <- input$t_pre
    t_post <- input$t_post
    tau_plus <- input$tau_plus
    tau_x <-input$tau_x
    tau_minus <- input$tau_minus
    tau_y <-input$tau_y
    
    t <- seq(t_0, t_inf, by = ((t_inf - t_0)/1000 ) )
    
    #     plot(data(), 
    #          main=paste('r', dist, '(', n, ')', sep=''))
    #     
    
    #### Nearest-Spike
    ### if t = t_post, bump can't exeed original
    r_nearest_spike = function(t, tau) {
      
      ifelse(t > t_pre,  exp ( - (t-t_pre)/ tau) ,  exp ( - t/ tau ))
      
    }
    
    o_nearest_spike = function(t, tau) {
      
      ifelse(t > t_post,  exp ( - (t-t_post)/ tau) ,  exp ( - t/ tau ))
      
    }
    
    par(mfrow=c(2,1))
    
    ### r
    plot(t, r_nearest_spike(t, tau_plus), cex = .1, 
         ylim=c(min(r_nearest_spike(t, tau_plus), r_nearest_spike(t, tau_x)), max(r_nearest_spike(t, tau_plus), r_nearest_spike(t, tau_x))), 
         main = expression(paste("Time Course of Detectors of Presynaptic Events ", r[1](t) == e^{-t/tau})),
         ylab=expression(r[1]), type = "l" 
         
    )
    
    points(t, r_nearest_spike(t, tau_x), cex = .1, col = "red", type = "l" )
    
    mtext("Nearest-Spike")  
    
    ### o
    
    plot(t, o_nearest_spike(t, tau_minus), cex = .1, 
         ylim=c(min(o_nearest_spike(t, tau_minus), o_nearest_spike(t, tau_y)), max(o_nearest_spike(t, tau_minus), o_nearest_spike(t, tau_y))), 
         main = expression(paste("Time Course of Detectors of Postsynaptic Events ", o[1](t) == e^{-t/tau})),
         ylab=expression(r[1]), type = "l" 
         
    )
    
    points(t, o_nearest_spike(t, tau_y), cex = .1, col = "red", type = "l" )
    
    mtext("Nearest-Spike") 
  })
  
  
  
  
  # STDP Learninig Window
  output$window <- renderPlot({
    #dist <- input$dist
    t_0 <- input$t_0
    t_inf <- input$t_inf
    t_pre <- input$t_pre
    t_post <- input$t_post
    tau_plus <- input$tau_plus
    tau_x <-input$tau_x
    tau_minus <- input$tau_minus
    tau_y <-input$tau_y
    A_2_minus <-input$A_2_minus
    A_2_plus <-input$A_2_plus
    A_3_minus <-input$A_3_minus
    A_3_plus <-input$A_3_plus
    eps <-input$eps
    
    constant <- function(t){
      0
    }
    
    linear <- function(t){
      t
    }
    
    quadratic <- function(t){
      t^2
    }
    
    triple <- function(t){
      t^3
    }
    
    wiener <-function (t){
      set.seed(2)
      xi_0 = 1
      n = 500
      xi = rnorm(n)
      options(warn=-1)
      
      10*(xi_0*t + sqrt(2)*sum ( xi*sin(pi*rep(1:n)*t)/(pi*rep(1:n)) )
      )
    }
    
    t <- seq(t_0, t_inf, by = ((t_inf - t_0)/1000 ) )
    
    #     plot(data(), 
    #          main=paste('r', dist, '(', n, ')', sep=''))
    #     
    
    #### Nearest-Spike
    ### if t = t_post, bump can't exeed original
    
    w = function(f){
      
      w = vector(length=1001)
      for (i in 1: 1001 ) {
        if (t[i] < t_pre) w[i] = f(t[i])
        else if ( t[i] >= t_pre && t[i] < t_post) 
          w[i] = f(t[i]) -  exp ( - t[i]/ tau_minus )*(A_2_minus + A_3_minus*exp ( - t[i]/ tau_x)*(t[i] -eps) )
        else w[i] = f(t[i]) + exp ( - t[i]/ tau_plus)*(A_2_plus + A_3_plus*exp ( - t[i]/ tau_y)*(t[i] -eps) )  
      }
      w
    }
    
    
    ### r
    plot(t, w(constant), cex = .1, 
         ylim=c( min(w(constant), w(linear), w(quadratic), w(wiener)),
                 max(w(constant), w(linear), w(quadratic), w(wiener))),
         main ="Time Course of Detectors of Weight Change",
         sub=expression(paste("Black:", w(t) == 0, ", ",
                              "red:", w(t) == t, ", ",
                              "blue:", w(t)==t^2, ", ",
                              "green:", w(t) == t^3, ", ",
                              "cyan:", w(t) == 10 * (xi[0]*t
                                                     + sqrt(2) * sum(xi[i], i==1, 500)* 
                                                       frac(sin*pi*i*t, pi*i))
         )),
         ylab=expression(w(t)), type = "l" 
         
    )
    
    #points(t, r_nearest_spike(t, tau_x), cex = .1, col = "red")
    
    mtext("All-in-All")  
    
    points(t, w(linear), cex = .1, col = "red", type = "l" )
    
    points(t, w(quadratic), cex = .1, col = "blue", type = "l" )
    
    points(t, w(triple), cex = .1, col = "green", type = "l" )
    
    points(t, w(wiener), cex = .1, col = "cyan", type = "l" )
    
    
  })
  
 
  })


