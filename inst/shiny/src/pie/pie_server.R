output$pie1 <- rAmCharts::renderAmCharts({
  pipeR::pipeline(
    amPieChart(theme ="dark", valueField = "value", titleField = "key"),
    setDataProvider(data.frame(key = c("FR", "US"), value = c(20,10))),
    addListener("clickSlice" , "function(event){ alert('ok !'); }"),
    plot()
  )
})

output$code_pie1 <- renderText({
  "
  pipeR::pipeline(
    amPieChart(valueField = 'value', titleField = 'key', creditsPosition = 'top-right',
               backgroundColor = '#7870E8'),
    setDataProvider(data.frame(key = c('FR', 'US'), value = c(20,10))),
    setExport(position = 'bottom-left'),
    plot()
  )
  "
})

output$pie2 <- rAmCharts::renderAmCharts({
  pipeR::pipeline(
    amPieChart(theme ='light', valueField = 'value', titleField = 'key'),
    setLegend(amLegend = pipeR::pipeline(
      amLegend(position = 'right', marginRight = 100,
               autoMargins = FALSE, innerRadius = '30%'),
      addListener('hideItem' , 'function(event){alert("hide");}'))),
    setDataProvider(data.frame(key = c('FR', 'US'), value = c(20,10))),
    plot()
  )
})

output$code_pie2 <- renderText({
  "
  pipeR::pipeline(
    amPieChart(theme ='light', valueField = 'value', titleField = 'key'),
    setLegend(amLegend = pipeR::pipeline(
      amLegend(position = 'right', marginRight = 100,
               autoMargins = FALSE, innerRadius = '30%'),
      addListener('hideItem' , 'function(event){alert(\"hide\");}'))),
    setDataProvider(data.frame(key = c('FR', 'US'), value = c(20,10))),
    plot()
  )
  "
})

output$pie3 <- rAmCharts::renderAmCharts({
  pipeR::pipeline(
    amPieChart(theme = 'dark', valueField = 'litres', titleField = 'country',
               balloonText = '[[title]]<br><span style = "font-size:14px"><b>[[value]]</b> ([[percents]]%)</span>'),
    setDataProvider(data.frame(country = c('Czech Republic', 'Ireland', 'Germany',
                                           'Australia', 'Austria', 'UK', 'Belgium'), 
                               litres = c(250, 130, 100, 50, 30, 10, 2))),
    setLegend(markerType = 'circle', position = 'right', marginRight = 80, autoMargins = FALSE),
    setExport(),
    plot()
  )
})

output$code_pie3 <- renderText({
  "
  pipeR::pipeline(
    amPieChart(theme = 'dark', valueField = 'litres', titleField = 'country',
               balloonText = '[[title]]<br><span style = \"font-size:14px\"><b>[[value]]</b> ([[percents]]%)</span>'),
    setDataProvider(data.frame(country = c('Czech Republic', 'Ireland', 'Germany',
                                           'Australia', 'Austria', 'UK', 'Belgium'), 
                               litres = c(250, 130, 100, 50, 30, 10, 2))),
    setLegend(markerType = 'circle', position = 'right', marginRight = 80, autoMargins = FALSE),
    setExport(),
    plot()
  )
  "
})
