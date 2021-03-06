## Only run this example in interactive R sessions
if (interactive()) {
  # DataTables example
  shinyApp(
    ui = fluidPage(
      fluidRow(
        column(12,
               dataTableOutput('table')
        )
      )
    ),
    server = function(input, output) {
      output$table <- renderDataTable(mtcars)
    }
  )
}