shiny::tabPanel(
  title = "Serial",
  fluidRow(
    column(
      width = 12,
      rAmCharts::amChartsOutput("serial1", type = "serial"),
      verbatimTextOutput("code_serial1"),
      rAmCharts::amChartsOutput("serial2", type = "serial"),
      verbatimTextOutput("code_serial2"),
      rAmCharts::amChartsOutput("serial3", type = "serial"),
      verbatimTextOutput("code_serial3"),
      rAmCharts::amChartsOutput("serial4", type = "serial"),
      verbatimTextOutput("code_serial4"),
      rAmCharts::amChartsOutput("serial5", type = "serial"),
      verbatimTextOutput("code_serial5")
    )
  )
)