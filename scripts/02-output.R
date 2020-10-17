library(shiny)

ui <- fluidPage(
  "Um histograma",
  plotOutput(outputId = "grafico") #ploteamos el grafico
)

server <- function(input, output, session) {

  output$grafico <- renderPlot({   #pasamos el grafico a server

    dados <- mtcars$mpg

    hist(dados)

  })

}

shinyApp(ui, server)

#rendertable para tablas








# library(shiny)
#
# ui <- fluidPage(
#   "Um histograma",
#   plotOutput("hist")
# )
#
# server <- function(input, output, session) {
#
#   output$hist <- renderPlot({
#     hist(mtcars$mpg)
#   })
#
# }
#
# shinyApp(ui, server)
